using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using UnityEngine;

using SLua;

/// <summary>
/// 资源更新
/// </summary>
public class AssetUpdater
{

    private Action CheckCompletedEvent;
    private GameContext ctx = null;
    private AssetBundleManager assetMgr = null;

    private string oldVersion = "";
    private string remoteResVersion = "";

    public AssetUpdater(Action callback)
    {
        this.CheckCompletedEvent += callback;
        this.ctx = GameContext.GetInstance();
        this.assetMgr = this.ctx.AssetBundleManager;
    }

    public void DoCheck()
    {
        Debug.Log("开始检查版本");
        ctx.LoadingPage.Show("检查资源版本");
        // LoadTask task = new LoadTask ("base_setting.json", OnBaseSettingLoaded);
        // task.useRandom = true;
        // this.assetMgr.LoadFromRemote (task);


        // wang 跳过资源更形
        LoadTask vtask = new LoadTask("version.json", UnpackVersionFile, UnpackVersionFileFialure);
        vtask.useRandom = false;
        this.assetMgr.LoadFromStreaming(vtask);
        // wang 修改
        return;



        if (ctx.RemoteResVersion != null && ctx.RemoteResVersion.Length > 0)
        {
            this.remoteResVersion = ctx.RemoteResVersion;
            this.CheckRemoteVersion();
        }
        else
        {
            string url = GameContext.GetInstance().RemotePath + "/base_setting.json";
            RequestInfo requestInfo = new RequestInfo();
            requestInfo.useRandom = true;
            requestInfo.path = url;
            requestInfo.succeCallback = OnBaseSettingLoaded;
            requestInfo.failCallback = OnBaseSettingLoadFailed;
            requestInfo.alertTxt = "下载base_setting信息失败，可能是网络不稳定，是否重试？";
            requestInfo.tryCount = 3;
            HttpRequest request = new HttpRequest(requestInfo);
            request.Download();
        }
    }

    private void OnBaseSettingLoadFailed(string msg)
    {
        ctx.AlertWindow.Hide();
        int length = 45;
        if (msg.Length < 45)
        {
            length = msg.Length - 1;
        }
        Log.Info("下载base_setting失败:" + msg.Substring(0, length));
        ctx.LoadingPage.Show("下载基础设置失败，请尝试重开游戏");

        ctx.AlertWindow.OnSumbitClickEvent = () => { Application.Quit(); };
        ctx.AlertWindow.SetTipsTxt("下载基础设置失败，请尝试重开游戏");
        ctx.AlertWindow.Show();
    }

    private void OnBaseSettingLoaded(WWW www, string args)
    {
        string settingFile = ctx.TmpPath + "/base_setting.json";
        Directory.CreateDirectory(Path.GetDirectoryName(settingFile));
        // Utils.Decompress (task.www.bytes, settingFile); // 解压缩
        File.WriteAllBytes(settingFile, www.bytes);
        www.Dispose();

        this.oldVersion = ctx.ResVersion;
        // ctx.ReadBaseSetting (settingFile);
        string script = File.ReadAllText(settingFile);
        BaseSetting setting = new BaseSetting(script);
        ctx.ConvertBaseSetting(setting);


        string flagFile = ctx.ResourcesPath + "/first_setup.tag";
        if (File.Exists(ctx.ResourcesPath + "/version.json") && File.Exists(flagFile))
        {
            Debug.Log("检查资源版本");
            ctx.LoadingPage.Show("正在检查资源版本"); // 显示加载页
            TimerManager.GetInstance().AddTimerTask(new TimerTask(100, VersionCheck));
        }
        else
        {
            Debug.Log("首次登录，正在解压资源文件(不消耗流量)");
            ctx.LoadingPage.Show("正在解压资源（仅首次游戏需要,不消耗流量）"); // 显示加载页
            LoadTask vtask = new LoadTask("version.json", UnpackVersionFile, UnpackVersionFileFialure);
            vtask.useRandom = false;
            this.assetMgr.LoadFromStreaming(vtask);
        }
    }

    private void CheckRemoteVersion()
    {
        this.oldVersion = ctx.ResVersion;
        ctx.ResVersion = this.remoteResVersion;
        string flagFile = ctx.ResourcesPath + "/first_setup.tag";


        if (File.Exists(flagFile))
        {
            Debug.Log("检查资源版本");
        }
        else
        {
            Debug.Log("首次登录，正在解压资源文件(不消耗流量)");
            ctx.LoadingPage.Show("正在解压资源（仅首次游戏需要,不消耗流量）"); // 显示加载页
            LoadTask vtask = new LoadTask("version.json", UnpackVersionFile, UnpackVersionFileFialure);
            vtask.useRandom = false;
            this.assetMgr.LoadFromStreaming(vtask);
        }
        // wang 修改
        return;



        if (File.Exists(ctx.ResourcesPath + "/version.json") && File.Exists(flagFile))
        {
            Debug.Log("检查资源版本");
            ctx.LoadingPage.Show("正在检查资源版本"); // 显示加载页
            TimerManager.GetInstance().AddTimerTask(new TimerTask(100, VersionCheck));
        }
        else
        {
            Debug.Log("首次登录，正在解压资源文件(不消耗流量)");
            ctx.LoadingPage.Show("正在解压资源（仅首次游戏需要,不消耗流量）"); // 显示加载页
            LoadTask vtask = new LoadTask("version.json", UnpackVersionFile, UnpackVersionFileFialure);
            vtask.useRandom = false;
            this.assetMgr.LoadFromStreaming(vtask);
        }
    }

