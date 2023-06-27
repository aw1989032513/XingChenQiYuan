using UnityEngine;

using System;
using System.IO;
using System.Collections.Generic;

using ICSharpCode.SharpZipLib.Zip;

using LitJson;
using SLua;
using System.Text;

/// <summary>
/// 红黑树Heap的项接口
/// </summary>
public interface IHeapItem<T> : IComparable<T> { int HeapIndex { get; set; } }

/// <summary>
/// 红黑树Heap
/// </summary>
public sealed class Heap<T> where T : IHeapItem<T> {

    private int max;
    private T[] items;
    private int currentItemCount;

    public int Count { get { return currentItemCount; } }

    public Heap (int maxHeapSize) {
        items = new T[maxHeapSize];
        max = maxHeapSize;
    }

    public void Clear () {
        currentItemCount = 0;
        items = new T[max];
    }

    public void Add (T item) {
        item.HeapIndex = currentItemCount;
        items[currentItemCount] = item;
        SortUp (item);

        currentItemCount++;
    }

    public T RemoveFirst () {
        T firstItem = items[0];
        currentItemCount--;

        items[0] = items[currentItemCount];
        items[0].HeapIndex = 0;

        SortDown (items[0]);
        return firstItem;
    }

    public void UpdateItem (T item) { SortUp (item); }

    public bool Contains (T item) { return Equals (items[item.HeapIndex], item); }

