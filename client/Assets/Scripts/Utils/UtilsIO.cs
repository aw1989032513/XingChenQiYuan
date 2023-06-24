using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;

using LitJson;
using SLua;

/// <summary>
/// 创建时间:2017/2/7
/// 提供IO操作的工具方法，以便lua使用
/// </summary>
[CustomLuaClass]
public class UtilsIO {

    /// <summary>
    /// 创建目录
    /// </summary>
    /// <param name="dir"></param>
    public static void CreateDirectory(string dir) {
        Directory.CreateDirectory (dir);
    }

    /// <summary>
    /// 读文件文本内容
    /// </summary>
    /// <param name="path"></param>
    /// <returns></returns>
    public static string ReadAllText(string path) {
        string content = File.ReadAllText (path);
        return content;
    }

    /// <summary>
    /// 写文件
    /// </summary>
    /// <param name="path"></param>
    /// <param name="content"></param>
    public static void WriteAllText(string path, string content) {
        File.WriteAllText(path, content);
    }

    /// <summary>
    /// 读文件字节内容
    /// </summary>
    /// <param name="path"></param>
    /// <returns></returns>
    public static byte[] ReadAllBytes(string path) {
        return File.ReadAllBytes(path);
    }

    /// <summary>
    /// 写文件字节内容
    /// </summary>
    /// <param name="path"></param>
    /// <returns></returns>
    public static void WriteAllBytes(string path, byte[] bytes) {
        File.WriteAllBytes(path, bytes);
    }

    /// <summary>
    /// 回滚资源版本
    /// </summary>
    public static void RollbackResVersion(string rbVersion, Action<string> callback) {
        LoadTask task = new LoadTask("base_setting.json", (LoadTask lTask) => { OnCompleted(lTask, rbVersion, callback); });
    	task.useRandom = false;
    	GameContext.GetInstance().AssetBundleManager.LoadFromStreaming (task);
    }
    public static void OnCompleted(LoadTask task, string rbVersion, Action<string> callback) {
        string content = task.www.text;
        JsonData jsonData = JsonMapper.ToObject(content);
        string resVersion = @jsonData["res_version"].ToString();
        if (rbVersion.Equals("notfind")) {
            rbVersion = resVersion;
        }
        if (resVersion.Length != rbVersion.Length) {
            callback("FAIL-1");
            return;
        }
        string pattern = @"^\d*$";
        if (!Regex.IsMatch(rbVersion, pattern)) {
            callback("FAIL-2");
            return;
        }
        if (resVersion.CompareTo(rbVersion) > 0) {
            rbVersion = resVersion;
        }
        string settingFile = GameContext.GetInstance().ResourcesPath + "/base_setting.json";
        string lcontent = File.ReadAllText(settingFile);
        JsonData ojsonData = JsonMapper.ToObject(lcontent);
        string oresVersion = @ojsonData["res_version"].ToString();
        string newSetting = lcontent.Replace(oresVersion, rbVersion);
        File.WriteAllText(settingFile, newSetting);
        callback("true");
    }
}
