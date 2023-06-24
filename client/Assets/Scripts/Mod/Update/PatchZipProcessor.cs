using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;

using UnityEngine;

using LitJson;

/// <summary>
/// 更新包更新
/// </summary>
public class PatchZipProcessor {

    private GameContext ctx = null;
    private string patchFile = null;
    private string resVersion = null;
    private string targetVersion = null;
    private Action completedAction = null;
    private List<PatchInfo> patchList = new List<PatchInfo> ();
    private List<PatchInfo> updatePatchList = new List<PatchInfo> ();
    private Queue<PatchInfo> updatePatchQueue= new Queue<PatchInfo> ();
    private int size = 0;
    private int unzipCount = 1;
    private int pointCount = 0;

    private RequestInfo resRequest = null;
    private bool timerStart = false;

    private Thread unzipThread = null;
    private bool unzipCompleted = false;

    public PatchZipProcessor (string patchFile, string resVersion, string targetVersion, Action completedAction) {
        Log.Debug ("当时资源版本:" + resVersion);
        this.patchFile = patchFile;
        this.resVersion = resVersion;
        this.targetVersion = targetVersion;

        this.completedAction = completedAction;
        this.ctx = GameContext.GetInstance ();
        ReadPatchList ();
    }

    private void ReadPatchList () {
        string detail = File.ReadAllText (this.patchFile);
        JsonData jsonData = JsonMapper.ToObject (detail);
        int count = jsonData.Count;
        for (int i = 0; i < count; i++) {
            string version = jsonData[i]["version"].ToString ();
            string size = jsonData[i]["size"].ToString ();
            patchList.Add (new PatchInfo(version, size));
        }

        foreach(PatchInfo version in patchList) {
            if (version.version.CompareTo (this.resVersion) > 0 && version.version.CompareTo(this.targetVersion) <= 0) {
                updatePatchList.Add (version);
                updatePatchQueue.Enqueue (version);
                size += Convert.ToInt32(version.size);
            }
        }
    }

    public void DealPatch () {
        if (updatePatchQueue.Count > 0 && !ctx.NetworkType.Equals("WIFI")) {
            ctx.AlertWindow.OnSumbitClickEvent = null;
            ctx.AlertWindow.OnSumbitClickEvent = OnSumbitClick;
            float s = (float)size / 1024f / 1024f;
            int sint = (int)(s * 100);
            s = sint / 100f;
            ctx.AlertWindow.SetTipsTxt (string.Format("检查到游戏当前版本需要更新，本次更新的文件大小约为{0}MB", s));
            ctx.AlertWindow.Show ();
        } else {
            DoDealPatch ();
        }
    }

    private void OnSumbitClick () {
        ctx.AlertWindow.Hide ();
        DoDealPatch ();
    }

    public void DoDealPatch () {
        if (updatePatchQueue.Count > 0) {
            PatchInfo version = updatePatchQueue.Dequeue();

            string url = ctx.PatchPath + "/" + version.version + ".zip";
            RequestInfo requestInfo = new RequestInfo ();
            requestInfo.args = version.version + ".zip";
            // requestInfo.useRandom = true;
        	requestInfo.path = url;
            requestInfo.succeCallback = OnLoadCompleted;
        	requestInfo.failCallback = OnFailureCallback;
        	requestInfo.alertTxt = "下载资源更新包出错失败，可能是网络不稳定，是否重试？";
        	requestInfo.tryCount = 3;
        	HttpRequest request = new HttpRequest (requestInfo);
        	request.Download ();

            // LoadTask task = new LoadTask (ctx.PatchPath, version.version + ".zip", OnLoadCompleted, OnFailureCallback);
            // task.useRandom = true;
            // ctx.AssetBundleManager.LoadFile(task);
            float size = (float)Convert.ToInt32(version.size) / 1024 / 1024;
            // size = (int)size;
            size = (int)(size * 100);
            size = (float)size / 100f;
            ctx.LoadingPage.Progress (string.Format ("下载更新文件{2} {3}M ({0}/{1})", (updatePatchList.Count - updatePatchQueue.Count), updatePatchList.Count, version.version + ".zip", size), 0);
            this.resRequest = requestInfo;
            if (!timerStart) {
                TimerManager.GetInstance ().AddTimerTask (new TimerTask (100, UpdateLoadProgress));
                timerStart = true;
            }
        } else {
            this.resRequest = null;
            TimerManager.GetInstance ().AddTimerTask (new TimerTask (100, UnZip));
        }
    }

    private void UpdateLoadProgress () {
        if (this.resRequest != null) {
            if (this.resRequest.www != null) {
                ctx.LoadingPage.Progress (this.resRequest.www.progress * 100);
            }
            TimerManager.GetInstance ().AddTimerTask (new TimerTask (100, UpdateLoadProgress));
        }
    }    

    private void OnLoadCompleted (WWW www, string filePath) {
        string path = ctx.TmpPath + "/patch/" + filePath;
        Directory.CreateDirectory(Path.GetDirectoryName(path));
        File.WriteAllBytes (path, www.bytes);
        www.Dispose ();
        www = null;
        DoDealPatch ();
    }

    private void OnFailureCallback (string msg) {
        ctx.AlertWindow.Hide ();
        int length = 45;
        if (msg.Length < 45) {
            length = msg.Length - 1;
        }
        Log.Error (string.Format ("下载资源更新包出错:{0}", msg.Substring(0, length)));
        ctx.LoadingPage.Show ("下载资源失败，请重新尝试");

        ctx.AlertWindow.OnSumbitClickEvent = () => { Application.Quit (); };
        ctx.AlertWindow.SetTipsTxt ("下载资源失败，请重新尝试");
        ctx.AlertWindow.Show ();
    }

