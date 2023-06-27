using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;

using UnityEngine;

using SLua;

[CustomLuaClass]
public class CSSubpackageManager {

public static bool isSubpackage = true;

    private static CSSubpackageManager instance = null;
    private bool needDownload = true;
    private GameContext ctx = null;
    private Action completedAction = null;
    private VersionSortReader reader = null;
    private string subpackVersion = null;

    private Dictionary<string, bool> localDict = null; // 本地文件信息
    private Dictionary<string, VersionSortAsset> subDict = new Dictionary<string, VersionSortAsset> (); // 子包需要下载内容
    private List<VersionSortAsset> subList = new List<VersionSortAsset> ();
    private List<VersionSortAsset> optimalList = new List<VersionSortAsset> (); // 优先下载列表
    private VersionSortAsset loadingAsset = null; // 当前下载的资源
    private int totalCount = 0;

    public Action<int, int> progressUpdateEvent = null;
    public Action completeEvent = null;

    public int tryCount = 10;

    private SubpackageStatus status = SubpackageStatus.Init;

    private Thread writeThread = null;
    private SegmentQueue<SubWriteAsset> writeQueue = new SegmentQueue<SubWriteAsset> ();

    private CSSubpackageManager () {
        ctx = GameContext.GetInstance ();
        string flagFile = ctx.ResourcesPath + "/subpackage_flag.tag";
        if (File.Exists (flagFile)) {
            needDownload = false;
        }

        if (!isSubpackage) {
            needDownload = false;
        }
    }

    public static CSSubpackageManager GetInstance () {
        if (instance == null) {
            instance = new CSSubpackageManager ();
        }
        return instance;
    }

    // 是否还需要下载文件
    public bool NeedDownload {
        get { return needDownload; }
        set { needDownload = value; }
    }

    // 是否是分包
    public bool IsSubpackage {
        get { return isSubpackage; }
        set { isSubpackage = value; }
    }

    public int GetTotal () {
        return totalCount;
    }

    public int GetRemain () {
        return subList.Count;
    }

    public void AddProgressEvent (Action<int, int> action) {
        progressUpdateEvent += action;
    }

    public void AddCompleteEvent (Action action) {
        completeEvent += action;
    }

    public void Init (Action completedAction, Dictionary<string, bool> localDict) {
        this.localDict = localDict;
        if (needDownload) {
            this.completedAction = completedAction;
            LoadTask task = new LoadTask ("subpackage.json", OnCompleted, OnFailure);
            task.useRandom = false;
            ctx.AssetBundleManager.LoadFromStreaming (task);
        } else {
            completedAction ();
        }
    }

    public void StartDownload () {
        if (status == SubpackageStatus.Init && needDownload) {
            status = SubpackageStatus.Loading;
            ContinueDownload ();
        }
    }

    public void StartDownloadOnPause () {
        if (status == SubpackageStatus.Pause && needDownload) {
            status = SubpackageStatus.Loading;
            ContinueDownload ();
        }
    }

    public bool HaveSubpackageFile (LuaTable table) {
        foreach (LuaTable.TablePair file in table) {
            if (HaveSubpackageFileSingle ((string)file.value)) {
                return true;
            }
        }
        return false;
    }

    public bool HaveSubpackageFileSingle (string path) {
        if (subDict.ContainsKey (path) && subDict[path].status != 3) {
            return true;
        } else {
            return false;
        }
    }

    public void AddOptimalFile (LuaTable table) {
        foreach (LuaTable.TablePair file in table) {
            string key = (string)file.value;
            if (subDict.ContainsKey (key)) {
                VersionSortAsset asset = subDict[key];
                if (loadingAsset == null || !asset.Target.Equals (loadingAsset.Target)) {
                    if (!optimalList.Contains (asset) && asset.status == 1) {
                        optimalList.Add (asset);
                    }
                }
            }
        }
    }

    private void ContinueDownload () {
        if (status == SubpackageStatus.Loading) {
            if (optimalList.Count > 0) {
                // status = SubpackageStatus.Init;
                VersionSortAsset asset = optimalList[0];
                loadingAsset = asset;
                Download (asset.Target, asset.Target);
            } else if (subList.Count > 0) {
                // status = SubpackageStatus.Init;
                VersionSortAsset asset = subList[0];
                loadingAsset = asset;
                Download (asset.Target, asset.Target);

            // } else {
            // CreateFlagFile ();
            // needDownload = false;
            }
        }
    }

    private void Download (string realPath, string target) {
        string url = GameContext.GetInstance ().SubpackPath + "/" + this.subpackVersion + "/" + realPath + "?version=" + this.subpackVersion;
        RequestInfo requestInfo = new RequestInfo ();
        requestInfo.useRandom = false;
        requestInfo.path = url;
        requestInfo.args = target;
        requestInfo.succeCallback = DownloadCompleted;
        requestInfo.failCallback = DownloadFail;
        requestInfo.alertTxt = "";
        requestInfo.tryCount = tryCount;
        HttpRequest request = new HttpRequest (requestInfo);
        request.Download ();
    }

