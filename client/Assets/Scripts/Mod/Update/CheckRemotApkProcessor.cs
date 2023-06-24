using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;

using UnityEngine;

using LitJson;

/// <summary>
/// 处理强更问题
/// </summary>
public class CheckRemotApkProcessor : IProcessor {

    private GameContext ctx = null;
    private Action endEvent = null;
    private string checkPath = null;
    private bool timerStart = false;
    private RequestInfo apkRequest = null;

    public CheckRemotApkProcessor (GameContext ctx) {
        this.ctx = ctx;
    }

    public void Deal () {
        if (Application.platform == RuntimePlatform.Android && ctx.CheckApk) {
            this.ctx.LoadingPage.Show ("检查游戏版本");
            TimerManager.GetInstance ().AddTimerTask (new TimerTask (100, Check));
        } else if (Application.platform == RuntimePlatform.IPhonePlayer && ctx.CheckApk) {
            this.ctx.LoadingPage.Show ("检查应用版本");
            TimerManager.GetInstance ().AddTimerTask (new TimerTask (100, Check));
        } else {
            Fire ();
        }
    }

    private void Check () {
        this.checkPath = ctx.CheckApkPath + "/check_apk_version.php";
        System.Random rd = new System.Random ();
        bool isTheone = ctx.IsTheone (ctx.firstZone);
        string url = this.checkPath + "?platformChanleId=" + this.ctx.PlatformChanleId + "&chanleId=" + this.ctx.KKKChanleId + "&gameName=" + ctx.GameName + "&csversion=" + CSVersion.Version + "&isTheone=" + isTheone + "&isSubpackage=" + CSSubpackageManager.isSubpackage + "&random=" + rd.Next (1000);

        RequestInfo requestInfo = new RequestInfo ();
        requestInfo.path = url;
        requestInfo.succeCallback = DoCheck;
        requestInfo.failCallback = CheckFailCallback;
        requestInfo.alertTxt = "检查APP版本信息失败，可能是网络不稳定，是否重试？";
        requestInfo.tryCount = 3;
        requestInfo.isHttps = true;
        HttpRequest request = new HttpRequest (requestInfo);
        request.Download ();
    }

    private void DoCheck (WWW www, string args) {
        string versionJson = www.text;
        www.Dispose ();
        JsonData jsonData = JsonMapper.ToObject (versionJson);
        ctx.ConvertBaseSettingJson (jsonData);
        string remoteApkVersion = @jsonData["apk_version"].ToString ();
        string size = @jsonData["size"].ToString ();
        string apkName = @jsonData["apkName"].ToString ();
        if (remoteApkVersion != null && remoteApkVersion.Trim ().Length > 0) {
            if (!remoteApkVersion.Equals (ctx.ApkVersion)) {
                if (Application.platform == RuntimePlatform.Android) {
                    Log.Debug ("发现新APP版本 R:" + remoteApkVersion + " L:" + ctx.ApkVersion);
                    ctx.AlertWindow.OnSumbitClickEvent = () => { DownloadApk (remoteApkVersion, apkName); };
                    ctx.AlertWindow.SetTipsTxt (string.Format ("检查到新版本更新，本次更新包大小约为{0}，点击确认即可进行下载更新，点击取消退出游戏", size));
                    ctx.AlertWindow.Show ();
                } else if (Application.platform == RuntimePlatform.IPhonePlayer) {
                    if (CSVersion.platform.Equals ("jailbreak")) {
                        // 越狱
                        Log.Debug ("发现新ios应用版本 R:" + remoteApkVersion + " L:" + ctx.ApkVersion);
                        string appUrl = @jsonData["appUrl"].ToString ();
                        ctx.AlertWindow.OnSumbitClickEvent = () => { OpenUrl(remoteApkVersion, apkName, appUrl); };
                        ctx.AlertWindow.SetTipsTxt ("检查到新版本更新，点击确认下载更新，点击取消退出游戏");
                        ctx.AlertWindow.Show ();
                    } else {
                        // 正式版
                        Log.Debug ("发现新ios应用版本 R:" + remoteApkVersion + " L:" + ctx.ApkVersion);
                        string appUrl = @jsonData["appUrl"].ToString ();
                        ctx.AlertWindow.OnSumbitClickEvent = () => { OpenUrl(remoteApkVersion, apkName, appUrl); };
                        ctx.AlertWindow.SetTipsTxt ("检查到新版本更新，点击确认下载更新，点击取消退出游戏");
                        ctx.AlertWindow.Show ();
                    }
                }
            } else {
                Log.Debug ("APP版本一致:" + remoteApkVersion);
                Fire ();
            }
        } else {
            Log.Debug ("远程APP版本为空");
            Fire ();
        }
    }

