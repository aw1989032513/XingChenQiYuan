/*---------------------------------------------------------*
 * 网络连接处理
 *
 * @author yeahoo2000@gmail.com
 *---------------------------------------------------------*/
using System;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Threading;
using System.IO;
using System.Collections.Generic;

using SLua;
using UnityEngine;
// 字段类型
public enum FieldType {
    Int8,       // 有符号8位整型
    UInt8,      // 无符号8位整型
    Int16,      // 有符号16位整型
    UInt16,     // 无符号16位整型
    Int32,      // 有符号32位整型
    UInt32,     // 无符号32位整型
    String,     // 字符串
    Byte,       // 字节数组
    Array,      // 数组
}

public enum ConnectStatusEnum {
    HasConnect,// 已连接
    DisConnect,// 未连接
    BreakConnect,// 已断线
}

// 元数据结构
public class Field {
    public string Name { get; set; }
    public FieldType Type { get; set; }
    public List<Field> SubFields { get; set; }
}

// 自定义Exception
public class ReceiveException : Exception {
}

[CustomLuaClass]
public sealed class SmartSocket {
	private static char[] DOT = new char[] { '.' };
    // 握手字符串
    private readonly byte[] Handshake = Encoding.ASCII.GetBytes("game_client------------");
    // 连接超时时间(建立连接时)
    // private readonly int timeout = 30000;
    private readonly int timeout = 3;
    private float connetTime = 0;
    private Socket socket;
    private IAsyncResult result;
    private Thread receiver;
    private LuaState luaState;
    private LuaTableProxy lua_connection;

    // 发送协议数据时使用的规格描述
    private Dictionary<double, List<Field>> sendMatedata = new Dictionary<double, List<Field>>();

    // 已注册的协议回函数
    private Dictionary<double, List<string>> handlers = new Dictionary<double, List<string>>();

    // 接收协议数据时使用的规格描述
    private Dictionary<double, List<Field>> recvMatedata = new Dictionary<double, List<Field>>();
    public Dictionary<double, List<Field>> RecvMatedata { get { return recvMatedata; } }

    public bool IsConnected { get { return socket.Connected; } }

    private string address;
    public string Address { get { return address; } }

    private int port;
    public int Port { get { return port; } }

    public ConnectStatusEnum ConnectStatus;

    private bool isReceive = false;
    private MemoryStream sendStream;
    private BinaryWriter sendWriter;

    public SmartSocket(LuaState luaState, LuaTableProxy lua_connection) {
        this.luaState = luaState;
        this.lua_connection = lua_connection;
        this.sendStream = new MemoryStream();
        this.sendWriter = new BinaryWriter(this.sendStream);

        ConnectStatus = ConnectStatusEnum.DisConnect;
    }

    public void CreatSocklet() {
        if(GameContext.GetInstance().IsIpv6()){
            socket = new Socket(AddressFamily.InterNetworkV6, SocketType.Stream, ProtocolType.Tcp);
        }else{
            socket = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
        }
        socket.ReceiveBufferSize = 1024 * 16;
        socket.SendBufferSize = 1024 * 16;
#if DEBUG
        Debug.Log(string.Format("Socket接收缓冲区大小: {0:F1}k", socket.ReceiveBufferSize / 1024f));
        Debug.Log(string.Format("Socket发送缓冲区大小: {0:F1}k", socket.SendBufferSize / 1024f));
        Debug.Log(string.Format("Socket接收超时时间: {0}ms", socket.ReceiveTimeout));
        Debug.Log(string.Format("Socket发送超时时间: {0}ms", socket.SendTimeout));
        Debug.Log(string.Format("Socket数据包生存时间(TTL): {0}", socket.Ttl));
        Debug.Log(string.Format("Socket是否工作在阻塞模式: {0}", socket.Blocking));
#endif
    }

