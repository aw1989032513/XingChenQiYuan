using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

using SLua;


[CustomLuaClass]
public class AssetBundleBatch {

    private List<AssetBundleInfo> assetBundleList = new List<AssetBundleInfo>();

    public Action OnAllLoadedCompleteHandler;
    public Action<String> OnLoadedCompleteHandler;
    public bool IsFounded = false;
    // private bool IsClear = false;
    private bool IsClearMain = false;
    private bool IsClearDep = false;
    public void SetClearDep (bool flag) {
        this.IsClearDep = flag;
    }

    private List<AssetRequestObj> mainAssets = new System.Collections.Generic.List<AssetRequestObj> ();
    private List<AssetRequestObj> depAssets = new System.Collections.Generic.List<AssetRequestObj> ();

    public AssetBundleBatch () {
    }

    public void CreateEnd () {
        IsFounded = true;
    }
    
    public void LoadAssetBundle(LuaTable mains, LuaTable deps, Action allCompleteCallback, Action<String> oneCompleteCallback) {
        OnLoadedCompleteHandler = oneCompleteCallback;
        LoadAssetBundle(mains, deps, allCompleteCallback);
    }

    public void LoadAssetBundle(LuaTable mains, LuaTable deps, Action allCompleteCallback) {
        OnAllLoadedCompleteHandler = allCompleteCallback;
        string loadFile = null;
        int loadType = AssetRequestObj.LoadTypeWWW;
        foreach(LuaTable.TablePair file in mains) {
            LuaTable value = (LuaTable)file.value;
            loadFile = (string)value["file"];
            System.Object ltype = value["loadType"];
            if (ltype == null) {
                loadType = AssetRequestObj.LoadTypeWWW;
            } else {
                loadType = Convert.ToInt32 (ltype);
            }
            mainAssets.Add (new AssetRequestObj(loadFile, loadType));
        }
        foreach(LuaTable.TablePair file in deps) {
            LuaTable value = (LuaTable)file.value;
            loadFile = (string)value["file"];
            System.Object ltype = value["loadType"];
            if (ltype == null) {
                loadType = AssetRequestObj.LoadTypeWWW;
            } else {
                loadType = Convert.ToInt32 (ltype);
            }
            depAssets.Add (new AssetRequestObj(loadFile, loadType));
        }
        foreach (AssetRequestObj requestObj in mainAssets) {
            AssetBundleInfo assetInfo = GameContext.GetInstance ().AssetBundleManager.GetAssetBundle (requestObj.file, requestObj.loadType, AssetBundleType.MainAsset, AssetComplete);
            assetBundleList.Add (assetInfo);
        }
        foreach (AssetRequestObj requestObj in depAssets) {
            AssetBundleInfo assetInfo = GameContext.GetInstance ().AssetBundleManager.GetAssetBundle (requestObj.file, requestObj.loadType, AssetBundleType.DepAsset, AssetComplete);
            assetBundleList.Add (assetInfo);
        }
        CreateEnd ();
        CheckComplete ();
    }

    // public void LoadAssetBundle (List<string> list, Action callback) {
    //     OnAllLoadedCompleteHandler += callback;
    //     foreach(string file in list) {
    //         AssetBundleInfo assetInfo = GameContext.GetInstance ().AssetBundleManager.GetAssetBundle (file, AssetComplete);
    //         assetBundleList.Add (assetInfo);
    //     }
    //     CreateEnd ();
    // }

    public void ClearAll () {
        ClearMainAsset();
        ClearDepAsset ();
        // if (IsClear) {
        //     return;
        // }
        // int count = this.assetBundleList.Count;
        // for (int i = 0; i < count; i++) {
        //     AssetBundleInfo info = this.assetBundleList[i];
        //     if (info.RefCount > 0) {
        //         info.RefCount--;
        //     }
        // }
        // IsClear = true;
    }

    public void ClearMainAsset () {
        if (!IsClearMain) {
            int count = this.assetBundleList.Count;
            for (int i = 0; i < count; i++) {
                AssetBundleInfo info = this.assetBundleList[i];
                if (info.AssetType == AssetBundleType.MainAsset) {
                    if (info.RefCount > 0) {
                        info.RefCount--;
                    }
                }
            }
            IsClearMain = true;
        }
    }

    public void ClearDepAsset () {
        if (!IsClearDep) {
            int count = this.assetBundleList.Count;
            for (int i = 0; i < count; i++) {
                AssetBundleInfo info = this.assetBundleList[i];
                if (info.AssetType == AssetBundleType.DepAsset) {
                    if (info.RefCount > 0) {
                        info.RefCount--;
                    }
                }
            }
            IsClearDep = true;
        }
    }

    public LuaTable DepPassToPool () {
        if (IsClearDep) {
            LuaTable table = new LuaTable (LuaSrvManager.GetInstance ().LuaState);
            int count = this.assetBundleList.Count;
            int index = 0;
            for (int i = 0; i < count; i++) {
                AssetBundleInfo info = this.assetBundleList[i];
                if (info.AssetType == AssetBundleType.DepAsset) {
                    if (info.RefCount > 0) {
                        table[index] = info;
                        index++;
                    }
                }
            }
            IsClearDep = true;
            return table;
        } else {
            return null;
        }
    }

    public void AssetComplete (AssetBundleInfo asset) {
        if (OnLoadedCompleteHandler != null) {
            OnLoadedCompleteHandler (asset.SourcePath);
        }
        CheckComplete ();
    }

    public void CheckComplete () {
        if (IsFounded && IsAllComplete ()) {
            if (OnAllLoadedCompleteHandler != null) {
                OnAllLoadedCompleteHandler ();
                OnAllLoadedCompleteHandler = null;
            }
        }
    }

    private bool IsAllComplete () {
        for (int i = 0; i < assetBundleList.Count; i++) {
            AssetBundleInfo asset = this.assetBundleList[i];
            if (asset != null) {
                if (!asset.IsDone) {
                    return false;
                }
            }
        }
        return true;
    }

    public AssetBundleInfo GetAssetBundleInfo (string file) {
        int count = this.assetBundleList.Count;
        for (int i = 0; i < count; i++) {
            AssetBundleInfo info = this.assetBundleList[i];
            if (info.SourcePath.Equals (file) && info.IsDone) {
                return info;
            }
        }
        return null;
    }
} 
