using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using UnityEngine;

using SLua;

public class HotswapProcessor {

    private string luaTxt = null;
    public string LuaTxt { get { return luaTxt; } }

    private GameContext ctx = null;
    private Action completedAction = null;
    private bool needHotswap = false;

    public HotswapProcessor (Action completedAction) {
        this.ctx = GameContext.GetInstance ();
        this.needHotswap = ctx.NeedHotswap;
        this.completedAction = completedAction;
    }

    public void Deal () {
        if (needHotswap) {
            string path = ctx.ResourcesPath + "/base_setting.json";
            string script = null;
            if (File.Exists (path)) {
                script = File.ReadAllText (path);
            } else {
                script = Resources.Load<TextAsset> ("base_setting").text;
            }
            BaseSetting setting = new BaseSetting (script);
            string version = setting.ResVersion;

            // ctx.LoadingPage.Show ("正在加载Hotswap文件中（不消耗流量）");
            string url = ctx.PatchPath + "/" + version + "/hotswap.lua";
            RequestInfo requestInfo = new RequestInfo ();
        	requestInfo.useRandom = false;
        	requestInfo.path = url;
            requestInfo.succeCallback = LoadSucce;
            requestInfo.failCallback = LoadFailed;
        	requestInfo.alertTxt = "";
        	requestInfo.tryCount = 2;
        	HttpRequest request = new HttpRequest (requestInfo);
        	request.Download ();
        } else {
            Fire ();
        }
    }

    public void LoadSucce (WWW www, string args) {
        string content = www.text;
        www.Dispose ();
        LoadCompleted (content);
    }

    public void LoadFailed (string msg) {
        Log.Error ("正在加载Hotswap文件失败:" + msg);
        ctx.LoadingPage.Show ("正在加载Hotswap文件失败");
    }

    private void LoadCompleted (string txt) {
        ctx.hotswapLuaTxt = txt;
        Fire ();
    }

    public void Fire () {
        if (completedAction != null) {
            completedAction ();
        }
    }
}
