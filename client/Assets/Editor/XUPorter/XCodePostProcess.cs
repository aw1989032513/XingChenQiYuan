using UnityEngine;
using System.Collections.Generic;

#if UNITY_EDITOR
using UnityEditor;
using UnityEditor.Callbacks;
using UnityEditor.XCodeEditor;
#endif

public static class XCodePostProcess {
#if UNITY_EDITOR
	[PostProcessBuild(999)]
	public static void OnPostProcessBuild( BuildTarget target, string pathToBuiltProject ) {
		if (target != BuildTarget.iPhone) return;
		var project = new XCProject( pathToBuiltProject );
        var modsPath = Application.dataPath + "/../XUPorterMods/";
        var mods = new List<string>();

        // 选择版本配置，可用配置: 3kwan-ios 3kwan-ios-jailbreak
        var config = "3kwan-ios";

        mods.Add("ApiForUnity");
        project.overwriteBuildSetting("GCC_ENABLE_OBJC_EXCEPTIONS", "YES");
        project.overwriteBuildSetting("GCC_ENABLE_CPP_RTTI", "YES");

        mods.Add("ShareSDK");
        project.overwriteBuildSetting("GCC_ENABLE_OBJC_EXCEPTIONS", "YES");
        project.overwriteBuildSetting("GCC_ENABLE_CPP_RTTI", "YES");

        switch(config){
            default :
                throw new System.Exception("未知的设定");

            // 3kwan sdk for IOS(正版)
            case "3kwan-ios":
                mods.Add("3kwan-ios");
                project.overwriteBuildSetting("PRODUCT_BUNDLE_IDENTIFIER", "cn.3kwan.xcqy.com");
                project.overwriteBuildSetting("CODE_SIGN_IDENTITY", "iPhone Developer: chengfeng liang (7XLUNWV9H6)", "Debug");
                project.overwriteBuildSetting("CODE_SIGN_IDENTITY", "iPhone Distribution: chengfeng liang (325G47KHPX)", "Release");
                break;

            // 3kwan sdk for IOS(越狱版)
            case "3kwan-ios-jailbreak":
                mods.Add("3kwan-ios-jailbreak");
                project.overwriteBuildSetting("PRODUCT_BUNDLE_IDENTIFIER", "com.shiyuegame.fswy");
                project.overwriteBuildSetting("CODE_SIGN_IDENTITY", "iPhone Developer: apple@shiyuegame.com (EV4RAYDX9P)", "Debug");
                project.overwriteBuildSetting("CODE_SIGN_IDENTITY", "iPhone Distribution: GuangZhou ShiYueGame Technology Co.,Ltd. (Q649FM25P4)", "Release");
                break;
        }

        foreach(var mod in mods){
            var file = modsPath + mod + ".projmods";
			project.ApplyMod( file );
        }

		project.Save();
	}
#endif

	public static void Log(string message) {
		Debug.Log("PostProcess: "+message);
	}
}
