using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using UnityEngine;
using UnityEngine.UI;

using SLua;


[CustomLuaClass]
public class LoadingPage : MonoBehaviour {
    private GameContext ctx;
    // 加载页
    private GameObject panel;
    public GameObject Panel { get { return panel; } }

    // 加载页AssetBundle引用
    // private AssetBundle assetRef;
    // 进度条
    private Slider progressBar;
    // 进度信息显示
    private Text msg;
    // tips信息显示
    private Text msg2;
    // 显示状态
    private bool show;

    // 需处理的任务总数量
    public float Total { get; set; }
    // 已处理的任务数量
    public float Current { get; set; }
    //loading模式 0.解包 1.初始化 2.其他
    public int Mode = 0;
    private float lastMsgTime = -100f;

    // msg
    private string msgTxt = "正在努力加载中";
    // msg2
    private string msgTxt2 = "";

    void Awake () {
        ctx = GameContext.GetInstance ();
        Total = 1;
        Current = 1;
        // ctx.Loader.Load(ctx.RemotePath, "prefabs/prefabs_startpage.unity3d", OnPrefabLoaded);
    }

    void Start () {
    }

    // 加截页已载入
    private void OnPrefabLoaded(LoadTask task){
        WWW w3 = task.www;
    	panel = UGUI.Instantiate("StartPage", w3.assetBundle.mainAsset as GameObject, ctx.BaseContainer);
    	progressBar = panel.transform.FindChild("ProgressBar").GetComponent<Slider>();
    	msg = panel.transform.FindChild("MSG").GetComponent<Text>();
        msg2 = panel.transform.FindChild ("MSG2").GetComponent<Text> ();
        progressBar.value = 0;
        panel.SetActive (false);
        w3.assetBundle.Unload (false);
        w3.Dispose ();
        w3 = null;
        SetBar ();
    }

    // 更新进度显示
    void Update () {
        if (progressBar == null) return;
        if (msg == null) return;
        if (msg2 == null) return;

        panel.SetActive (show);
        if (show) {
            var val = (Current / Total * 100);
            progressBar.value = val;
            msg.text = string.Format (msgTxt + "{0:F1}%", val);
            if (Mode == 0) setInitTips (val);
        }
    }

    // 显示加载页
    public void Show (string msgTxt) {
        this.msgTxt = msgTxt;
        show = true;
        if (panel == null) {
            // 载入加载页
        	string path = null;
        	switch (Application.platform) {
        	    case RuntimePlatform.Android:
                    path = Application.streamingAssetsPath;
        	        break;
        	    case RuntimePlatform.IPhonePlayer:
                    path = "file:///" + Application.streamingAssetsPath;
        	        break;
        	    default:
                    path = ctx.RemotePath;
        	        break;
        	}
        	// path = path + "/prefabs/prefabs_startpage.unity3d";

// #if UNITY_EDITOR
//             path = ctx.RemotePath;
// #elif UNITY_ANDROID
//             path = Application.streamingAssetsPath;
// #else
//             path = "file:///" + Application.streamingAssetsPath;
// #endif
        	LoadTask task = new LoadTask (path, "prefabs/prefabs_startpage.unity3d", OnPrefabLoaded);
        	ctx.AssetBundleManager.LoadFile (task);
        } else {
            if (progressBar != null) {
                progressBar.value = 0;
            }
            SetBar ();
        }
    }

    private void SetBar () {
        GameObject canvas = ctx.BaseContainer;
        if (canvas != null && panel != null) {
            panel.transform.SetParent (canvas.transform);
            if (msgTxt.Equals ("")) {
                panel.transform.FindChild ("ProgressBar").gameObject.SetActive (false);
                panel.transform.FindChild ("StartPageArea").gameObject.SetActive (false);
                panel.transform.FindChild ("GameLogo").gameObject.SetActive (false);
                panel.transform.FindChild ("MSG").gameObject.SetActive (false);
                panel.transform.FindChild ("MSG2").gameObject.SetActive (false);
            } else {
                panel.transform.FindChild ("ProgressBar").gameObject.SetActive (true);
                panel.transform.FindChild ("StartPageArea").gameObject.SetActive (true);
                panel.transform.FindChild ("GameLogo").gameObject.SetActive (false);
                panel.transform.FindChild ("MSG").gameObject.SetActive (true);
                panel.transform.FindChild ("MSG2").gameObject.SetActive (true);
            }
        }
    }

    // 隐藏加载页
    public void Hide () {
        if (panel != null) {
            panel.SetActive (false);
        }
        show = false;
    }

    // 销毁加载页
    public void Destory () {
        // 销毁加载页
        GameObject.Destroy (panel);
    }

    string[] tips = new string[] { 
        "欢迎来到星辰奇缘的世界，准备迎接奇妙的冒险旅程吧。"
        , "组队打BOSS，除了获得更高的经验加成外，还能收获友谊哦！"
        , "打造更适合自己职业特点的宠物，战斗能力大幅提升！"
        , "五大职业各具特色，帅哥？萌妹？性别随你选。"
        , "炫酷翅膀改变你的外观，提升你的战力，实现你的飞行梦想！"
        };

    private void setInitTips (float val) {
        if (Time.time - lastMsgTime > 10) {
            lastMsgTime = Time.time;
            msgTxt2 = tips[(int)UnityEngine.Random.Range (0, tips.Length)];
        }
        msg2.text = msgTxt2;
    }
}