    private void DownloadCompleted (WWW www, string target) {
        VersionSortAsset asset = null;
        for (int i = 0; i < subList.Count; i++) {
            if (subList[i].Target.Equals (target)) {
                asset = subList[i];
            }
        }
        if (asset != null) {
            string targetFile = ctx.ResourcesPath + "/" + target;
            SubWriteAsset writeAsset = new SubWriteAsset ();
            writeAsset.targetFile = targetFile;
            writeAsset.content = www.bytes;
            writeAsset.asset = asset;
            www.Dispose ();
            subDict[asset.Origin].status = 2;
            subList.Remove(asset);
            if (optimalList.Contains (asset)) {
        	    optimalList.Remove (asset);
        	}
            writeQueue.Enqueue (writeAsset);
            if (progressUpdateEvent != null) {
                progressUpdateEvent (GetTotal (), GetRemain ());
            }
            if (GetRemain () == 0 && completeEvent != null) {
                completeEvent();
            }
            loadingAsset = null;
            ContinueDownload ();
        } else {
            Log.Error ("Subpackage找不到源下载资源:" + target);
            // ContinueDownload ();
        }
    }

    private void WriteFile () {
        SubWriteAsset asset = null;
        while (true) {
            asset = writeQueue.Dequeue ();
            if (asset != null) {
        	    Directory.CreateDirectory (Path.GetDirectoryName (asset.targetFile));
            	File.WriteAllBytes (asset.targetFile, asset.content);
                asset.asset.status = 3;
            	ctx.AssetBundleManager.UpdateAssetType (asset.asset.Origin, AssetBundleBase.LOCAL);
                asset.content = null;
            } else {
                if (subList.Count == 0 && optimalList.Count == 0) {
                    // 打标志
                    writeQueue = new SegmentQueue<SubWriteAsset> ();
                    CreateFlagFile ();
            	    needDownload = false;
                    break;
                } else {
                    Thread.Sleep (30);
                	continue;
                }
            }
            asset = null;
        }
    }

    private void DownloadFail (string msg) {
        loadingAsset = null;
        Log.Error("下载Subpackage文件失败:" + msg);
        status = SubpackageStatus.Init;
    	TimerManager.GetInstance ().AddTimerTask (new TimerTask (10 * 1000, StartDownload));
    }

    // 暂停
    public void PauseDownload () {
        status = SubpackageStatus.Pause;
    }


    private void OnCompleted (LoadTask task) {
        string txt = System.Text.Encoding.UTF8.GetString(Utils.Decompress (task.www.bytes));
        this.reader = new VersionSortReader (true, txt, false);
        this.subpackVersion = this.reader.subVersion;
        task.www.Dispose ();

        subList = new List<VersionSortAsset> ();
        List<VersionSortAsset> loadList = reader.list;
        totalCount = loadList.Count;
        foreach (VersionSortAsset asset in loadList) {
            // 单个lua文件不要了
            if (!localDict.ContainsKey (asset.Target) && !asset.Target.EndsWith(".lua")) {
                asset.status = 1;
                subList.Add (asset);
                subDict.Add (asset.Origin, asset);
            }
        }
        subList.Sort ();
        if (subList.Count < 1) {
            CreateFlagFile ();
            needDownload = false;
        } else {
            if (writeThread == null) {
        	    writeThread = new Thread (new ThreadStart (WriteFile));
        		writeThread.IsBackground = true;
        		writeThread.Start ();
        	}
        }
        Log.Debug ("需要下载分包文件:" + subList.Count);
        completedAction ();
    }

    private void OnFailure (string msg) {
        Log.Info ("下载subpackage.json失败:" + msg);
        needDownload = false;
        CreateFlagFile ();
        completedAction ();
    }

    private void CreateFlagFile () {
        string settingFile = ctx.ResourcesPath + "/base_setting.json";
        string flagFile = ctx.ResourcesPath + "/subpackage_flag.tag";
        // 打上标志
        File.Copy (settingFile, flagFile, true);
    }

    public string CurrentStatus () {
        switch (status) {
            case SubpackageStatus.Init:
                return "Init";
            case SubpackageStatus.Loading:
                return "Loading";
            case SubpackageStatus.Pause:
                return "Pause";
            default:
                return "Unknown";
        }
    }
}

public enum SubpackageStatus {
    Init
    ,Loading
    ,Pause
}

public class SubWriteAsset {
    public string targetFile = null;
    public byte[] content = null;
    public VersionSortAsset asset = null;
}