    private void SortDown (T item) {
        while (true) {
            var childIndexLeft = item.HeapIndex * 2 + 1;
            var childIndexRight = item.HeapIndex * 2 + 2;
            var swapIndex = 0;

            if (childIndexLeft < currentItemCount) {
                swapIndex = childIndexLeft;

                if (childIndexRight < currentItemCount) {
                    if (items[childIndexLeft].CompareTo (items[childIndexRight]) < 0) {
                        swapIndex = childIndexRight;
                    }
                }

                if (item.CompareTo (items[swapIndex]) < 0) {
                    Swap (item, items[swapIndex]);
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    private void SortUp (T item) {
        int parentIndex = (item.HeapIndex - 1) / 2;

        while (true) {
            T parentItem = items[parentIndex];
            if (item.CompareTo (parentItem) > 0) {
                Swap (item, parentItem);
            } else {
                break;
            }
            parentIndex = (item.HeapIndex - 1) / 2;
        }
    }

    private void Swap (T itemA, T itemB) {
        items[itemA.HeapIndex] = itemB;
        items[itemB.HeapIndex] = itemA;
        int itemAIndex = itemA.HeapIndex;
        itemA.HeapIndex = itemB.HeapIndex;
        itemB.HeapIndex = itemAIndex;
    }
}

[CustomLuaClass]
public sealed class Utils {
    /// <summary>
    /// 递归查找指定目录下的所有文件
    /// <param name="path">目标路径</param>
    /// </summary>
    public static List<string> GetFilesRecursive (string path) {
        var files = new List<string> ();
        DoGetFilesRecursive (path, ref files);
        return files;
    }
    // 执行文件查找
    private static void DoGetFilesRecursive (string path, ref List<string> files) {
        foreach (var file in Directory.GetFiles (path)) {
            files.Add (file.Replace ("\\", "/"));
        }
        foreach (var dir in Directory.GetDirectories (path)) {
            DoGetFilesRecursive (dir, ref files);
        }
    }

    /// <summary>
    /// 目录复制
    /// <param name="sourceDirName">源目录</param>
    /// <param name="destDirName">目标目录</param>
    /// <param name="copySubDirs">是否需要复制子目录</param>
    /// </summary>
    public static void DirectoryCopy (string sourceDirName, string destDirName, bool copySubDirs) {
        var dir = new DirectoryInfo (sourceDirName);
        var dirs = dir.GetDirectories ();

        if (!dir.Exists) {
            throw new DirectoryNotFoundException ("源目录不存在或无法读取: " + sourceDirName);
        }

        if (!Directory.Exists (destDirName)) {
            Directory.CreateDirectory (destDirName);
        }

        var files = dir.GetFiles ();
        foreach (FileInfo file in files) {
            // 忽略所有的".meta"文件
            if (file.Name.EndsWith (".meta")) continue;

            string temppath = Path.Combine (destDirName, file.Name);
            file.CopyTo (temppath, true);
        }

        // 处理子目录
        if (copySubDirs) {
            foreach (DirectoryInfo subdir in dirs) {
                string temppath = Path.Combine (destDirName, subdir.Name);
                DirectoryCopy (subdir.FullName, temppath, copySubDirs);
            }
        }
    }

    /// <summary>
    /// 返回unixtime格式的当前时间
    /// </summary>
    public static Int32 Unixtime () {
        return (Int32)(DateTime.UtcNow.Subtract (new DateTime (1970, 1, 1))).TotalSeconds;
    }

    /// <summary>
    /// 获取字符串格式的角色ID
    /// <param name="rileId">角色编号</param>
    /// <param name="zoneId">区号</param>
    /// <param name="platform">平台标识</param>
    /// </summary>
    public static string GetUniqueRoleId (uint roleId, ushort zoneId, string platform) {
        return string.Format ("{0}_{1}_{2}", platform, zoneId, roleId);
    }

    /// <summary>
    /// 获取字符串格式的NPC ID
    /// <param name="id">NPC编号</param>
    /// <param name="battleId">战场ID</param>
    /// </summary>
    public static string GetUniqueNpcId (uint id, uint battleId) {
        return string.Format ("{0}_{1}", id, battleId);
    }

    /// <summary>
    /// 翻转字节顺序(16-bit)
    /// <param name="value">值</param>
    /// </summary>
    public static UInt16 ReverseBytes (UInt16 value) {
        return (UInt16)((value & 0xFFU) << 8 | (value & 0xFF00U) >> 8);
    }

    /// <summary>
    /// 翻转字节顺序(32-bit)
    /// <param name="value">值</param>
    /// </summary>
    public static UInt32 ReverseBytes (UInt32 value) {
        return (value & 0x000000FFU) << 24 | (value & 0x0000FF00U) << 8 |
            (value & 0x00FF0000U) >> 8 | (value & 0xFF000000U) >> 24;
    }

    /// <summary>
    /// 翻转字节顺序(64-bit)
    /// <param name="value">值</param>
    /// </summary>
    public static UInt64 ReverseBytes (UInt64 value) {
        return (value & 0x00000000000000FFUL) << 56 | (value & 0x000000000000FF00UL) << 40 |
            (value & 0x0000000000FF0000UL) << 24 | (value & 0x00000000FF000000UL) << 8 |
            (value & 0x000000FF00000000UL) >> 8 | (value & 0x0000FF0000000000UL) >> 24 |
            (value & 0x00FF000000000000UL) >> 40 | (value & 0xFF00000000000000UL) >> 56;
    }

    /// <summary>
    /// 计算三维空间内的两点距离
    /// <param name="value">值</param>
    /// <param name="v1">点1</param>
    /// <param name="v2">点2</param>
    /// </summary>
    public static float Distance (Vector3 v1, Vector3 v2) {
        return Distance (v1.x, v1.y, v2.x, v2.y);
    }

    /// <summary>
    /// 计算二维空间内的两点距离
    /// <param name="v1">点1</param>
    /// <param name="v2">点2</param>
    /// </summary>
    public static float Distance (Vector2 v1, Vector2 v2) {
        return Distance (v1.x, v1.y, v2.x, v2.y);
    }

    /// <summary>
    /// 计算三维空间内的两点距离
    /// <param name="v1">点1</param>
    /// <param name="v2">点2</param>
    /// </summary>
    public static float Distance (Vector3 v1, Vector2 v2) {
        return Distance (v1.x, v1.y, v2.x, v2.y);
    }

    /// <summary>
    /// 计算三维空间内的两点距离
    /// <param name="v1">点1</param>
    /// <param name="v2">点2</param>
    /// </summary>
    public static float Distance (Vector2 v1, Vector3 v2) {
        return Distance (v1.x, v1.y, v2.x, v2.y);
    }

    /// <summary>
    /// 计算二维空间内的两点距离
    /// <param name="rx">rx</param>
    /// <param name="ry">ry</param>
    /// <param name="tx">tx</param>
    /// <param name="ty">ty</param>
    /// </summary>
    public static float Distance (float rx, float ry, float tx, float ty) {
        double rvl = Math.Pow (rx - tx, 2) + Math.Pow (ry - ty, 2);
        rvl = Math.Sqrt (rvl);
        return (float)rvl;
    }

    public static Vector2 DistanceTo (Vector3 v1, Vector3 v2, float d) {
        return DistanceTo (v1.x, v1.y, v2.x, v2.y, d);
    }

    public static Vector2 DistanceTo (Vector2 v1, Vector2 v2, float d) {
        return DistanceTo (v1.x, v1.y, v2.x, v2.y, d);
    }

    public static Vector2 DistanceTo (float rx, float ry, float tx, float ty, float d) {
        float dx = rx - tx;
        float dy = ry - ty;
        float dis = Distance (rx, ry, tx, ty);

        float x = tx + (d / dis) * dx;
        float y = ty + (d / dis) * dy;

        return new Vector2 (x, y);
    }

    /// <summary>
    /// 设置GameObject的透明度
    /// <param name="gameObject">GameObject</param>
    /// <param name="value">值</param>
    /// </summary>
    public static void SetAlpha (GameObject gameObject, float value) {
        MeshRenderer[] pskin = gameObject.GetComponentsInChildren<MeshRenderer> (true);
        for (int i = 0; i < pskin.Length; i++) {
            if (!pskin[i].name.StartsWith ("Mesh_"))
                continue;
            if (value == 1) {
                pskin[i].material.shader = CSShaderManager.GetInstance ().GetUnitTextureShader ();
            } else {
                pskin[i].material.shader = CSShaderManager.GetInstance ().GetUnitAlpahaShader ();
                Color cc = pskin[i].material.color;
                cc.a = value;
                pskin[i].material.color = cc;
            }
        }
        //if (null != pskin) {
        //    if (value == 1) {
        //        pskin.material.shader = CSShaderManager.GetInstance ().GetUnitTextureShader ();
        //    } else {
        //        pskin.material.shader = CSShaderManager.GetInstance ().GetUnitAlpahaShader();
        //        Color cc = pskin.material.color;
        //        cc.a = value;
        //        pskin.material.color = cc;
        //    }
        //}
        SkinnedMeshRenderer[] smr = gameObject.GetComponentsInChildren<SkinnedMeshRenderer> (true);
        for (int i = 0; i < smr.Length; i++) {
            if (!smr[i].name.StartsWith ("Mesh_"))
                continue;
            if (value == 1) {
                smr[i].material.shader = CSShaderManager.GetInstance ().GetUnitTextureShader ();
            } else {
                smr[i].material.shader = CSShaderManager.GetInstance ().GetUnitAlpahaShader ();
                Color cc = smr[i].material.color;
                cc.a = value;
                smr[i].material.color = cc;
            }
        }
        //for (int i = 0; i < gameObject.transform.childCount; i++) {
        //    Transform t = gameObject.transform.GetChild (i);
        //    SkinnedMeshRenderer smr = t.GetComponent<SkinnedMeshRenderer> ();
        //    if (null != smr) {
        //        if (value == 1) {
        //            smr.material.shader = CSShaderManager.GetInstance ().GetUnitTextureShader ();
        //        } else {
        //            smr.material.shader = CSShaderManager.GetInstance ().GetUnitAlpahaShader ();
        //            Color cc = smr.material.color;
        //            cc.a = value;
        //            smr.material.color = cc;
        //        }
        //    }
        //}
    }

    public static void ExtractZip (string zipFilePath, string unZipDir) {
        (new FastZip ()).ExtractZip (zipFilePath, unZipDir, "");
    }

    public static bool UnZipFile (string zipFilePath, string unZipDir, out string err) {
        err = "";
        if (zipFilePath == string.Empty) {
            err = "压缩文件不能为空！";
            return false;
        }
        if (!File.Exists (zipFilePath)) {
            err = "压缩文件不存在！";
            return false;
        }
        //解压文件夹为空时默认与压缩文件同一级目录下，跟压缩文件同名的文件夹
        if (unZipDir == string.Empty)
            unZipDir = zipFilePath.Replace (Path.GetFileName (zipFilePath), Path.GetFileNameWithoutExtension (zipFilePath));
        if (!unZipDir.EndsWith ("/"))
            unZipDir += "/";
        if (!Directory.Exists (unZipDir))
            Directory.CreateDirectory (unZipDir);

        try {
            using (ZipInputStream s = new ZipInputStream (File.OpenRead (zipFilePath))) {

                ZipEntry theEntry;
                while ((theEntry = s.GetNextEntry ()) != null) {
                    string directoryName = Path.GetDirectoryName (theEntry.Name);
                    string fileName = Path.GetFileName (theEntry.Name);
                    if (directoryName.Length > 0) {
                        Directory.CreateDirectory (unZipDir + directoryName);
                    }
                    if (!directoryName.EndsWith ("/"))
                        directoryName += "/";
                    if (fileName != String.Empty) {
                        using (FileStream streamWriter = File.Create (unZipDir + theEntry.Name)) {

                            int size = 2048;
                            byte[] data = new byte[2048];
                            while (true) {
                                size = s.Read (data, 0, data.Length);
                                if (size > 0) {
                                    streamWriter.Write (data, 0, size);
                                } else {
                                    break;
                                }
                            }
                        }
                    }
                }
            }
        } catch (Exception ex) {
            err = ex.Message;
            return false;
        }
        return true;
    }

    public void UnZip (string zipedFile, string strDirectory) {
        bool overWrite = true;
        if (strDirectory == "")
            strDirectory = Directory.GetCurrentDirectory ();
        if (!strDirectory.EndsWith ("\\"))
            strDirectory = strDirectory + "\\";

        using (ZipInputStream s = new ZipInputStream (File.OpenRead (zipedFile))) {
            ZipEntry theEntry;

            while ((theEntry = s.GetNextEntry ()) != null) {
                string directoryName = "";
                string pathToZip = "";
                pathToZip = theEntry.Name;

                if (pathToZip != "")
                    directoryName = Path.GetDirectoryName (pathToZip) + "\\";

                string fileName = Path.GetFileName (pathToZip);

                Directory.CreateDirectory (strDirectory + directoryName);

                if (fileName != "") {
                    if ((File.Exists (strDirectory + directoryName + fileName) && overWrite) || (!File.Exists (strDirectory + directoryName + fileName))) {
                        using (FileStream streamWriter = File.Create (strDirectory + directoryName + fileName)) {
                            int size = 2048;
                            byte[] data = new byte[2048];
                            while (true) {
                                size = s.Read (data, 0, data.Length);

                                if (size > 0)
                                    streamWriter.Write (data, 0, size);
                                else
                                    break;
                            }
                            streamWriter.Close ();
                        }
                    }
                }
            }

            s.Close ();
        }
    }

    /// <summary>
    /// 压缩文件
    /// <param name="inFile">输入文件</param>
    /// <param name="outFile">输出文件</param>
    /// </summary>
    public static void Compress (string inFile, string outFile) {
        Compress (File.ReadAllBytes (inFile), outFile);
    }

    /// <summary>
    /// 压缩字节数组
    /// <param name="bytes">原始内容</param>
    /// <param name="outFile">输出文件</param>
    /// </summary>
    public static void Compress (byte[] bytes, string outFile) {
        File.WriteAllBytes (outFile, Compress (bytes));
    }

    /// <summary>
    /// 压缩字节数组
    /// <param name="bytes">原始内容</param>
    /// </summary>
    public static byte[] Compress (byte[] bytes) {
        var coder = new SevenZip.Compression.LZMA.Encoder ();
        var input = new MemoryStream (bytes);
        var stream = new MemoryStream ();

        coder.WriteCoderProperties (stream);
        stream.Write (BitConverter.GetBytes (input.Length), 0, 8);
        coder.Code (input, stream, input.Length, -1, null);
        var output = stream.ToArray ();

        input.Close ();
        stream.Close ();

        return output;
    }

    /// <summary>
    /// 解压缩文件
    /// <param name="inFile">输入文件</param>
    /// <param name="outFile">输出文件</param>
    /// </summary>
    public static void Decompress (string inFile, string outFile) {
        Decompress (File.ReadAllBytes (inFile), outFile);
    }

    /// <summary>
    /// 解压缩字节数组
    /// <param name="bytes">压缩内容</param>
    /// <param name="outFile">输出文件</param>
    /// </summary>
    public static void Decompress (byte[] bytes, string outFile) {
        File.WriteAllBytes (outFile, Decompress (bytes));
    }

    /// <summary>
    /// 解压缩字节数组
    /// <param name="bytes">压缩内容</param>
    /// </summary>
    public static byte[] Decompress (byte[] bytes) {
        var coder = new SevenZip.Compression.LZMA.Decoder ();
        var input = new MemoryStream (bytes);
        var stream = new MemoryStream ();

        var properties = new byte[5];
        input.Read (properties, 0, 5);
        var fileLengthBytes = new byte[8];
        input.Read (fileLengthBytes, 0, 8);
        long fileLength = BitConverter.ToInt64 (fileLengthBytes, 0);
        coder.SetDecoderProperties (properties);
        coder.Code (input, stream, input.Length, fileLength, null);
        var output = stream.ToArray ();

        input.Close ();
        stream.Close ();

        return output;
    }

    /// <summary>
    /// 保持原始目录结构解压所有的文件到新目录
    /// <param name="sourceDirName">原始目录</param>
    /// <param name="destDirName">目标目录</param>
    /// </summary>
    public static void DirectoryDecompress (string sourceDirName, string destDirName) {
        var dir = new DirectoryInfo (sourceDirName);
        var dirs = dir.GetDirectories ();

        if (!dir.Exists) {
            throw new DirectoryNotFoundException ("源目录不存在或无法读取: " + sourceDirName);
        }

        if (!Directory.Exists (destDirName)) {
            Directory.CreateDirectory (destDirName);
        }

        var files = dir.GetFiles ();
        foreach (FileInfo file in files) {
            // 忽略所有的".meta"文件
            if (file.Name.EndsWith (".meta")) continue;

            var input = Path.Combine (sourceDirName, file.Name);
            var output = Path.Combine (destDirName, file.Name);
            Utils.Decompress (input, output);
        }

        foreach (DirectoryInfo subdir in dirs) {
            var temppath = Path.Combine (destDirName, subdir.Name);
            DirectoryDecompress (subdir.FullName, temppath);
        }
    }

    /// <summary>
    /// 将字节数组可视化
    /// <param name="bytes">字节数组</param>
    /// </summary>
    public static string FormatBytes (byte[] bytes) {
        var hexStringTable = new[] {
            "00", "01", "02", "03", "04", "05", "06", "07", "08", "09", "0A", "0B", "0C", "0D", "0E", "0F",
            "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "1A", "1B", "1C", "1D", "1E", "1F",
            "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "2A", "2B", "2C", "2D", "2E", "2F",
            "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "3A", "3B", "3C", "3D", "3E", "3F",
            "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "4A", "4B", "4C", "4D", "4E", "4F",
            "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "5A", "5B", "5C", "5D", "5E", "5F",
            "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "6A", "6B", "6C", "6D", "6E", "6F",
            "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "7A", "7B", "7C", "7D", "7E", "7F",
            "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "8A", "8B", "8C", "8D", "8E", "8F",
            "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "9A", "9B", "9C", "9D", "9E", "9F",
            "A0", "A1", "A2", "A3", "A4", "A5", "A6", "A7", "A8", "A9", "AA", "AB", "AC", "AD", "AE", "AF",
            "B0", "B1", "B2", "B3", "B4", "B5", "B6", "B7", "B8", "B9", "BA", "BB", "BC", "BD", "BE", "BF",
            "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "CA", "CB", "CC", "CD", "CE", "CF",
            "D0", "D1", "D2", "D3", "D4", "D5", "D6", "D7", "D8", "D9", "DA", "DB", "DC", "DD", "DE", "DF",
            "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "EA", "EB", "EC", "ED", "EE", "EF",
            "F0", "F1", "F2", "F3", "F4", "F5", "F6", "F7", "F8", "F9", "FA", "FB", "FC", "FD", "FE", "FF",
        };
        var result = new System.Text.StringBuilder (bytes.Length * 2);
        foreach (byte b in bytes) {
            result.Append (" ");
            result.Append (hexStringTable[b]);
        }
        return result.ToString ();
    }

    public static System.Object[] RaycastHitToGameObject (System.Object[] raycastHits) {
        System.Object[] arr = new System.Object[raycastHits.Length];
        int index = 0;
        foreach (RaycastHit hitInfo in raycastHits) {
            GameObject gameObj = hitInfo.collider.gameObject;
            arr[index++] = gameObj;
        }
        return arr;
    }

    /// <summary>
    /// 获取字符串MD532位加密串
    /// </summary>
    /// <param name="str"></param>
    /// <returns></returns>
    public static string MD52Php (string str) {
        System.Security.Cryptography.MD5CryptoServiceProvider md5 = new System.Security.Cryptography.MD5CryptoServiceProvider ();
        byte[] encryptedBytes = md5.ComputeHash (System.Text.Encoding.ASCII.GetBytes (str));
        System.Text.StringBuilder sb = new System.Text.StringBuilder ();
        for (int i = 0; i < encryptedBytes.Length; i++) {
            sb.AppendFormat ("{0:x2}", encryptedBytes[i]);
        }
        return sb.ToString ();
    }

    /// <summary>
    /// 获取json里面的某个值
    /// </summary>
    /// <param name="json"></param>
    /// <param name="name"></param>
    /// <returns></returns>
    public static string GetJsonVal (string json, string name) {
        JsonData jsonData = JsonMapper.ToObject (json);
        return jsonData[name].ToString ();
    }

    /// <summary>
    /// http get 请求
    /// </summary>
    /// <param name="url"></param>
    /// <returns></returns>
    public static string UrlGetRequest (string url) {
        try {
            System.Net.WebRequest request = System.Net.WebRequest.Create (url);
            System.Net.WebResponse response = request.GetResponse ();
            System.IO.Stream reqStream = response.GetResponseStream ();
            using (System.IO.StreamReader reader = new System.IO.StreamReader (reqStream, System.Text.Encoding.GetEncoding ("UTF-8"))) {
                return reader.ReadToEnd ();
            }
        } catch (Exception) {
            Debug.LogError (string.Format ("HttpGet请求出错:{0}", url));
        }
        return "";
    }

    /// <summary>
    /// http post 请求
    /// </summary>
    /// <param name="url"></param>
    /// <param name="data"></param>
    /// <returns></returns>
    public static string UrlPostRequest (string url, string data) {
        try {
            System.Text.Encoding encoding = System.Text.Encoding.Default;
            System.Net.HttpWebRequest request = (System.Net.HttpWebRequest)System.Net.WebRequest.Create (url);
            request.Method = "post";
            request.Accept = "text/html, application/xhtml+xml, */*";
            request.ContentType = "application/x-www-form-urlencoded";
            byte[] buffer = encoding.GetBytes (data);
            request.ContentLength = buffer.Length;
            request.GetRequestStream ().Write (buffer, 0, buffer.Length);
            System.Net.HttpWebResponse response = (System.Net.HttpWebResponse)request.GetResponse ();
            using (StreamReader reader = new StreamReader (response.GetResponseStream (), System.Text.Encoding.GetEncoding ("UTF-8"))) {
                return reader.ReadToEnd ();
            }
        } catch (Exception) {
            Debug.LogError (string.Format ("HttpPost请求出错:{0},{1}", url, data));
        }
        return "";
    }

    /// <summary>
    /// 字符串转为UniCode码字符串
    /// </summary>
    /// <param name="s"></param>
    /// <returns></returns>
    public static string StringToUnicode (string s) {
        char[] charbuffers = s.ToCharArray ();
        byte[] buffer;
        System.Text.StringBuilder sb = new System.Text.StringBuilder ();
        for (int i = 0; i < charbuffers.Length; i++) {
            buffer = System.Text.Encoding.Unicode.GetBytes (charbuffers[i].ToString ());
            sb.Append (String.Format ("//u{0:X2}{1:X2}", buffer[1], buffer[0]));
        }
        return sb.ToString ();
    }
    /// <summary>
    /// Unicode字符串转为正常字符串
    /// </summary>
    /// <param name="srcText"></param>
    /// <returns></returns>
    public static string UnicodeToString (string srcText) {
        string dst = "";
        string src = srcText;
        int len = srcText.Length / 6;
        for (int i = 0; i <= len - 1; i++) {
            string str = "";
            str = src.Substring (0, 6).Substring (2);
            src = src.Substring (6);
            byte[] bytes = new byte[2];
            bytes[1] = byte.Parse (int.Parse (str.Substring (0, 2), System.Globalization.NumberStyles.HexNumber).ToString ());
            bytes[0] = byte.Parse (int.Parse (str.Substring (2, 2), System.Globalization.NumberStyles.HexNumber).ToString ());
            dst += System.Text.Encoding.Unicode.GetString (bytes);
        }
        return dst;
    }

    /// <summary>
    /// 设置对象的 LayerMask
    /// <param name="transform">transform对象</param>
    /// <param name="name">Layer名</param>
    /// </summary>
    public static void ChangeLayersRecursively (Transform transform, string name) {
        transform.gameObject.layer = LayerMask.NameToLayer (name);
        foreach (Transform child in transform) {
            ChangeLayersRecursively (child, name);
        }
    }

    /// <summary>
    /// 把二进制数据写入到本地路径
    /// </summary>
    /// <param name="data"></param>
    /// <param name="path"></param>
    public static void WriteBytesPath (byte[] data, string path) {
        File.WriteAllBytes (path, data);
    }

    /// <summary>
    /// 从本地路径读取二进制文件
    /// </summary>
    /// <param name="path"></param>
    public static byte[] ReadBytesPath (string path) {
        if (File.Exists (path)) {
            return File.ReadAllBytes (path);
        }
        return null;
    }

    /// <summary>
    /// 从本地路径删除文件
    /// </summary>
    /// <param name="path"></param>
    public static void DeletePath (string path) {
        if (File.Exists (path)) {
            File.Delete (path);
        }
    }

    // 实现UrlEncode
    public static string UrlEncode (string str) {
        StringBuilder sb = new StringBuilder ();
        byte[] byStr = System.Text.Encoding.UTF8.GetBytes (str); //默认是System.Text.Encoding.Default.GetBytes(str)
        for (int i = 0; i < byStr.Length; i++) {
            sb.Append (@"%" + Convert.ToString (byStr[i], 16));
        }
        return (sb.ToString ());
    }

    // 创建目录
    // 2016-3-26
    // hosr 添加静态方法攻lua调用
    public static void CreateDirectoryStatic (string destDirName) {
        if (!Directory.Exists (destDirName)) {
            Directory.CreateDirectory (destDirName);
        }
    }

    // 创建目录
    public void CreateDirectory (string destDirName) {
        if (!Directory.Exists (destDirName)) {
            Directory.CreateDirectory (destDirName);
        }
    }

    // 复制内容到粘贴板
    public static void CopyTextToClipboard (string txt) {
#if UNITY_ANDROID
        AndroidJavaClass jc = new AndroidJavaClass ("com.unity3d.player.UnityPlayer");
        AndroidJavaObject jo = jc.GetStatic<AndroidJavaObject> ("currentActivity");
        jo.Call ("copyTextToClipboard", txt);
#elif UNITY_IOS
        BaseApi.CopyToClipboard(txt);
#endif
    }

    // 是否静音
    public static bool IsMute () {
#if UNITY_IOS
        return BaseApi.IsMuted();
#else
        return false;
#endif
    }

    //播放视频
    public static void PlayMovie (string path, int type) {
#if UNITY_ANDROID || UNITY_IOS
        if(type == 1){
            Handheld.PlayFullScreenMovie(path, Color.black, FullScreenMovieControlMode.Hidden);
        }else if(type == 2){
            Handheld.PlayFullScreenMovie(path, Color.black, FullScreenMovieControlMode.CancelOnInput);
        }
#endif
    }

    //检查字库里面是否含有指定字符
    public static bool HasCharacter (Font font, string str) {
        if (font.HasCharacter(str[0])) {
            return true;
        }
        return false;
    }

    public static void UnloadAsset(UnityEngine.Object obj) {
        if (obj != null && !(obj is GameObject)) {
            Resources.UnloadAsset(obj);
        }
    }

    // 打标志使用，空方法
    public static void OpenOnlineGmWindow() {
    }
}