    private void VersionCheck()
    {

        Debug.Log(string.Format(" ==>强制调过资源更新"));
        TimerManager.GetInstance().AddTimerTask(new TimerTask(50, CheckCompletedEvent));
        // wang 修改
        return;

        if (this.oldVersion.Equals(ctx.ResVersion))
        {
            Debug.Log(string.Format("当前版本无需更新:{0}", ctx.ResVersion));
            TimerManager.GetInstance().AddTimerTask(new TimerTask(50, CheckCompletedEvent));
        }
        else
        {
            ctx.LoadingPage.Show("发现新资源版本");
            // LoadTask task = new LoadTask (ctx.PatchPath, "patch_list.json", OnPatchListDownloaded);
            // task.useRandom = true;
            // this.assetMgr.LoadFile (task);
            string url = ctx.PatchPath + "/patch_list.json?version=" + ctx.ResVersion;
            RequestInfo requestInfo = new RequestInfo();
            // requestInfo.useRandom = true;
            requestInfo.path = url;
            requestInfo.succeCallback = OnPatchListDownloaded;
            requestInfo.failCallback = OnPatchListDownloadedFailed;
            requestInfo.alertTxt = "下载资源版本信息失败，可能是网络不稳定，是否重试？";
            requestInfo.tryCount = 3;
            HttpRequest request = new HttpRequest(requestInfo);
            request.Download();
        }
    }

    private void OnPatchListDownloaded(WWW www, string args)
    {
        string patchFile = ctx.TmpPath + "/patch_list.json";
        Directory.CreateDirectory(Path.GetDirectoryName(patchFile)); // 创建目录
        // Utils.Decompress (task.www.bytes, versionFile);
        File.WriteAllBytes(patchFile, www.bytes);
        www.Dispose();
        www = null;

        PatchCompareWithXmlProcessor processor = new PatchCompareWithXmlProcessor(patchFile, this.oldVersion, ctx.ResVersion, OnPatchCompleted);
        processor.DealPatch();
    }

    private void OnPatchListDownloadedFailed(string msg)
    {
        ctx.AlertWindow.Hide();
        int length = 45;
        if (msg.Length < 45)
        {
            length = msg.Length - 1;
        }
        Log.Info("下载patch_list失败:" + msg.Substring(0, length));
        ctx.LoadingPage.Show("下载Patchlist失败，请尝试重开游戏");
    }

    private void OnPatchCompleted()
    {
        TimerManager.GetInstance().AddTimerTask(new TimerTask(50, CheckCompletedEvent));
    }

    private void UnpackVersionFile(LoadTask task)
    {
        Debug.Log("version.json文件下载完成");
        string versionFile = ctx.ResourcesPath + "/version.json";
        Directory.CreateDirectory(Path.GetDirectoryName(versionFile));
        // Utils.Decompress (task.www.bytes, versionFile);
        File.WriteAllBytes(versionFile, task.www.bytes);

        VersionReader versionReader = new VersionReader(false, versionFile);
        DataUnpackProcessor dataUnpack = new DataUnpackProcessor(versionReader, DataUnpackCompleted);
        dataUnpack.DealUnPack();
    }

    private void DataUnpackCompleted()
    {
        string settingFile = ctx.ResourcesPath + "/base_setting.json";
        string flagFile = ctx.ResourcesPath + "/first_setup.tag";
        // 打上标志
        File.Copy(settingFile, flagFile, true);
        ctx.LoadingPage.Show("检查版本");
        TimerManager.GetInstance().AddTimerTask(new TimerTask(100, VersionCheck));
    }

    private void UnpackVersionFileFialure(string msg)
    {
        Debug.Log("解包version.lua文件失败，可能是安装包中不包含资源文件:" + msg);
        // 创建一个空的version.lua文件
        string path = ctx.ResourcesPath + "/version.json";
        Directory.CreateDirectory(Path.GetDirectoryName(path));
        File.WriteAllText(path, "[]");
        VersionCheck();
    }

    private void OnUnpackFailure(string msg)
    {

    }
}
