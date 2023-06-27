using System;
using System.IO;
using System.Xml;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;

using UnityEngine;

using LitJson;

public class PatchCompareWithXmlProcessor {

    private GameContext ctx = null;
    private string patchFile = null;
    private string resVersion = null;
    private string targetVersion = null;
    private Action completedAction = null;

    private List<PatchInfo> patchList = new List<PatchInfo> ();
    private PatchInfo lastPatchVersion = null;
    private LocalVersionHandler xmlHandler = null;
    private Queue<VersionAsset> diffList = null;

    private Dictionary<string, VersionAsset> remoteDict = null;
    private Dictionary<string, RequestInfo> runningReqDict = null;

    private SegmentQueue<XmlWriteAsset> writeQueue = new SegmentQueue<XmlWriteAsset> ();
    private Thread writeThread = null;

    private int remainCount = 0;
    private int totalCount = 0;
    private int size = 0;
    private int receiveSize = 0;

    // 最多三个下载线程
    public int threadCount = 5;
    private RequestInfo request1 = null;
    private RequestInfo request2 = null;
    private RequestInfo request3 = null;
    private RequestInfo request4 = null;
    private RequestInfo request5 = null;

    private string patchRoot = null;
    private string patchWritePath = null;

    private bool downloadSetting = false;
    private bool downloadVersion = false;
    private bool downloadFinish = false;

