using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using UnityEngine;
using UnityEngine.UI;

public class LuaAssetLoader {

    private GameContext ctx;
    private Action completedEvent;

    public AssetBundle mAssetBundle { get; set; }
    public WWW www { get; set; }

    public AssetBundle mAssetBundleData { get; set; }
    public WWW wwwData { get; set; }

    public byte[] protocal = null;
    private int count = 0;

    public LuaAssetLoader (GameContext ctx, Action action) {
        this.ctx = ctx;
        this.completedEvent += action;
    }

    public void Load () {
        count = 0;
        string file = "textures/textures_business.unity3d";
        string path = GetRoot (file);
        LoadTask task = new LoadTask (path, file, OnLoaded);
    	ctx.AssetBundleManager.LoadFile (task);

        file = "textures/textures_business_data.unity3d";
        path = GetRoot (file);
        task = new LoadTask (path, file, OnLoadedData);
    	ctx.AssetBundleManager.LoadFile (task);
    }

    private void OnLoaded (LoadTask task) {
        www = task.www;
        mAssetBundle = task.www.assetBundle;
        task.www = null;
        CheckCompleted ();
    }

    private void OnLoadedData (LoadTask task) {
        wwwData = task.www;
        mAssetBundleData = task.www.assetBundle;
        task.www = null;
        CheckCompleted ();
    }

    private void CheckCompleted () {
        count++;
        if (completedEvent != null && count == 2) {
            completedEvent ();
        }
    }

    public byte[] GetAsset (string path, string name) {
        if (path.StartsWith ("data")) {
            return GetAssetData (name);
        } else {
            return GetAssetCode (name);
        }
    }

    public byte [] GetAssetCode (string name) {
        if (mAssetBundle == null) {
            return null;
        } else {
            TextAsset file = mAssetBundle.Load (name, typeof (UnityEngine.TextAsset)) as TextAsset;
        	return file.bytes;
        }
    }

    public byte [] GetAssetData (string name) {
        if (mAssetBundleData == null) {
            if ("data_protocol".Equals (name) && (protocal != null)) {
                return (byte [])protocal.Clone ();
            } else {
                return null;
            }
        } else {
            TextAsset file = mAssetBundleData.Load (name, typeof (UnityEngine.TextAsset)) as TextAsset;
        	if ("data_protocol".Equals (name)) {
        	    protocal = (byte [])file.bytes.Clone ();
        	}
        	return file.bytes;
        }
    }

    public void Release () {
        if (mAssetBundle != null) {
            mAssetBundle.Unload (false);
            mAssetBundle = null;
        }
        if (www != null) {
            www.Dispose ();
            www = null;
        }

        if (mAssetBundleData != null) {
            mAssetBundleData.Unload (false);
            mAssetBundleData = null;
        }
        if (wwwData != null) {
            wwwData.Dispose ();
            wwwData = null;
        }
    }

    private string GetRoot (string file) {
        string root = null;
        if (File.Exists (ctx.ResourcesPath + "/" + file)) {
            root = "file:///" + ctx.ResourcesPath;
        } else {
            switch (Application.platform) {
                case RuntimePlatform.Android:
                    root = Application.streamingAssetsPath;
                    break;
                case RuntimePlatform.IPhonePlayer:
                    root = "file:///" + Application.streamingAssetsPath;
                    break;
                default:
                    if (ctx.Editor) {
                        root = "file:///" + ctx.EditorResPath;
                    } else {
                        #if UNITY_ANDROID
						        root =  Application.streamingAssetsPath;
                        #elif UNITY_IOS
						        root =  "file:///" + Application.streamingAssetsPath;
                        #elif UNITY_STANDALONE_WIN
						        root =  "file:///" + Application.streamingAssetsPath;
						#else
                                Debug.Log ("加载LoadPage,但不清楚所在平台");
                                root = ctx.RemotePath;
                        #endif
                    }
                    break;
            }
        }
        return root;
    }
}
