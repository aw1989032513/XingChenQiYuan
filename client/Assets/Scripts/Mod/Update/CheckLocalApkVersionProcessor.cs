using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Text.RegularExpressions;

using UnityEngine;

/// <summary>
/// 覆盖安装问题，检查apk版本，如果与当前apk版本不一致就清掉所有缓存
/// </summary>
public class CheckLocalApkVersionProcessor : IProcessor {

    private GameContext ctx = null;
    private Action endEvent = null;
    private string localSettingPath = null;
    private Regex resPattern = new Regex (@"""res_version"": ""(\d+)""");
    private Regex apkPattern = new Regex (@"""apk_version"": ""(\d+)""");

    public CheckLocalApkVersionProcessor (GameContext ctx) {
        this.ctx = ctx;
        localSettingPath = ctx.ResourcesPath + "/base_setting.json";
    }

    public void Deal () {
        if (File.Exists (localSettingPath)) {
            LoadTask task = new LoadTask ("base_setting.json", BaseSettingLoaded);
            ctx.AssetBundleManager.LoadFromStreaming(task);
        } else {
            Fire ();
        }
    }

    private void BaseSettingLoaded (LoadTask task) {
        string localScript = File.ReadAllText (localSettingPath);
        string resScript = task.www.text;
        task.www.Dispose ();
        task.www = null;
        // BaseSetting resSetting = new BaseSetting (resScript);
        // BaseSetting localSetting = new BaseSetting (localScript);
        string streamApkVersion = GetApkVersion (resScript);
        string streamResVersion = GetResVersion (resScript);
        string localApkVersion = GetApkVersion (localScript);
        string localResVersion = GetResVersion (localScript);
        bool isClean = false;
        if ((Application.platform == RuntimePlatform.Android || Application.platform == RuntimePlatform.IPhonePlayer) 
            && !streamApkVersion.Equals (localApkVersion)) {
            Clean ();
            Log.Info("Apk版本不一致，清除缓存");
            isClean = true;
        }
        if (!isClean && (Application.platform == RuntimePlatform.Android || Application.platform == RuntimePlatform.IPhonePlayer)
            && streamResVersion.CompareTo (localResVersion) > 0) {
            Clean ();
            Log.Info("本地资源版本比StreamAssets中的还底，清除本地缓存");
        }
        Fire ();
    }

    private void Clean () {
        DirectoryInfo dir = new DirectoryInfo (ctx.ResourcesPath);
    	if (dir.Exists) {
    	    FileInfo[] fileInfo = dir.GetFiles ();
    	    foreach (FileInfo file in fileInfo) {
    	        file.Delete ();
    	    }
    	    DirectoryInfo[] dirInfos = dir.GetDirectories ();
    	    foreach (DirectoryInfo directory in dirInfos) {
    	        directory.Delete (true);
    	    }
    	}
    }

    public void AddEndEvent (Action action) {
        endEvent += action;
    }

    public void Fire () {
        if (Application.platform == RuntimePlatform.Android) {
            if (File.Exists (ctx.ApkTmpPath)) {
                new FileInfo (ctx.ApkTmpPath).Delete ();
                Log.Info("删除旧安装文件:" + ctx.ApkTmpPath);
            }
        }
        if (endEvent != null) {
            endEvent ();
        }
    }

    private string GetResVersion (string content) {
        if (resPattern.IsMatch (content)) {
            return resPattern.Match (content).Groups[1].ToString ();
        } else {
            Log.Error ("CheckLocalApkVersionProcessor读取ResVersion信息出错");
            return null;
        }
    }

    private string GetApkVersion (string content) {
        if (apkPattern.IsMatch (content)) {
            return apkPattern.Match (content).Groups[1].ToString ();
        } else {
            Log.Error ("CheckLocalApkVersionProcessor读取apkVersion信息出错");
            return null;
        }
    }
}