    public PatchCompareWithXmlProcessor (string patchFile, string resVersion, string targetVersion, Action completedAction) {
        Log.Debug ("当前资源版本:" + resVersion);
        Log.Debug ("目标资源版本:" + targetVersion);

        this.patchFile = patchFile;
        this.resVersion = resVersion;
        this.targetVersion = targetVersion;

        Debug.Log("wang ==> 强制调过资源更新");
        this.resVersion = this.targetVersion;


        this.completedAction = completedAction;
        this.ctx = GameContext.GetInstance ();
        this.threadCount = ctx.PatchThreadCount;
        if (this.threadCount >= 3) {
            this.threadCount = 5;
        }
        this.patchRoot = ctx.TmpPath + "/update_patch";
        this.patchWritePath = ctx.TmpPath + "/patch_current_update_file.txt";


        Debug.Log("patchRoot => " + this.patchRoot);
        Debug.Log("patchWritePath => " + this.patchWritePath);
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
                lastPatchVersion = version;
                size += Convert.ToInt32(version.size);
            }
        }
    }

    public void DealPatch () {
        if (lastPatchVersion != null) {
            DirectoryInfo patchDir = new DirectoryInfo (this.patchRoot);
            if (!patchDir.Exists) {
                Directory.CreateDirectory (this.patchRoot);
            }
            string url = ctx.PatchPath + "/" + lastPatchVersion.version + "/version.json";
            RequestInfo requestInfo = new RequestInfo ();
            requestInfo.path = url;
            requestInfo.succeCallback = OnLastVersionDownloaded;
            requestInfo.failCallback = OnLastVersionDownloadedFailed;
            requestInfo.alertTxt = "";
            requestInfo.tryCount = 5;
            HttpRequest request = new HttpRequest (requestInfo);
            request.Download ();
        } else {
            downloadFinish = true;
            TimerManager.GetInstance ().AddTimerTask (new TimerTask (100, this.completedAction));
        }
    }

    private void OnLastVersionDownloaded (WWW www, string args) {
        string lastVersion = ctx.TmpPath + "/last_version.json";
        Directory.CreateDirectory (Path.GetDirectoryName (lastVersion)); // 创建目录
        File.WriteAllBytes (lastVersion, www.bytes);
        www.Dispose ();
        www = null;

        VersionReader versionReader = new VersionReader (false, lastVersion);
        remoteDict = versionReader.dict;

        xmlHandler = new LocalVersionHandler (ctx.ResourcesPath, ctx.TmpPath, remoteDict);
        xmlHandler.Load ();

        string lastFile = null;
        if (File.Exists (this.patchWritePath)) {
            lastFile = File.ReadAllText (this.patchWritePath);
        }
        diffList = xmlHandler.Difference (lastFile);
        size = xmlHandler.dSize;

        if (diffList.Count > 0) {
            if (!ctx.NetworkType.Equals ("WIFI")) {
                ctx.AlertWindow.OnSumbitClickEvent = null;
                ctx.AlertWindow.OnSumbitClickEvent = OnSumbitClick;
                float s = (float)size / 1024f / 1024f;
                int sint = (int)(s * 100);
                s = (sint * 0.7f) / 100f;
                ctx.AlertWindow.SetTipsTxt (string.Format ("检查到游戏当前版本需要更新，本次更新的文件大小约为{0}MB", s));
                ctx.AlertWindow.Show ();
            } else {
                GotoDownLoad ();
            }
        } else {
            DownLoadVersionJson ();
        }
    }

    private void GotoDownLoad () {
        totalCount = diffList.Count;
        remainCount = diffList.Count;
        // UpdateLoadProgress ();
        float tsize = (float)size / 1024 / 1024 * 0.7f;
        tsize = (int)(tsize * 100);
        tsize = (float)tsize / 100f;
        ctx.LoadingPage.Progress (string.Format ("下载更新文件 {0}M/{1}M", "0", tsize), 0);
        for (int i = 0; i < threadCount; i++) {
            DoDownload ();
        }
        if (writeThread == null) {
            writeThread = new Thread (new ThreadStart (WriteFile));
            writeThread.IsBackground = true;
            writeThread.Start ();
        }

        TimerManager.GetInstance().AddTimerTask(new TimerTask(100, UpdateLoadProgress));
    }

    private void UpdateLoadProgress() {
        if (!downloadFinish) {
            SetTxt ();
            TimerManager.GetInstance().AddTimerTask(new TimerTask(100, UpdateLoadProgress));
        } else {
            ctx.LoadingPage.Progress (100);
        }
    }

    private void DoDownload () {
        if (diffList.Count > 0) {
            VersionAsset asset = diffList.Dequeue ();
            Download (asset);
        }
    }

    // 最后下载version.json和basesetting.json
    private void DownLoadVersionJson () {
        downloadFinish = true;
        request1 = null;
        request2 = null;
        request3 = null;
        request4 = null;
        request5 = null;

        string url = ctx.PatchPath + "/" + lastPatchVersion.version + "/base_setting.json";
        RequestInfo requestInfo = new RequestInfo ();
        requestInfo.useRandom = false;
        requestInfo.path = url;
        requestInfo.args = "base_setting.json";
        requestInfo.succeCallback = VersionDownloadCompleted;
        requestInfo.failCallback = OnFailureCallback;
        requestInfo.alertTxt = "";
        requestInfo.tryCount = 3;
        HttpRequest request = new HttpRequest (requestInfo);
        request.Download ();

        url = ctx.PatchPath + "/" + lastPatchVersion.version + "/version.json";
        requestInfo = new RequestInfo ();
        requestInfo.useRandom = false;
        requestInfo.path = url;
        requestInfo.args = "version.json";
        requestInfo.succeCallback = VersionDownloadCompleted;
        requestInfo.failCallback = OnFailureCallback;
        requestInfo.alertTxt = "";
        requestInfo.tryCount = 3;
        request = new HttpRequest (requestInfo);
        request.Download ();

    }

    private void VersionDownloadCompleted (WWW www, string target) {
        string settingFile = this.patchRoot + "/" + lastPatchVersion.version + "/" + target;
        Directory.CreateDirectory (Path.GetDirectoryName (settingFile));
        File.WriteAllBytes (settingFile, www.bytes);
        www.Dispose ();

        if (target.Contains ("version")) {
            downloadVersion = true;
        } else if (target.Contains ("base_setting")) {
            downloadSetting = true;
        }

        if (downloadVersion && downloadSetting) {
            DirectoryInfo root = new DirectoryInfo (this.patchRoot);
        	DirectoryInfo [] subDir = root.GetDirectories ();
        	if (subDir != null) {
        	    foreach (DirectoryInfo dir in subDir) {
        	        Cover (this.patchRoot + "/" + dir.Name, ctx.ResourcesPath);
        	    }
        	}
        	File.Copy (this.patchRoot + "/" + lastPatchVersion.version + "/base_setting.json", ctx.ResourcesPath + "/base_setting.json", true);
        	File.Copy (this.patchRoot + "/" + lastPatchVersion.version + "/version.json", ctx.ResourcesPath + "/version.json", true);

            DirectoryInfo patchDir = new DirectoryInfo (this.patchRoot);
            if (patchDir.Exists) {
                patchDir.Delete (true);
            }
            if (File.Exists (this.patchWritePath)) {
                File.Delete (this.patchWritePath);
            }
            ctx.LoadingPage.Progress (100);
            TimerManager.GetInstance ().AddTimerTask (new TimerTask (100, this.completedAction));
        }
    }

    private void Download (VersionAsset asset) {
        string url = ctx.PatchPath + "/" + asset.PatchVersion + "/" + asset.Target;
        RequestInfo requestInfo = new RequestInfo ();
        requestInfo.useRandom = false;
        requestInfo.path = url;
        requestInfo.args = asset.Target;
        requestInfo.succeCallback = DownloadCompleted;
        requestInfo.failCallback = OnFailureCallback;
        requestInfo.alertTxt = "";
        requestInfo.tryCount = 3;
        HttpRequest request = new HttpRequest (requestInfo);
        SetRequest(requestInfo);
        request.Download ();
    }

    private void SetRequest(RequestInfo requestInfo) {
        if (request1 == null) {
            request1 = requestInfo;
        } else if (request2 == null) {
            request2 = requestInfo;
        } else if (request3 == null) {
            request3 = requestInfo;
        } else if (request4 == null) {
            request4 = requestInfo;
        } else if (request5 == null) {
            request5 = requestInfo;
        }
    }

    private void DelRequeset(string target) {
        if (request1 != null && request1.args == target) {
            request1 = null;
        } else if (request2 != null && request2.args == target) {
            request2 = null;
        } else if (request3 != null && request3.args == target) {
            request3 = null;
        } else if (request4 != null && request4.args == target) {
            request4 = null;
        } else if (request5 != null && request5.args == target) {
            request5 = null;
        }
    }

    private void DownloadCompleted (WWW www, string target) {
        DelRequeset(target);
        VersionAsset asset = this.remoteDict[target];
        string targetFile = this.patchRoot + "/" + asset.PatchVersion + "/" + target;
    	XmlWriteAsset writeAsset = new XmlWriteAsset ();
    	writeAsset.targetFile = targetFile;
        writeAsset.target = target;
    	writeAsset.content = www.bytes;
    	www.Dispose ();
    	writeQueue.Enqueue (writeAsset);
        receiveSize = receiveSize + Convert.ToInt32(xmlHandler.assetDict[target].Size);
        // SetTxt ();
        DoDownload ();
    }

    private void OnFailureCallback (string msg) {
        ctx.AlertWindow.Hide ();
        int length = 45;
        if (msg.Length < 45) {
            length = msg.Length - 1;
        }
        Log.Error (string.Format ("下载更新资源出错:{0}", msg.Substring (0, length)));
        ctx.LoadingPage.Show ("下载资源失败，请重新尝试");

        ctx.AlertWindow.OnSumbitClickEvent = () => { Application.Quit (); };
        ctx.AlertWindow.SetTipsTxt ("下载资源失败，请重新尝试");
        ctx.AlertWindow.Show ();
    }

    // private void UpdateLoadProgress () {
    //     if (diffList.Count > 0) {
    //         ctx.LoadingPage.Progress ((1.0f * (totalCount - remainCount) / totalCount) * 100);
    //         TimerManager.GetInstance ().AddTimerTask (new TimerTask (100, UpdateLoadProgress));
    //     } else {
    //         ctx.LoadingPage.Progress ((1.0f * remainCount / totalCount) * 100);
    //     }
    // }    

    private void WriteFile () {
        XmlWriteAsset asset = null;
        while (true) {
            asset = writeQueue.Dequeue ();
            if (asset != null) {
                // File.WriteAllText (this.patchWritePath, asset.target);
                Directory.CreateDirectory (Path.GetDirectoryName (asset.targetFile));
                if (asset.targetFile.EndsWith ("map")) {
                    File.WriteAllBytes (asset.targetFile, Utils.Decompress(asset.content));
             	} else {
                    File.WriteAllBytes (asset.targetFile, asset.content);
             	}
                asset.content = null;
                remainCount = remainCount - 1;
            } else {
                if (remainCount <= 0) {
                    writeQueue = new SegmentQueue<XmlWriteAsset> ();
                    TimerManager.GetInstance ().AddTimerTask (new TimerTask (100, this.DownLoadVersionJson));
                    break;
                } else {
                    Thread.Sleep (30);
                    continue;
                }
            }
            asset = null;
        }
    }
    

    private void OnLastVersionDownloadedFailed (string msg) {
        ctx.AlertWindow.Hide ();
        int length = 45;
        if (msg.Length < 45) {
            length = msg.Length - 1;
        }
        Log.Info ("下载version.json失败:" + msg.Substring (0, length));
        ctx.LoadingPage.Show ("下载version.json失败，请尝试重开游戏");
    }

    private void OnSumbitClick () {
        ctx.AlertWindow.Hide ();
        GotoDownLoad();
    }

    private void SetTxt () {
        float tsize = (float)size / 1024 / 1024 * 0.7f;
        tsize = (int)(tsize * 100);
        tsize = (float)tsize / 100f;

        float nrSize = receiveSize + GetLoadingSize(request1) + GetLoadingSize(request2) + GetLoadingSize(request3) + GetLoadingSize(request4) + GetLoadingSize(request5);
        float rsize = (float)nrSize / 1024 / 1024 * 0.7f;
        rsize = (int)(rsize * 100);
        rsize = (float)rsize / 100f;
        float p = (int)(rsize * 100 / tsize);
        ctx.LoadingPage.Progress (string.Format ("下载更新文件 {0}M/{1}M", rsize.ToString("0.00"), tsize), p);
    }

    private int GetLoadingSize(RequestInfo requestInfo) {
        if (requestInfo == null || requestInfo.www == null) {
            return 0;
        }
        int total = Convert.ToInt32(xmlHandler.assetDict[requestInfo.args].Size);
        return (int)(total * requestInfo.www.progress);
    }

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
            // if (files[i].FullName.EndsWith ("map")) {
            //     Utils.Decompress (files[i].FullName, target.FullName + Path.DirectorySeparatorChar + files[i].Name);
            // } else {
            //     File.Copy (files[i].FullName, target.FullName + Path.DirectorySeparatorChar + files[i].Name, true);
            // }
            if (!files[i].FullName.EndsWith ("base_setting.json") && !files[i].FullName.EndsWith ("version.json")) {
                File.Copy (files[i].FullName, target.FullName + Path.DirectorySeparatorChar + files[i].Name, true);
            }
        }
        DirectoryInfo[] dirs = source.GetDirectories ();
        for (int j = 0; j < dirs.Length; j++) {
            Cover (dirs[j].FullName, target.FullName + Path.DirectorySeparatorChar + dirs[j].Name);
        }
    }
}