    // 添加协议回调函数
    public void AddHandler(double cmd, string callbackName) {
        if (!handlers.ContainsKey(cmd)) {
            handlers[cmd] = new List<string>();
        }
        handlers[cmd].Add(callbackName);
    }

    // 移除协议回调函数
    public void RemoveHandler(double cmd, string callbackName) {
        if (!handlers.ContainsKey(cmd)) return;
        handlers[cmd].Remove(callbackName);
    }

    // // 尝试建立连接
    public void Connect(string address, int port) {
        if (socket.Connected) {
            Debug.Log(string.Format("错误:重复建立Socke连接，重新连接时请先断开之前的连接"));
            return;
        }

        this.address = address;
        this.port = port;

        try {
            Log.Debug ("Socket尝试建立连接");
            ConnectStatus = ConnectStatusEnum.HasConnect;
            connetTime = UnityEngine.Time.time;
            result = socket.BeginConnect(address, port, null, null);
            TimerManager.GetInstance().AddTimerTask(new TimerTask(500, checkConnect));
        }
        catch (SocketException e) {
            result = null;
            socket.Close();
            Debug.Log(string.Format("连接服务器{0}:{1}失败:{2}", address, port, e.Message));
            Disconnect();
            return;
        }
    }

    private void checkConnect() {
        if (result != null) {
            if (!result.IsCompleted) {
                if (UnityEngine.Time.time > connetTime + timeout) {
                    socket.Close();
                    Debug.Log(string.Format("连接服务器{0}:{1}失败: 连接超时", address, port));
                    Disconnect();
                }
                else {
                    TimerManager.GetInstance().AddTimerTask(new TimerTask(500, checkConnect));
                }
            }
            else {
                try {
                    socket.EndConnect(result);
                    result = null;
                }
                catch (SocketException e) {
                    socket.Close();
                    Debug.Log(string.Format("连接服务器{0}:{1}失败:{2}", address, port, e.Message));
                    Disconnect();
                    return;
                }
                isReceive = true;
                socket.Send(Handshake);
                lua_connection.CallMethod("on_connected");

                // 启用新线程处理数据接收
                if (receiver == null) {
                    receiver = new Thread (new ThreadStart (ReceiveData));
                    receiver.IsBackground = true;
                    receiver.Start ();
                }
            }
        }
    }

    // 断开socket连接
    public void Disconnect() {
        //socket.Shutdown(SocketShutdown.Both);
        isReceive = false;
        if (socket != null) {
            socket.Close();
        }

        // 只有在连接成功后才允许发出onDisconnected事件，不然可能会多次调用connection.on_disconnected()
        if (ConnectStatus == ConnectStatusEnum.HasConnect) {
            ConnectStatus = ConnectStatusEnum.BreakConnect;
            TimerManager.GetInstance().AddTimerTask(new TimerTask(50, callLua_disconnected));
        }
    }

    private void callLua_disconnected() {
        lua_connection.CallMethod("on_disconnected");
    }

    public void Dispose() {
        if (socket != null) {
            Debug.Log("关闭socket");
            isReceive = false;
            socket.Close();
        }
    }

