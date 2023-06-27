using SLua;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

[CustomLuaClass]
public class AssetBundleInfo {
    // 源文件
    public string SourcePath { get; set; }
    // 真实位置
    public string Realpath { get; set; }
    // 依赖的文件
    public string[] Depends { get; set; }
    // 目标文件hash
    public string Hash { get; set; }
    // 资源文件尺寸
    public string Size { get; set; }
    // 资源类型 1:Local 2:Streaming 3:Remote
    public int ResType { get; set; }
    // 加载类型 1：www; 2:LoadFromCacheOrDownload
    public int LoadType { get; set; }

    public AssetBundle mAssetBundle { get; set; }
    public int RefCount { get; set; }
    public WWW www { get; set; }

    public Action<AssetBundleInfo> OnLoadCompleteHandler;

    public bool IsDispose = false;
    public bool IsUnload = false;
    public bool dResult = true;
    public bool IsDone = false;

    public AssetBundleType AssetType = AssetBundleType.MainAsset;

    public void BeginDownLoad () {
        GameContext.GetInstance ().AssetBundleManager.StartCoroutine (DownLoad ());
    }

    private IEnumerator DownLoad () {
        if (this.www != null) {
            this.UnLoad (false);
            this.www = null;
        }
        string downUrl = null;
        if (ResType == AssetBundleBase.LOCAL) {
            downUrl = "file:///" + GameContext.GetInstance ().ResourcesPath + "/" + Realpath;
        } else {
#if UNITY_ANDROID
            downUrl = Application.streamingAssetsPath + "/" + Realpath;
#else
            if (GameContext.GetInstance ().Editor) {
                downUrl = "file:///" + GameContext.GetInstance ().EditorResPath + "/" + Realpath;

            } else {
                downUrl = "file:///" + Application.streamingAssetsPath + "/" + Realpath;
            }
#endif
        }
        if (LoadType == AssetRequestObj.LoadTypeCashe) {
            this.www = WWW.LoadFromCacheOrDownload (downUrl, Convert.ToInt32 (GameContext.GetInstance ().ResVersion.Substring (4, 8)));
        } else {
            this.www = new WWW (downUrl);
        }
        yield return this.www;

        if (this.www.isDone) {
            if (!string.IsNullOrEmpty (this.www.error)) {
                Debug.LogError (string.Format ("资源加载失败 {0}，原因: {1}", SourcePath, this.www.error));
            }
            try {
                GameContext.GetInstance ().AssetBundleManager.OnAssetDownloaded (this);
                this.IsDone = true;
                if (AssetType == AssetBundleType.DepAsset) {
                    if (mAssetBundle != null) {
                        mAssetBundle.Unload(false);
                    }
                    mAssetBundle = this.www.assetBundle;
                    IsUnload = false;
                }
                if (OnLoadCompleteHandler != null) {
                    OnLoadCompleteHandler (this);
                }
            } catch (Exception e) {
                Debug.LogException (e);
                Log.Error ("AssetBundleDownLoad Exception:" + e.Message);
            }
        }
    }

    public void UnLoad (bool unloadAllLoadedObjects) {
        if (!IsUnload && assetBundle != null) {
            assetBundle.Unload (unloadAllLoadedObjects);
            mAssetBundle = null;
            IsUnload = true;
        }
        if (!IsDispose) {
            if (this.www != null) {
                this.www.Dispose ();
                this.www = null;
            }
            IsDispose = true;
        }
    }

    public void Reset () {
        GameContext.GetInstance ().AssetBundleManager.StopCoroutine(DownLoad ());
        RefCount = 0;
        IsDispose = false;
        IsUnload = false;
    	dResult = true;
    	IsDone = false;
        mAssetBundle = null;
        OnLoadCompleteHandler = null;
        www = null;
    }

    public void DescRefCount () {
        if (RefCount > 0) {
            RefCount--;
        }
    }

    // public Texture GetTexture () {
    //     if (this.www == null) {
    //         return null;
    //     }
    //     return this.www.texture;
    // }

    private AssetBundle assetBundle {
        get {
            if (this.www == null) {
                return null;
            }
            if (!string.IsNullOrEmpty (this.www.error)) {
                return null;
            }
            try {
                if (mAssetBundle == null) {
                    mAssetBundle = this.www.assetBundle;
                    IsUnload = false;
                }
                return mAssetBundle;
            } catch (Exception exception) {
                Debug.LogException (exception);
                return null;
            }
        }
    }

    public UnityEngine.Object GetMainAsset () {
        if (assetBundle != null) {
            return assetBundle.mainAsset;
        } else {
            return null;
        }
    }

    public Texture GetTexture () {
        return GetAsset<Texture> ();
    }
    public object[] GetTextures()
    {
        IsUnload = false;
        return assetBundle.LoadAll();
    }

    public Material GetMaterial () {
        return GetAsset<Material> ();
    }

    public RenderTexture GetRanderTexture () {
        return GetAsset<RenderTexture> ();
    }

    public RuntimeAnimatorController GetAnimatorController () {
        return GetAsset<RuntimeAnimatorController> ();
    }

    public GameObject GetPrefab () {
        return GetAsset<GameObject> ();
    }

    public AudioSource GetAudioSource () {
        var obj = GetAsset<GameObject> ();
        return (null == obj) ? null : obj.GetComponent<AudioSource> ();
    }

    public Sprite GetSprite (string subFile) {
        return GetAsset<Sprite> (subFile);
    }

    public UnityEngine.Object GetSubAsset (string subFile) {
        IsUnload = false;
        return assetBundle.Load (subFile);
    }

    public T GetAsset<T> (string subFile = null) where T : class {
        if (null == subFile) {
            T ret = assetBundle.mainAsset as T;
            IsUnload = false;
            return ret;
        } else {
            IsUnload = false;
            return assetBundle.Load (subFile, typeof (T)) as T;
        }
    }
}

public enum AssetBundleType {
    MainAsset = 1
    ,DepAsset = 2
}
