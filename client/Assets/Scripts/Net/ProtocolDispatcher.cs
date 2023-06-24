using SLua;
using System;
using System.Collections.Generic;
using System.IO;
using UnityEngine;

public class ProtocolBytes {
    public int Cmd { get; set; }
    public byte[] Bytes { get; set; }
}
[CustomLuaClass]
public sealed class ProtocolDispatcher {
    private readonly GameContext ctx;
    private readonly SegmentQueue<ProtocolBytes> queue = new SegmentQueue<ProtocolBytes> ();

    public SegmentQueue<ProtocolBytes> Queue { get { return queue; } }
    public object queueLock = new object ();

    private SmartSocket socket;
    private LuaState luaState;
    private LuaTableProxy lua_connection;
    private const String recv_data_str = "connection_recv_data";

    private MemoryStream receiveStream;
    private BinaryReader receiveReader;


    public ProtocolDispatcher(SmartSocket socket, LuaState luaState, LuaTableProxy lua_connection) {
        this.luaState = luaState;
        this.lua_connection = lua_connection;
        this.socket = socket;
        this.receiveStream = new MemoryStream();
        this.receiveReader = new BinaryReader(receiveStream);
 
        ctx = GameContext.GetInstance ();
        ctx.OnTick += OnTick;
    }

    public void OnTick() {
        if (socket.ConnectStatus == ConnectStatusEnum.BreakConnect){
            socket.ConnectStatus = ConnectStatusEnum.DisConnect;
            lua_connection.CallMethod("on_disconnected");
        }

        // 每帧处理特定数量的数据包
        for (int i = 6; i > 0; i--) {
            ProtocolBytes data;
            data = queue.Dequeue ();
            if (data == null) {
                break;
            }

            //协议数据Bytes为空则跳过解析
            if (data.Bytes == null) {
                Log.Error ("ProtocolDispatcher OnTick() data.Bytes is null, cmd:" + data.Cmd);
                continue;
            }

            // 开始解析数据
            receiveStream.Position = 0;
            receiveStream.Write(data.Bytes, 0, data.Bytes.Length);
            receiveStream.Position = 0;
            //Debug.LogError(string.Format("派发协议:{0}", data.Cmd));
            try {
                luaState[recv_data_str] = new LuaTable(luaState);
                ctx.Socket.BytesToLuaTable(recv_data_str, ctx.Socket.RecvMatedata[(double)data.Cmd], ref receiveReader);
            }
            catch (Exception e) {
                Debug.Log (string.Format ("<color=#FF0000>解析协议数据 {0} 时发生异常: {1}</color>", data.Cmd, e.Message));
            }

            try {
                lua_connection.CallMethod("call_handlers", data.Cmd);
            }
            catch (Exception e) {
                Debug.Log(string.Format("处理协议 {0} 的回调函数时发生异常: {1}", data.Cmd, e.Message));
            }
        }
    }
}
