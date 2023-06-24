using System;
using System.IO;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using UnityEngine;

public class AssetBundleManager : MonoBehaviour {

    private Dictionary<string, AssetBundleBase> AllAssetCache = new Dictionary<string, AssetBundleBase> ();
    // 已加载资源
    private List<AssetBundleInfo> DownloadAssets = new List<AssetBundleInfo> ();
    // 正在下载资源
    private List<AssetBundleInfo> CurrentAssets = new List<AssetBundleInfo> ();
    // 需要下载资源
    private List<AssetBundleInfo> QueueAssets = new List<AssetBundleInfo> ();
    // 正在下载资源(显示进度)
    private AssetBundleInfo CurrentLoadingAsset = null;
    // 下载线程数
    private int MaxThread = 4;

    protected float mTimeInterval = 0.5f;

    // 随机数
    private System.Random random = new System.Random ();

    void Start () {
        // base.InvokeRepeating ("OnAssetManagerTimer", 2f, this.mTimeInterval);
        base.StartCoroutine (UpdateAssets ());
    }

    private IEnumerator UpdateAssets () {
        while (true) {
            int index = 0;
            while (this.DownloadAssets.Count > index) {
                AssetBundleInfo asset = this.DownloadAssets[index];
                if (asset == null) {
                    this.DownloadAssets.RemoveAt (index);
                } else {
                    if (asset.RefCount > 0) {
                        index++;
                        continue;
                    } else {
                        asset.UnLoad (false);
                        this.DownloadAssets.RemoveAt (index);
                        asset.Reset ();
                        asset = null;
                    }
                }
            }
            // yield return new WaitForSeconds (0.05f);
            yield return null;
            yield return null;
            yield return null;
        }
    }

    public void LoadVersionInfo (Dictionary<string, bool> dict) {
        string file = GameContext.GetInstance().ResourcesPath + "/version.json";

        //Debug.Log("wang ==> LoadVersionInfo  ==> " + file);

        VersionReader reader = new VersionReader (false, file);
        foreach (VersionAsset asset in reader.dict.Values) {
            AssetBundleBase assetBase = new AssetBundleBase();
            assetBase.SourcePath = asset.Origin;

            //Debug.Log("wang ==> LoadVersionInfo  ==> " + assetBase.SourcePath);

            assetBase.Depends = new string [] { };
            assetBase.Realpath = asset.Target;
            assetBase.Hash = asset.Md5;
            assetBase.Size = asset.Size;
            if (dict.ContainsKey (assetBase.Realpath)) {
                assetBase.ResType = AssetBundleBase.LOCAL;
            } else {
                assetBase.ResType = AssetBundleBase.STREAMING;
            }
            AllAssetCache.Add (assetBase.SourcePath, assetBase);
        }
    }

    public void UpdateAssetType (string originPath, int type) {
        if (AllAssetCache.ContainsKey (originPath)) {
            AllAssetCache[originPath].ResType = type;
        }
    }

    public void ScanLocalDir (Dictionary<string, bool> dict, string path, DirectoryInfo dir) {
        FileInfo[] files = dir.GetFiles ();
        DirectoryInfo[] dirs = dir.GetDirectories ();
        foreach(FileInfo file in files) {
            dict.Add (path + file.Name, true);
        }
        foreach(DirectoryInfo dirInfo in dirs){
            ScanLocalDir (dict, path + dirInfo.Name + "/", dirInfo);
        }
    }

    public AssetBundleInfo GetAssetBundle (string file, int loadType, AssetBundleType assetType, Action<AssetBundleInfo> func) {
        if (!AllAssetCache.ContainsKey (file)) {
            Debug.LogError (string.Format("ResourcesManager.RequestAssetBundle无法处理非托管的资源文件(建议使用WWWLoader进行加载): {0}", file));
            return null;
        }
        AssetBundleBase assetBase = AllAssetCache[file];
        assetBase.LoadType = loadType;
        AssetBundleInfo assetInfo = this.FindAsset (DownloadAssets, assetBase.SourcePath);
        if (assetInfo != null) {
            assetInfo.RefCount++;
            if (func != null) {
                func (assetInfo);
            }
            return assetInfo;
        }
        assetInfo = this.FindAsset (QueueAssets, assetBase.SourcePath);
        if (assetInfo != null) {
            assetInfo.RefCount++;
            assetInfo.OnLoadCompleteHandler += func;
            return assetInfo;
        }
        assetInfo = this.CreateAsset (assetBase);
        assetInfo.RefCount++;
        assetInfo.OnLoadCompleteHandler += func;
        assetInfo.AssetType = assetType;
        if (this.CurrentAssets.Count < this.MaxThread) {
            this.CurrentAssets.Add (assetInfo);
            this.CurrentLoadingAsset = assetInfo;
            assetInfo.BeginDownLoad ();
        }
        this.QueueAssets.Add (assetInfo);
        return assetInfo;
    }