    private void CheckFailCallback (string msg) {
        ctx.AlertWindow.Hide ();
        int length = 45;
        if (msg.Length < 45) {
            length = msg.Length - 1;
        }
        Log.Info ("检查APP版本失败:" + msg.Substring(0, length));
        ctx.LoadingPage.Show ("检查客户端失败,当前网络不可用,请检查是否连接可用的Wifi或移动网络!");

        ctx.AlertWindow.OnSumbitClickEvent = () => { Application.Quit (); };
        ctx.AlertWindow.SetTipsTxt ("检查客户端失败,当前网络不可用,请检查是否连接可用的Wifi或移动网络");
        ctx.AlertWindow.Show ();
    }

    private void OpenUrl(string remoteApkVersion, string apkName, string url) {
#if UNITY_IOS
        // url = "itms-apps://itunes.apple.com/us/app/id1053012308";
        BaseApi.OpenUrlAction(url);
#endif
    }

    private void DownloadApk (string remoteApkVersion, string apkName) {
        ctx.AlertWindow.Hide ();
        ctx.LoadingPage.Show ("正在下载APP安装包");
        System.Random rd = new System.Random ();
        string url = ctx.DownloadApkPath + "/" + remoteApkVersion + "/" + apkName;

        apkRequest = new RequestInfo ();
        // apkRequest.useRandom = true;
        apkRequest.path = url;
        apkRequest.succeCallback = OnCompleted;
        apkRequest.failCallback = DownloadApkFailed;
        apkRequest.alertTxt = "下载APP失败，可能是网络不稳定，是否重试？";
        apkRequest.tryCount = 3;
        HttpRequest request = new HttpRequest (apkRequest);
        request.Download ();

        if (!timerStart) {
            TimerManager.GetInstance ().AddTimerTask (new TimerTask (100, UpdateLoadProgress));
            timerStart = true;
        }
    }

    private void OnCompleted (WWW www, string args) {
        this.apkRequest = null;
        ctx.LoadingPage.Show ("下载完成，检验中…");
        TimerManager.GetInstance ().AddTimerTask (new TimerTask (100, () => { WriteApkFile (www); }));
    }

    private void DownloadApkFailed (string msg) {
        this.apkRequest = null;
        ctx.AlertWindow.Hide ();
        int length = 45;
        if (msg.Length < 45) {
            length = msg.Length - 1;
        }
        Log.Info ("下载APP失败:" + msg.Substring(0, length));
        ctx.LoadingPage.Show ("下载失败，请检查网络");
    }

    public void WriteApkFile (WWW www) {
        string path = ctx.ApkTmpPath;
        File.WriteAllBytes (path, www.bytes);
        www.Dispose ();
        RunDownloadApk (path);
    }

    private void UpdateLoadProgress () {
        if (this.apkRequest != null) {
            if (this.apkRequest.www != null) {
                int prs = (int)(this.apkRequest.www.progress * 100);
                ctx.LoadingPage.Progress (string.Format ("正在下载APP安装包 {0}%", prs), this.apkRequest.www.progress * 100);
            }
            TimerManager.GetInstance ().AddTimerTask (new TimerTask (100, UpdateLoadProgress));
        }
    }

    public void RunDownloadApk (String path) {
#if UNITY_ANDROID
        AndroidJavaClass jc = new AndroidJavaClass ("com.unity3d.player.UnityPlayer");
        AndroidJavaObject jo = jc.GetStatic<AndroidJavaObject> ("currentActivity");
        jo.Call ("RunDownloadApk", path);
#endif
    }

    public void AddEndEvent (Action action) {
        endEvent += action;
    }

    public void Fire () {
        if (endEvent != null) {
            endEvent ();
        }
    }
}