    // 通过socket发送数据
    public void Send(double cmd, LuaTable data) {
        if (!socket.Connected || ConnectStatus != ConnectStatusEnum.HasConnect) {
            Debug.Log(String.Format("在socket连接未建立时尝试发送协议号为{0}的数据", cmd));
            return;
        }
        if (!sendMatedata.ContainsKey(cmd)) {
            Debug.Log(String.Format("找不到协议号为{0}的数据规格描述，无法发送此数据", cmd));
            return;
        }

        var mate = sendMatedata[cmd];
        sendStream.Position = 0;

        try {
            LuaTableToBytes(mate, data, ref sendWriter);
        }
        catch (Exception e) {
            Debug.Log(String.Format("发送协议号为{0}的socket数据时发生异常，可能是数据格式与对应的协议不匹配:{1}", cmd, e));
            return;
        }

        var buffer = sendStream.GetBuffer();
        var contentPosition = sendStream.Position;
        try {
            var bufLength = BitConverter.GetBytes(((uint)(contentPosition + 2)));
            socket.Send(bufLength, bufLength.Length, SocketFlags.None);
            var bufCmd = BitConverter.GetBytes((ushort)cmd);
            socket.Send(bufCmd, bufCmd.Length, SocketFlags.None);
            socket.Send(buffer, (int)contentPosition, SocketFlags.None);
#if DEBUG && DBG_SOCKET
            switch((ushort)cmd){
                default:
                    Logger.Debug("[SEND] 发送socket数据，协议号: {0}，内容({1}): {2}", cmd, buffer.Length, Utils.FormatBytes(buffer));
                    break;

                // 以下协议不输出调试信息
                case  1099:
                case 10113:
                case 10114:
                case 10115:
                case 10116:
                case 10117:
                case 10122:
                case 10164:
                    break;
            }
#endif
        }
        catch (SocketException e) {
            // 收到10038的异常表明socket已经被手动关闭，不要再执行Disconnect()了
            if (10038 != e.ErrorCode) {
                Debug.Log(String.Format("发送数据异常[{0}]: {1}", e.ErrorCode, e.Message));
                Disconnect();
            }
        }
    }

    // 接收指定长度的数据
    public byte[] Receive(uint size, int receiveTimeout = 20000) {
        int startTickCount = Environment.TickCount;
        var received = 0;
        var s = (int)size;
        var buffer = new byte[size];
        if (size == 0) {
            return buffer;
        }
        do {
            if (!isReceive) {
                return null;
            }
            if (Environment.TickCount > startTickCount + receiveTimeout) {
                Debug.Log(String.Format("接收数据超时"));
                // Disconnect();
                throw new ReceiveException();
            }
            try {
                received += socket.Receive(buffer, received, s - received, SocketFlags.None);
            }
            catch (SocketException e) {
                if (
                        e.SocketErrorCode == SocketError.WouldBlock
                        || e.SocketErrorCode == SocketError.IOPending
                        || e.SocketErrorCode == SocketError.NoBufferSpaceAvailable
                        ) {
                    // 对于以上几种情况，等待30毫秒后重试
                    // 有可能是接收缓冲区还没有数据到达
                    Thread.Sleep(30);
                }
                else {
                    Debug.Log(String.Format("接收数据时发生异常: {0}", e));
                    // Disconnect();
                    throw new ReceiveException();
                }
            }
        } while (received < size);

        return buffer;
    }

