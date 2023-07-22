using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;

using UnityEngine;

using SLua;

public class LuaSrvManager {

    private static LuaSrvManager instance = null;

    private LuaSvr luaSrv = null;
    private LuaState luaState = null;
    public LuaState LuaState { get { return luaState; } }
    
    private Regex nameRegex = new Regex (@"\/?(\w+)$");

    private LuaSrvManager () {
        luaSrv = new LuaSvr ();
    }

    public static LuaSrvManager GetInstance () {
        if (instance == null) {
            instance = new LuaSrvManager ();
        }
        return instance;
    }

    public void Initialize (Action<int> cProgress, Action cComplete) {
        luaSrv.init (cProgress, () => { OnLuaSrvInitComplete (); cComplete (); });
    }

    private void OnLuaSrvInitComplete () {
        if (!luaSrv.inited) {
            return;
        }

        if (luaSrv.luaState == null) {
            Debug.LogError ("不可以初始化LuaState");
        }

        LuaState.loaderDelegate = ((string fn) => {
            //获取Lua文件执行目录
            string file_path = "";
#if UNITY_EDITOR
            if (fn.StartsWith ("data")) {
                file_path = Directory.GetCurrentDirectory () + "/../data/lua/" + fn.Replace("data/", "") + ".lua";
            } else {
                file_path = Directory.GetCurrentDirectory () + "/../lua/" + fn + ".lua";
            }
#elif UNITY_ANDROID
            file_path = GameContext.GetInstance ().ResourcesPath + "/lua/" + fn.ToLower () + ".lua";
#elif UNITY_IOS
            file_path = GameContext.GetInstance ().ResourcesPath + "/lua/" + fn.ToLower () + ".lua";
#else
            if (GameContext.GetInstance ().Editor) {
                if (fn.StartsWith ("data")) {
            	    file_path = Directory.GetCurrentDirectory () + "/../data/lua/" + fn.Replace("data/", "") + ".lua";
            	} else {
            	    file_path = Directory.GetCurrentDirectory () + "/../lua/" + fn + ".lua";
            	}
            } else {
                file_path = GameContext.GetInstance ().ResourcesPath + "/lua/" + fn.ToLower () + ".lua";
            }
#endif
#if UNITY_EDITOR
            return File.ReadAllBytes (file_path);
            // if (fn.StartsWith("data")) {
            //     return File.ReadAllBytes (file_path);
            // } else {
            //     byte [] bytes = GameContext.GetInstance ().LuaAssetLoader.GetAsset (GetFileName(fn));
            //     // Debug.Log ("====================" + fn + "<>" + System.Text.Encoding.UTF8.GetString(bytes));
            //     if (fn.Contains ("tree_button")) {
            //         Debug.Log ("====================" + fn + "<>" + System.Text.Encoding.UTF8.GetString(bytes));
            //     }
            //     return bytes;
            // }
            // return GameContext.GetInstance ().LuaAssetLoader.GetAsset (GetFileName(fn));
#else
            return GameContext.GetInstance ().LuaAssetLoader.GetAsset (fn, GetFileName(fn));
            // return Utils.Decompress (File.ReadAllBytes (file_path));
#endif
        });
        SetupLuaPackagePath ();
        this.luaState = luaSrv.luaState;
    }

    private void SetupLuaPackagePath () {
        // string luaPath = Directory.GetCurrentDirectory () + "/../lua/";
#if UNITY_EDITOR
        string luaPath = Directory.GetCurrentDirectory () + "/../lua/";
#elif UNITY_ANDROID
        string luaPath = GameContext.GetInstance().ResourcesPath + "/lua/";
#elif UNITY_IOS
        string luaPath = GameContext.GetInstance().ResourcesPath + "/lua/";
#else
        string luaPath = GameContext.GetInstance().ResourcesPath + "/lua/";
#endif
        string strSlash = Path.DirectorySeparatorChar.ToString ();
        string strPkgAffix = luaPath + "?.lua";
        string strPkgPath = (string)luaSrv.luaState["package.path"];
        strPkgPath = strPkgPath + ";" + strPkgAffix;
        luaSrv.luaState["package.path"] = strPkgPath;
    }

    public void SetupFiles () {
// #if UNITY_EDITOR
//         string luaPath = Directory.GetCurrentDirectory () + "/../lua/";
// #elif UNITY_ANDROID
//         string luaPath = GameContext.GetInstance ().ResourcesPath + "/lua/";
// #elif UNITY_IOS
//         string luaPath = GameContext.GetInstance ().ResourcesPath + "/lua/";
// #else
//         string luaPath = GameContext.GetInstance ().ResourcesPath + "/lua/";
// #endif

        // DirectoryInfo dir = new DirectoryInfo (luaPath);
        // luaPath = dir.ToString();
        // luaPath = luaPath.Replace ("\\", "/");

        GameContext ctx = GameContext.GetInstance ();
        string versionFile = ctx.ResourcesPath + "/version.json";
        Debug.Log("版本文件是：" + versionFile);
        VersionReader versionReader = new VersionReader (true, versionFile);
        string module = "";
        try {
            luaState.doString ("require('base/setupfiles')");
            if (!ctx.NeedLoadLua) {
                return;
            }
            List<VersionAsset> versionList = versionReader.list;
            foreach (var item in versionReader.list) {
                string file = item.Target;
                if (!file.EndsWith ("lua") || !file.StartsWith("lua/")) {
                    continue;
                }
                file = file.Substring (4);
                module = file.Replace (".lua", "");
                // 需要跳过的文件
                if (module.StartsWith ("base")) {
                    continue;
                }
                 Debug.Log(string.Format("初始化lua模块: {0}", module));
                luaState.doString(string.Format ("require('{0}')", module));
            }
        } catch (Exception e) {
            string source = (string.IsNullOrEmpty (e.Source)) ? "[no source]" : e.Source.Substring (0, e.Source.Length - 2);
            Log.Error(string.Format ("{0}读取失败 {1}\nLua (at {2})", module, e.Message, source));
            Debug.LogException (e);
        }

        if (GameContext.GetInstance ().Editor) {
            // SetupLuaData ();
        } else {
#if UNITY_EDITOR
            // SetupLuaData ();
#endif
        }
    }

    /// <summary>
    /// 开发环境特殊处理
    /// </summary>
    private void SetupLuaData () {
        string luaPath = Directory.GetCurrentDirectory () + "/../data/lua/";
        DirectoryInfo dir = new DirectoryInfo (luaPath);
        luaPath = dir.ToString();
        luaPath = luaPath.Replace ("\\", "/");
        try {
            // luaState.doString ("require('base/setupfiles')");
            foreach (var item in Utils.GetFilesRecursive (luaPath)) {
                string file = item.Replace ("\\", "/");
                if (!file.EndsWith ("lua")) {
                    continue;
                }
                string module = file.Replace (luaPath, "").Replace (".lua", "");
                // 需要跳过的文件
                if (module.StartsWith ("base")) {
                    continue;
                }
                // Debug.Log(string.Format("初始化lua模块: {0}", module));
                luaState.doString(string.Format ("require('{0}')", "data/" + module));
            }
        } catch (Exception e) {
            string source = (string.IsNullOrEmpty (e.Source)) ? "[no source]" : e.Source.Substring (0, e.Source.Length - 2);
            Debug.LogError(string.Format ("{0}\nLua (at {1})", e.Message, source));
        }
    }

    private string GetFileName(string path) {
        return nameRegex.Match(path).Groups[1].Value;
    }
}