class LocalVersionHandler {

    private string resPath = null;
    private string tmpPath = null;

    public Dictionary<string, VersionAsset> assetDict = null;
    public Dictionary<string, VersionAsset> localDict = null;
    public VersionReader localVersionReader = null;


    public int dSize = 0;

    public LocalVersionHandler (string resRoot, string temPath, Dictionary<string, VersionAsset> dict) {
        this.resPath = resRoot + "/version.json";
        this.tmpPath = temPath;
        this.assetDict = dict;
    }

    public void Load () {
        if (localVersionReader == null) {
            localVersionReader = new VersionReader (false, this.resPath);
            localDict = localVersionReader.dict;
        } else {
            Log.Error("不可以重重加载local version文件");
        }
    }

    public Queue<VersionAsset> Difference (string lastFile) {
        Queue<VersionAsset> diffList = new Queue<VersionAsset> ();
        string filePath = null;
        foreach (VersionAsset aAsset in this.assetDict.Values) {
            string target = aAsset.Target;
            filePath = this.tmpPath + "/update_patch/" + aAsset.PatchVersion + "/" + aAsset.Target;
            if (!target.EndsWith ("lua")) {
                if (localDict.ContainsKey (target)) {
                    if (!aAsset.Md5.Equals (localDict[target].Md5)) {
                        if (!File.Exists (filePath)) {
                            dSize = dSize + Convert.ToInt32 (aAsset.Size);
                            diffList.Enqueue (aAsset);
                        } else {
                            if (lastFile != null && target.Equals (lastFile)) {
                                dSize = dSize + Convert.ToInt32 (aAsset.Size);
                                diffList.Enqueue (aAsset);
                            }
                        }
                    }
                } else {
                    if (!File.Exists (filePath)) {
                        dSize = dSize + Convert.ToInt32 (aAsset.Size);
                        diffList.Enqueue (aAsset);
                    } else {
                        if (lastFile != null && target.Equals (lastFile)) {
                            dSize = dSize + Convert.ToInt32 (aAsset.Size);
                            diffList.Enqueue (aAsset);
                        }
                    }
                }
            }
        }
        return diffList;
    }
}

public class XmlWriteAsset {
    public string targetFile = null;
    public string target = null;
    public byte[] content = null;
}