    // 接收并处理socket数据
    private void ReceiveData() {
        while (true) {
            if (!isReceive) {
                Thread.Sleep (20);
                continue;
            }
            if (!socket.Connected || ConnectStatus != ConnectStatusEnum.HasConnect) {
                Debug.Log(String.Format("socket未连接时尝试接收数据 {0} {1}", socket.Connected, ConnectStatus));
                Disconnect();
                //break;
                continue;
            }

            try {
                // 读取包头长度信息，包头信息等待时间设置为100秒
                var bufLength = Receive (4, 100000);
                if (bufLength == null) {
                    continue;
                }
                var length = BitConverter.ToUInt32(bufLength, 0);

                // 读取协议号
                var bufCmd = Receive(2);
                if (bufCmd == null) {
                    if (isReceive) {
                        Disconnect();
                    }
                    continue;
                }
                var cmd = BitConverter.ToUInt16(bufCmd, 0);

                // // 读取协议内容
                var buffer = Receive(length - 2);
                if (buffer == null) {
                    if (isReceive) {
                        Disconnect();
                    }
                    continue;
                }
#if DEBUG && DBG_SOCKET
                switch(cmd){
                    default:
                        Logger.Debug("[RECV] 收到socket数据，协议号: {0}，内容({1}): {2}", cmd, buffer.Length, Utils.FormatBytes(buffer));
                        break;

                    // 以下协议不输出调试信息
                    case  1099:
                    case 10113:
                    case 10114:
                    case 10115:
                    case 10116:
                    case 10117:
                    case 10122:
                    case 10164:
                        break;
                }
#endif
                if (!recvMatedata.ContainsKey(cmd)) {
                    Debug.Log(String.Format("找不到协议号为{0}的数据规格描述，无法解析，丢弃该数据", cmd));
                    continue;
                }
                if (!handlers.ContainsKey(cmd) || 0 == handlers[cmd].Count) {
                    Debug.Log(String.Format("协议号为{0}的数据未注册回调函数，直接丢弃该数据", cmd));
                    continue;
                }
                // 将数据传给协议分发器
                ProtocolBytes protoByte = new ProtocolBytes ();
                protoByte.Cmd = cmd;
                protoByte.Bytes = buffer;
                GameContext.GetInstance ().ProtocolDispatcher.Queue.Enqueue (protoByte);

                // 开始解析并处理数据
                // var ms = new MemoryStream(buffer);
                // var br = new BinaryReader(ms);
                // lua_connection.NewTable("connection_recv_data");
                // BytesToLuaTable("connection_recv_data", recvMatedata[cmd], ref br);
                // br.Close();
                // ms.Close();
                // LuaLib.CallFunction(lua_connection, "connection.call_handlers", cmd);
            }
            catch (ReceiveException e) {
                Debug.Log(String.Format("ReceiveException 接收socket数据时发生异常 {0}", e.Message));
                Disconnect(); // 连接已经断开
                continue;
            }
            //catch (luaState.Exceptions.LuaException e) {
            //    //Logger.Debug(LuaLib.FormatException(e));
            //}
            catch (SocketException e) {
                // 收到10038的异常表明socket已经被手动关闭，不要再执行Disconnect()了
                if (10038 == e.ErrorCode) break;

                Debug.Log(String.Format("接收socket数据时发生异常[{0}]:{1}", e.ErrorCode, e.Message));
                Disconnect();
                continue;
                //break;
            }
        }
    }

    // 载入或重载协议配置数据
    public void LoadProtocalMatedata(LuaTable recv, LuaTable send) {
        try {
            foreach (LuaTable.TablePair item in recv) {
                var code = (double)item.key;
                recvMatedata[code] = new List<Field>();
                ParseMateField(recvMatedata[code], (LuaTable)item.value);
            }

            foreach (LuaTable.TablePair item in send) {
                var code = (double)item.key;
                sendMatedata[code] = new List<Field>();
                ParseMateField(sendMatedata[code], (LuaTable)item.value);
            }
        }
        catch (Exception e) {
            //Logger.Error("载入协议配置数据时发生异常: " + e.Message);
        }
    }

    // 解析协议字段格式
    private void ParseMateField(List<Field> fields, LuaTable mate) {
        foreach (LuaTable.TablePair item in mate) {
            var field = (LuaTable)item.value;
            var name = (string)field["name"];
            var type = (string)field["type"];
            switch (type) {
                default:
                    throw new Exception(string.Format("未知的协议类型[{0}]，无法处理", type));
                case "int8":
                    fields.Add(new Field { Name = name, Type = FieldType.Int8 });
                    break;
                case "uint8":
                    fields.Add(new Field { Name = name, Type = FieldType.UInt8 });
                    break;
                case "int16":
                    fields.Add(new Field { Name = name, Type = FieldType.Int16 });
                    break;
                case "uint16":
                    fields.Add(new Field { Name = name, Type = FieldType.UInt16 });
                    break;
                case "int32":
                    fields.Add(new Field { Name = name, Type = FieldType.Int32 });
                    break;
                case "uint32":
                    fields.Add(new Field { Name = name, Type = FieldType.UInt32 });
                    break;
                case "string":
                    fields.Add(new Field { Name = name, Type = FieldType.String });
                    break;
                case "byte":
                    fields.Add(new Field { Name = name, Type = FieldType.Byte });
                    break;
                case "array":
                    var subFields = new List<Field>();
                    ParseMateField(subFields, (LuaTable)field["fields"]);
                    fields.Add(new Field { Name = name, Type = FieldType.Array, SubFields = subFields });
                    break;
            }
        }
    }