    /// <summary>
    /// 解压
    /// </summary>
    private void UnZip () {
        // if (updatePatchList.Count > 0) {
        //     ctx.LoadingPage.Progress (string.Format ("正在解压文件 ({0}/{1})", unzipCount, (updatePatchList.Count + 1)), 0);
        // }
        UndateUnzipProgress ();
        unzipThread = new Thread(new ThreadStart(UnZipBackground));
        unzipThread.IsBackground = true;
        unzipThread.Start();
        TimerManager.GetInstance ().AddTimerTask (new TimerTask (500, CheckUnZipCompleted));
        // UnZipBackground ();
        // if (completedAction != null) {
        //     completedAction ();
        // }
    }

    private void UndateUnzipProgress () {
        if (unzipCount < updatePatchList.Count) {
            ctx.LoadingPage.Progress (string.Format ("正在解压文件 ({0}/{1})", unzipCount, updatePatchList.Count), (((float)unzipCount) / ((float)updatePatchList.Count + 1)) * 100);
            TimerManager.GetInstance ().AddTimerTask (new TimerTask (500, UndateUnzipProgress));
        } else if (unzipCount >= updatePatchList.Count) {
            pointCount = 1;
            UpdatePoint ();
            unzipCount++;
        }
    }

    private void UpdatePoint () {
        pointCount++;
        int p = pointCount % 4;
        string pstr = "   ";
        switch (p) {
            case 0:
                pstr = "   ";
                break;
            case 1:
                pstr = ".  ";
                break;
            case 2:
                pstr = ".. ";
                break;
            case 3:
                pstr = "...";
                break;
        }
        if (!unzipCompleted) {
            ctx.LoadingPage.Progress ("正在替换文件" + pstr, 100);
            TimerManager.GetInstance ().AddTimerTask (new TimerTask (1000, UpdatePoint));
        }
    }

    private void CheckUnZipCompleted () {
        if (unzipCompleted) {
            try {
                unzipThread.Abort ();
            } catch (Exception e) {
                Log.Debug("关闭解压线程出错：" + e.Message);
            }
            if (completedAction != null) {
        	    completedAction ();
        	}
        } else {
            TimerManager.GetInstance ().AddTimerTask (new TimerTask (500, CheckUnZipCompleted));
        }
    }

    private void CallBackCompletedAction () {

    }

    /// <summary>
    /// 比较花时间，独立线程处理
    /// </summary>
    private void UnZipBackground () {
        string root = ctx.TmpPath + "/patch/";
        foreach (PatchInfo version in updatePatchList) {
            string msg = "";
            bool succ = Utils.UnZipFile (root + version.version + ".zip", root + "unzip/", out msg);
            if (!succ) {
                Log.Error (version.version + ".zip解压出错:" + msg);
            } else {
                unzipCount++;
            }
        }
        Cover (ctx.TmpPath + "/patch/unzip", ctx.ResourcesPath);
        String baseSettingFile = ctx.TmpPath + "/patch/unzip/base_setting.json";
        String versionFile = ctx.TmpPath + "/patch/unzip/version.json";
        if (File.Exists(baseSettingFile)) {
            File.Copy(baseSettingFile, ctx.ResourcesPath + Path.DirectorySeparatorChar + "base_setting.json", true);
            File.Copy(versionFile, ctx.ResourcesPath + Path.DirectorySeparatorChar + "version.json", true);
        }

        DirectoryInfo patchDir = new DirectoryInfo (ctx.TmpPath + "/patch");
        if (patchDir.Exists) {
            patchDir.Delete (true);
        }
        unzipCount++;
        unzipCompleted = true;
    }

    /// <summary>
    /// 覆盖
    /// </summary>
    private void Cover (string srcDir, string tgtDir) {
        DirectoryInfo source = new DirectoryInfo (srcDir);
        DirectoryInfo target = new DirectoryInfo (tgtDir);

        if (target.FullName.StartsWith (source.FullName, StringComparison.CurrentCultureIgnoreCase)) {
            throw new Exception ("父目录不能拷贝到子目录！");
        }
        if (!source.Exists) {
            return;
        }
        if (!target.Exists) {
            target.Create ();
        }
        FileInfo[] files = source.GetFiles ();
        for (int i = 0; i < files.Length; i++) {
            // if (files[i].FullName.EndsWith ("lua") || files[i].FullName.EndsWith ("map")  || files[i].FullName.EndsWith("version.json")) {
            if (files[i].FullName.EndsWith ("map")) {
                Utils.Decompress (files[i].FullName, target.FullName + Path.DirectorySeparatorChar + files[i].Name);
            } else {
                if (!files[i].FullName.Contains(@"base_setting.json") && !files[i].FullName.Contains(@"version.json")) {
                    File.Copy(files[i].FullName, target.FullName + Path.DirectorySeparatorChar + files[i].Name, true);
                }
            }
        }
        DirectoryInfo[] dirs = source.GetDirectories ();
        for (int j = 0; j < dirs.Length; j++) {
            Cover (dirs[j].FullName, target.FullName + Path.DirectorySeparatorChar + dirs[j].Name);
        }
    }
}

public class PatchInfo {
    public string version = null;
    public string size = null;

    public PatchInfo (string version, string size) {
        this.version = version;
        this.size = size;
    }
}