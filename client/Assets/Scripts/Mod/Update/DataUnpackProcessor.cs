using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;

/// <summary>
/// 首次启动
/// 解压缩data类型资源处理
/// 从安装包里面解压出来
/// </summary>
public class DataUnpackProcessor {

    private VersionReader reader = null;
    private Action completedAction = null;
    private GameContext ctx = null;
    private Queue<VersionAsset> assetList = new Queue<VersionAsset> ();
    private LoadingPagePatch loadingPage = null;
    private int count = 0;

    public DataUnpackProcessor (VersionReader reader, Action completedAction) {
        this.reader = reader;
        this.completedAction += completedAction;
        this.ctx = GameContext.GetInstance ();
        this.loadingPage = this.ctx.LoadingPage;

        foreach (VersionAsset asset in reader.dict.Values) {
            if (asset.Target.StartsWith ("data") || asset.Target.EndsWith("version.json")) {
                assetList.Enqueue(asset);
            }
        }
        this.count = assetList.Count;
    }

    public void DealUnPack () {
        this.loadingPage.Progress (string.Format ("正在解压资源（仅首次游戏需要,不消耗流量）(0/{0})", this.count), 0);
        unpack ();
    }

    private void unpack () {
        if (assetList.Count > 0) {
            VersionAsset asset = assetList.Dequeue ();
            LoadTask task = new LoadTask (asset.Target, OnUnpackCompleted);
            task.customStr = asset.Origin;
            task.useRandom = false;
            ctx.AssetBundleManager.LoadFromStreaming (task);
        } else {
            if (completedAction != null) {
                completedAction ();
            }
        }
    }

    private void OnUnpackCompleted (LoadTask task) {
        int length = assetList.Count;
        float p = ((float)(this.count - length) / this.count) * 100;
        this.loadingPage.Progress (string.Format ("正在解压资源（仅首次游戏需要,不消耗流量）({0}/{1})", (this.count - length), this.count), p);
        string path = ctx.ResourcesPath + "/" + task.path;
        Directory.CreateDirectory (Path.GetDirectoryName (path));
        if (task.path.StartsWith ("data")) {
            Utils.Decompress (task.www.bytes, path);
        } else {
            File.WriteAllBytes (path, task.www.bytes);
        }
        task.www.Dispose ();
        task.www = null;
        unpack ();
    }
}