    // 将二进制字节转为LuaTable
    public void BytesToLuaTable(string path, List<Field> spec, ref BinaryReader br) {
        var data = luaState.getTable(path);
		for (int i = 0; i < spec.Count; i++)
		{
			Field field = spec[i];
			switch (field.Type)
			{
				case FieldType.Int8:
					data[field.Name] = br.ReadSByte();
					break;
				case FieldType.UInt8:
					data[field.Name] = br.ReadByte();
					break;
				case FieldType.Int16:
					data[field.Name] = br.ReadInt16();
					break;
				case FieldType.UInt16:
					data[field.Name] = br.ReadUInt16();
					break;
				case FieldType.Int32:
					data[field.Name] = br.ReadInt32();
					break;
				case FieldType.UInt32:
					data[field.Name] = br.ReadUInt32();
					break;
				case FieldType.String:
					data[field.Name] = Encoding.UTF8.GetString(br.ReadBytes(br.ReadUInt16()));
					break;
				case FieldType.Byte:
					data[field.Name] = br.ReadBytes(br.ReadInt32());
					break;
				case FieldType.Array:
					//var len = br.ReadUInt16();
					//var subPath = path + "." + field.Name;
					//luaState[path] = new LuaTable(luaState);
					//luaState.getTable(path)[field.Name] = new LuaTable(luaState);
					//var table = luaState.getTable(subPath);
					//var p = "___temptable1";
					//// 处理数组嵌套问题
					//if (subPath.StartsWith("___temptable")) {
					//    string first = subPath.Split('.')[0];
					//    int num = Convert.ToInt32(first.Substring(first.Length - 1));
					//    p = "___temptable" + (num + 1);
					//}
					//Debug.Log(String.Format("!!!!!!!!!!!!! {0}, {1}, {2}", path, field.Name, field.Type));
					//for (var i = 1; i <= len; i++) {
					//    luaState[p] = new LuaTable(luaState);
					//    BytesToLuaTable(p, field.SubFields, ref br);
					//    var subtable = luaState.getTable(p);
					//    table[i] = subtable;
					//    Debug.Log(String.Format("BytesToLuaTable {0}, {1}, {2}, {3}", path, subPath, p, i));
					//    Debug.Log(String.Format("LuaTable {0}, {1}, {2}", table, subtable, table[i]));
					//}
					//break;
					var len = br.ReadUInt16();
					var subPath = path + "." + field.Name;
					data[field.Name] = new LuaTable(luaState);
					var table = luaState.getTable(subPath);
					var p = "___temptable1";
					// 处理数组嵌套问题
					if (subPath.StartsWith("___temptable"))
					{
						string first = subPath.Split(DOT)[0];
						int num = Convert.ToInt32(first.Substring(first.Length - 1));
						p = "___temptable" + (num + 1).ToString();
					}

					for (var j = 1; j <= len; j++)
					{
						luaState[p] = new LuaTable(luaState);
						BytesToLuaTable(p, field.SubFields, ref br);
						var subtable = luaState.getTable(p);
						table[j] = subtable;
					}
					break;
			}
			//Debug.Log(String.Format("{0} >>> {1}({2}):{3}", path, field.Name, field.Type, data[field.Name]));
		}
    }

