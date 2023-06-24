using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using LitJson;
using SLua;

using UnityEngine;

public class ServerListProcessor : IProcessor {

    private GameContext ctx = null;
    private Action action = null;
    private string serverListPath = "";
    private int platformChanleId = 0;
    private string chanleId = "5470";

    public ServerListProcessor (GameContext ctx) {
        this.ctx = ctx;
        serverListPath = ctx.BaseSetting.ServerListPath;
        platformChanleId = ctx.PlatformChanleId;
    }

    public void Deal () {
        serverListPath = ctx.BaseSetting.ServerListPath;
        if (serverListPath != null && serverListPath.Trim().Length > 0) {
            ctx.LoadingPage.Show ("更新服务器列表");
            string sPath = ctx.ReplaceParam (serverListPath);
            // string sPath = serverListPath.Replace ("{PlatformChanleId}", "" + platformChanleId);
            // sPath = sPath.Replace ("{ChanleId}", chanleId);
            System.Random random = new System.Random ();
            string url = sPath + "&random=" + random.Next(1000);
        	RequestInfo requestInfo = new RequestInfo ();
        	requestInfo.path = url;
        	requestInfo.succeCallback = OnLoadedCompleted;
        	requestInfo.failCallback = OnLoadedFailed;
        	requestInfo.alertTxt = "下载服务器列表失败，可能是网络不稳定，是否重试？";
        	requestInfo.tryCount = 3;
        	HttpRequest request = new HttpRequest (requestInfo);
        	request.Download ();
        } else {
            Fire ();
        }
    }

    public void AddEndEvent (Action action) {
        this.action = action;
    }

    private void Fire () {
        if (this.action != null) {
            this.action ();
        }
    }

    private void OnLoadedCompleted (WWW www, string args) {
        string serverStr = www.text;
        www.Dispose ();
        // 应该是这样
        try {
            // LuaSrvManager.GetInstance ().LuaState.doString (serverStr);
            ctx.ServerListConfig = new NormalJson (serverStr);
        } catch (Exception e) {
            Log.Info ("服务器列表信息异常:" + e.Message);
            ctx.LoadingPage.Show ("服务器列表信息异常，请重新尝试登陆");
            throw e;
        }
        // JsonData jsonData = JsonMapper.ToObject (serverStr);
        // LuaTable serverConfig = new LuaTable (LuaSrvManager.GetInstance().LuaState);

        // JsonData serverList = jsonData["server_list"];
        // LuaTable serverTable = new LuaTable (LuaSrvManager.GetInstance().LuaState);
        // if (serverList != null) {
        //     int count = serverList.Count;
        //     for (int i = 0; i < count; i++) {
        //         JsonData server = serverList[i];
        //         LuaTable lserver = new LuaTable (LuaSrvManager.GetInstance().LuaState);
        //         string name = @server["name"].ToString ();
        //         string host = @server["host"].ToString ();
        //         string port = @server["port"].ToString ();
        //         string platform = @server["platform"].ToString ();
        //         string zone_id = @server["zone_id"].ToString ();
        //         lserver["name"] = name;
        //         lserver["host"] = host;
        //         lserver["port"] = port;
        //         lserver["platform"] = platform;
        //         lserver["zone_id"] = zone_id;
        //         JsonData backList = server["black_list"];
        //         LuaTable backTable = new LuaTable (LuaSrvManager.GetInstance().LuaState);
        //         lserver["black_list"] = backTable;
        //         if (backList != null) {
        //             int bc = backList.Count;
        //             for (int j = 0; j < bc; j++) {
        //                 JsonData back = backList[j];
        //                 LuaTable lback= new LuaTable (LuaSrvManager.GetInstance().LuaState);
        //                 string chanleId = @back["chanleId"].ToString ();
        //                 string begin_time = @back["begin_time"].ToString ();
        //                 lback["chanleId"] = chanleId;
        //                 lback["begin_time"] = begin_time;
        //                 backTable[j + 1] = lback;
        //             }
        //         }
        //         serverTable[i + 1] = lserver;
        //     }
        // }

        // JsonData chargeList = jsonData["charge_list"];
        // LuaTable chargeTable = new LuaTable (LuaSrvManager.GetInstance().LuaState);
        // if (chargeList != null) {
        //     int count = chargeList.Count;
        //     for (int i = 0; i < count; i++) {
        //         JsonData jcharge = chargeList[i];
        //     	LuaTable lcharge = new LuaTable (LuaSrvManager.GetInstance().LuaState);
        //         string platform = @jcharge["platform"].ToString ();
        //         string path = @jcharge["path"].ToString ();
        //         lcharge["platform"] = platform;
        //         lcharge["path"] = path;
        //         chargeTable[i + 1] = lcharge;
        //     }
        // }
        // serverConfig["server_list"] = serverTable;
        // serverConfig["charge_list"] = chargeTable;
        // ctx.ServerListConfig = serverConfig;
        Fire ();
    }

    private void OnLoadedFailed (string msg) {
        ctx.AlertWindow.Hide ();
        int length = 45;
        if (msg.Length < 45) {
            length = msg.Length - 1;
        }
        Log.Info ("下载服务器列表失败:" + msg.Substring(0, length));
        ctx.LoadingPage.Show ("更新服务器列表失败");
    }
}