    public void OnAssetDownloaded (AssetBundleInfo asset) {
        AssetBundleInfo assetInfo = this.FindAsset (this.QueueAssets, asset.SourcePath);
        if (assetInfo != null) {
            this.QueueAssets.Remove (assetInfo);
        }
        this.CurrentAssets.Remove(asset);
        if (!this.DownloadAssets.Contains (asset)) {
            this.DownloadAssets.Add (asset);
        }

        assetInfo = null;
        if (this.QueueAssets.Count > 0 && this.CurrentAssets.Count < this.MaxThread) {
            foreach (AssetBundleInfo info in this.QueueAssets) {
                bool isLoading = false;
                foreach (AssetBundleInfo cinfo in this.CurrentAssets) {
                    if (info.SourcePath.Equals (cinfo.SourcePath)) {
                        isLoading = true;
                        break;
                    }
                }
                if (!isLoading) {
                    assetInfo = info;
                    break;
                }
            }
        }
        if (assetInfo != null) {
            this.CurrentAssets.Add (assetInfo);
            this.CurrentLoadingAsset = assetInfo;
            assetInfo.BeginDownLoad ();
        } else {
            this.CurrentLoadingAsset = null;
        }
        // if (this.QueueAssets.Count > 0 && this.CurrentAssets.Count < this.MaxThread) {
        //     assetInfo = this.QueueAssets[0];
        //     this.CurrentAssets.Add (assetInfo);
        //     this.CurrentLoadingAsset = assetInfo;
        //     assetInfo.BeginDownLoad ();
        // } else {
        //     this.CurrentLoadingAsset = null;
        // }
    }

    public AssetBundleInfo FindAsset (List<AssetBundleInfo> list, string path) {
        AssetBundleInfo assetInfo = null;
        int count = list.Count;
        for (int i = 0; i < count; i++) {
            assetInfo = list[i];
            if (assetInfo.SourcePath == path) {
                return assetInfo;
            }
        }
        return null;
    }

    private AssetBundleInfo CreateAsset (AssetBundleBase assetBase) {
        AssetBundleInfo assetInfo = new AssetBundleInfo ();
        assetInfo.SourcePath = assetBase.SourcePath;
        assetInfo.Realpath = assetBase.Realpath;
        assetInfo.Hash = assetBase.Hash;
        assetInfo.Size = assetBase.Size;
        assetInfo.LoadType = assetBase.LoadType;
        assetInfo.RefCount = 0;
        assetInfo.ResType = assetBase.ResType;
        return assetInfo;
    }

    public AssetBundleInfo GetDownloadAsset (string file) {
        AssetBundleInfo assetInfo = this.FindAsset (DownloadAssets, file);
        return assetInfo;
    }

    /// <summary>
    /// 更新下载信息
    /// </summary>
    // private void OnAssetManagerTimer () {

    // }

    /// <summary>
    /// 本地读取，判断是从Streaming中还是local目录中读取
    /// </summary>
    /// <param name="task"></param>
    public void LoadFromCache (LoadTask task) {
        LoadFromLocal (task);
    }

    public void LoadFromLocal (LoadTask task) {
        task.root = "file:///" + GameContext.GetInstance().ResourcesPath;
        LoadFile (task);
    }

    public void LoadFromRemote (LoadTask task) {
        task.root = GameContext.GetInstance ().RemotePath;
        LoadFile (task);
    }

    public void LoadFromStreaming (LoadTask task) {
#if UNITY_ANDROID
        task.root =  Application.streamingAssetsPath;
#else
        if (GameContext.GetInstance ().Editor) {
            task.root = "file:///" + GameContext.GetInstance ().EditorResPath;
        } else {
            task.root = "file:///" + Application.streamingAssetsPath;
        }
        // task.root =  Application.streamingAssetsPath;
#endif
        LoadFile (task);
    }

    public void LoadFile (LoadTask loadTask) {
        base.StartCoroutine (w3LoadFile (loadTask));
    }
    private IEnumerator w3LoadFile(LoadTask loadTask) {
        string path = loadTask.root + "/" + loadTask.path;
        if (loadTask.useRandom) {
            path = path + "?random=" + random.Next (1000);
        }
        // Debug.Log ("======w3LoadFile:" + path);
        loadTask.www = new WWW (path);
        yield return loadTask.www;

        if (null != loadTask.www.error) {
            if (null != loadTask.FailureCallback) {
                try {
                    loadTask.FailureCallback (loadTask.www.error);
                } catch (Exception e) {
                    Log.Error (path + "回调函数fail执行异常:" + e.Message);
                }  finally {
                    loadTask.www.Dispose ();
                }
            } else {
                Debug.LogError (string.Format ("文件加载失败 {0}，原因: {1}", path, loadTask.www.error));
            }
        } else {
            if (null != loadTask.CompletedCallback) {
                try {
                    loadTask.CompletedCallback (loadTask);
                } catch (Exception e) {
                    Log.Error (path + "回调函数succe执行异常:" + e.Message);
                }
            }
        }
    }
}

public class LoadTask {
    public string root = null;
    public string path = null;
    public string customStr = null;
    public WWW www = null;
    public Action<LoadTask> CompletedCallback = null; 
    public Action<string> FailureCallback = null;
    public bool useRandom = false;

    public LoadTask (string path, Action<LoadTask> CompletedCallback, Action<string> FailureCallback = null) {
        this.path = path;
        this.CompletedCallback = CompletedCallback;
        this.FailureCallback = FailureCallback;
    }

    public LoadTask (string root, string path, Action<LoadTask> CompletedCallback, Action<string> FailureCallback = null) {
        this.root = root;
        this.path = path;
        this.CompletedCallback = CompletedCallback;
        this.FailureCallback = FailureCallback;
    }
}