    // 将LuaTable转为二进制字节
    public void LuaTableToBytes(List<Field> spec, LuaTable data, ref BinaryWriter bw) {
        for (int i = 0; i < spec.Count; i++)
        {
            Field field = spec[i];
            // Logger.Debug(">>>{0}({1}):{2}", field.Name, data[field.Name].GetType(), data[field.Name]);
            switch (field.Type)
            {
                case FieldType.Int8:
                    bw.Write((sbyte)(double)data[field.Name]);
                    break;
                case FieldType.UInt8:
                    bw.Write((byte)(double)data[field.Name]);
                    break;
                case FieldType.Int16:
                    bw.Write((short)(double)data[field.Name]);
                    break;
                case FieldType.UInt16:
                    bw.Write((ushort)(double)data[field.Name]);
                    break;
                case FieldType.Int32:
                    bw.Write((int)(double)data[field.Name]);
                    break;
                case FieldType.UInt32:
                    bw.Write((uint)(double)data[field.Name]);
                    break;
                case FieldType.String:
                    var str = Encoding.UTF8.GetBytes((string)data[field.Name]);
                    bw.Write((ushort)str.Length);
                    bw.Write(str);
                    break;
                case FieldType.Byte:
                    var bytes = (byte[])data[field.Name];
                    bw.Write((int)bytes.Length);
                    bw.Write(bytes);
                    break;
                case FieldType.Array:
                    var arr = (LuaTable)data[field.Name];
                    bw.Write((ushort)arr.length());
					var enumerator = arr.GetEnumerator();
					while(enumerator.MoveNext())
					{
						LuaTableToBytes(field.SubFields, (LuaTable)enumerator.Current.value, ref bw);
					}
					enumerator.Dispose();
                    break;
            }
        }
    }

    public string ToString() {
        return (socket == null)
            ? string.Format("目标服务器地址:{0}:{1}", address, port)
            : string.Format("目标服务器地址:{0}:{1} 接收缓冲区大小: {2} 发送缓冲区大小: {3} 接收超时时间: {4} 发送超时时间: {5}", address, port, socket.ReceiveBufferSize, socket.SendBufferSize, socket.ReceiveTimeout, socket.SendTimeout);
    }

    /*
    // 等待数据包长度信息
    private void BeginReceive(){
        var buffer = new byte[4];
        socket.BeginReceive(buffer, 0, buffer.Length, SocketFlags.None, OnDataLengthReceived, buffer);
    }

    // 接收完整数据包
    private void OnDataLengthReceived(IAsyncResult result){
        int recLength = socket.EndReceive(result);
        if(0 == recLength){
            Logger.Debug("收到长度为0的数据，可能是服务器主动断开连接(OnDataLengthReceived)");
            Disconnect();
            return;
        }

        var buffer = result.AsyncState as byte[];
        var length = BitConverter.ToUInt32(buffer, 0);
        Logger.Debug("收到数据，长度:" + length);

        buffer = new byte[length];
        socket.BeginReceive(buffer, 0, buffer.Length, SocketFlags.None, OnDataReceived, buffer);
    }

    // 解析已接收到的数据包
    private void OnDataReceived(IAsyncResult result){
        var recLength = socket.EndReceive(result);
        if(0 == recLength){
            Logger.Debug("收到长度为0的数据，可能是服务器主动断开连接(OnDataReceived)");
            Disconnect();
            return;
        }

        var buffer = result.AsyncState as byte[];

        var cmd = BitConverter.ToUInt16(buffer, 0);
        Logger.Debug("收到协议号为{0}的数据，长度:{0}", cmd, recLength);

        if(!recvMatedata.ContainsKey(cmd)){
            Logger.Error("找不到协议号为{0}的数据规格描述，无法解析，丢弃该数据", cmd);
            BeginReceive(); // 继续接收下一个数据包
            return;
        }
        if(!handlers.ContainsKey(cmd)|| 0 == handlers[cmd].Count){
            Logger.Error("协议号为{0}的数据未注册回调函数，直接丢弃该数据", cmd);
            BeginReceive(); // 继续接收下一个数据包
            return;
        }

        // 将数据传给协议分发器
        GameContext.GetInstance().ProtocolDispatcher.Queue.Enqueue(new ProtocolBytes{Cmd = cmd, Bytes = buffer});

        BeginReceive(); // 继续接收下一个数据包
    }
    */
}

