using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using UnityEngine;
using UnityEngine.UI;

using SLua;
using LitJson;

[CustomLuaClass]
public class LoadingPagePatch {

    private GameContext ctx;
    // 加载页
    private GameObject panel;
    public GameObject Panel { get { return panel; } }
    // 进度条
    private Slider progressBar;
    // 进度信息显示
    private Text msg;
    // tips信息显示
    private Text msg2;

    private bool isInit = false;

    public Action InitCompleted;

    private string updateTitle = "";

    private List<string> tipsList = new List<string> ();
    private bool tipsFileNeedDecompress = true;
    private System.Random random = new System.Random ();

    private Boolean has_logo = true;
    private const string ConstLoadingPageBgPath = "textures/ui/startpage/textures_ui_startpage_{0}.unity3d";
    private const string ConstLoadingPageBgJpgPath = "{0}.jpg";
    private const string ConstLogoPath = "textures/ui/startpage/textures_ui_startpage_{0}.unity3d";
    private const string ConstLogoPngPath = "{0}.png";

    private string loadingPageBgName = "loading_page_bg";
    private string loadingPageBgPath = "textures/ui/startpage/textures_ui_startpage_loading_page_bg.unity3d";
    private Boolean loadingPageBgJpgFlag = false;
    private string logoName = "I18NLogo_xcqy";
    private string logoPath =  "textures/ui/startpage/textures_ui_startpage_i18nlogo_xcqy.unity3d";
    private Boolean logoPngFlag = false;
    
    public LoadingPagePatch () {
        ctx = GameContext.GetInstance ();
    }

    public void LoadPage () {
        string path = GetRoot ("prefabs/ui/startpage/prefabs_ui_startpage_startpage.unity3d");
        LoadTask task = new LoadTask (path, "prefabs/ui/startpage/prefabs_ui_startpage_startpage.unity3d", OnPrefabLoaded);
        ctx.AssetBundleManager.LoadFile (task);
    }

    private string GetRoot (string file) {
        string root = null;
        tipsFileNeedDecompress = true;
        if (File.Exists (ctx.ResourcesPath + "/" + file)) {
            root = "file:///" + ctx.ResourcesPath;
            tipsFileNeedDecompress = true; // 以前是false
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

    private void OnPrefabLoaded (LoadTask task) {
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
        if (InitCompleted != null) {
            InitCompleted ();
        }
        if (Application.platform == RuntimePlatform.Android && panel.GetComponent<Button>() == null) {
            Button but = panel.AddComponent<Button> ();
            but.transition = Selectable.Transition.None;
            but.onClick.AddListener (this.ShowLoginView);
        }

        LoadTask logoTask = new LoadTask(GetRoot("kkk_setting.json"), "kkk_setting.json", OnKKKSettingLoaded, OnKKKSettingLoadFail);
        ctx.AssetBundleManager.LoadFile(logoTask);
    }

    private void OnKKKSettingLoaded(LoadTask task) {
        if (null == task) {
            if (ctx.GameName == "mhbb" || ctx.GameName == "dhmh") {
                loadingPageBgPath = string.Format(ConstLoadingPageBgPath, ctx.GameName);
                loadingPageBgName = "loading_page_bg_" + ctx.GameName;
            }

            logoName = "I18NLogo_" + ctx.GameName;
            logoPath = string.Format(ConstLogoPath, logoName.ToLower());
        }
        else {
            JsonData jsonData = JsonMapper.ToObject(task.www.text);
            string has_logo_str = @jsonData["has_logo"].ToString();
            if ("false".Equals(has_logo_str)) {
                has_logo = false;
            }
            loadingPageBgName = @jsonData["loading_page_bg_name"].ToString();
            logoName = @jsonData["logo_name"].ToString();
            loadingPageBgPath = string.Format(ConstLoadingPageBgPath, loadingPageBgName);
            logoPath = string.Format(ConstLogoPath, logoName.ToLower());

            CSVersion.GameName = @jsonData["game_name"].ToString();
        }

        Debug.Log("OnKKKSettingLoaded :" + loadingPageBgPath + "," + logoPath);

        string path = GetRoot(loadingPageBgPath);
        LoadTask bgTask = new LoadTask(path, loadingPageBgPath, OnBgLoaded, OnBgLoadedFail);
        ctx.AssetBundleManager.LoadFile(bgTask);
    }

    private void OnKKKSettingLoadFail(String failString) {
        OnKKKSettingLoaded(null);
    }

    private void OnBgLoadedFail(String failString) {
        loadingPageBgPath = string.Format(ConstLoadingPageBgJpgPath, loadingPageBgName);
        string path = GetRoot(loadingPageBgPath);
        loadingPageBgJpgFlag = true;
        Debug.Log("使用jpg加载页资源");
        LoadTask bgTask = new LoadTask(path, loadingPageBgPath, OnBgLoaded);
        ctx.AssetBundleManager.LoadFile(bgTask);
    }

    private void OnBgLoaded(LoadTask task) {
        WWW w3 = task.www;
        if (loadingPageBgJpgFlag) {
            Texture2D texture = w3.texture;
            Sprite sprites = Sprite.Create(texture, new Rect(0, 0, texture.width, texture.height), new Vector2(0.5f, 0.5f));
            panel.transform.GetComponent<Image>().sprite = sprites;
        } else {
            panel.transform.GetComponent<Image>().sprite = w3.assetBundle.Load(loadingPageBgName, typeof(Sprite)) as Sprite;
            w3.assetBundle.Unload(false);
        }
        w3.Dispose();
        w3 = null;

        if (has_logo) {
            string path = GetRoot(logoPath);
            Debug.Log("logoPath: " + logoPath);
            LoadTask logoTask = new LoadTask(path, logoPath, OnLogoLoaded, OnLogoLoadedFail);
            ctx.AssetBundleManager.LoadFile(logoTask);
        }
        else {
            LoadMsgData();
        }
    }

    private void OnLogoLoaded(LoadTask task) {
        WWW w3 = task.www;
        if (logoPngFlag) {
            Texture2D texture = w3.texture;
            Sprite sprites = Sprite.Create(texture, new Rect(0, 0, texture.width, texture.height), new Vector2(0.5f, 0.5f));
            panel.transform.FindChild("GameLogo").GetComponent<Image>().sprite = sprites;
        } else {
            panel.transform.FindChild("GameLogo").GetComponent<Image>().sprite = w3.assetBundle.Load(logoName, typeof(Sprite)) as Sprite;
            w3.assetBundle.Unload(false);
        }
        panel.transform.FindChild("GameLogo").gameObject.SetActive(true);
        w3.Dispose ();
        w3 = null;

        LoadMsgData();
    }

    private void OnLogoLoadedFail(String failString) {
        logoPath = string.Format(ConstLogoPngPath, logoName.ToLower());
        string path = GetRoot(logoPath);
        logoPngFlag = true;
        Debug.Log("使用pnglogo资源");
        LoadTask logoTask = new LoadTask(path, logoPath, OnLogoLoaded);
        ctx.AssetBundleManager.LoadFile(logoTask);
    }

    private void LoadMsgData() {
        GameObject welcome = GameObject.Find("CanvasContainer/BaseCanvas/Wellcome");
        if (welcome != null) {
            GameObject.DestroyImmediate(welcome);
        }

        string path = GetRoot("lua/config/loading_tips_config.json");
        LoadTask logoTask = new LoadTask(path, "lua/config/loading_tips_config.json", OnMsgDataLoaded);
        ctx.AssetBundleManager.LoadFile(logoTask);
    }

    private void OnMsgDataLoaded (LoadTask task) {
        string tipsTxt = "[]";
        if (tipsFileNeedDecompress) {
            tipsTxt = System.Text.Encoding.UTF8.GetString (Utils.Decompress (task.www.bytes));
        } else {
            tipsTxt = task.www.text;
        }
        JsonData rootData = JsonMapper.ToObject (tipsTxt);
        int count = rootData.Count;
        for (int i = 0; i < count; i++) {
            JsonData data = rootData[i];
            // Log.Debug (data.ToString());
            tipsList.Add (data.ToString());
        }
        if (tipsList.Count > 0) {
            int index = random.Next(tipsList.Count);
            msg2.text = tipsList[index];
        }
    }
    

    private void SetBar () {
        GameObject canvas = ctx.BaseContainer;
        if (canvas != null && panel != null) {
            panel.transform.SetParent (canvas.transform);
            Show ();
        }
    }

    public void Show (string text = "") {
        updateTitle = text;
        panel.SetActive (true);
        if (text != null && text.Trim ().Length > 0) {
            panel.transform.FindChild ("ProgressBar").gameObject.SetActive (true);
            panel.transform.FindChild ("ProgressBar").GetComponent<Slider>().value = 0;
            panel.transform.FindChild ("StartPageArea").gameObject.SetActive (true);
            panel.transform.FindChild ("MSG").gameObject.SetActive (true);
            panel.transform.FindChild ("MSG2").gameObject.SetActive (true);
            msg.text = text;
        } else {
            panel.transform.FindChild ("ProgressBar").gameObject.SetActive (false);
            panel.transform.FindChild ("StartPageArea").gameObject.SetActive (false);
            panel.transform.FindChild ("MSG").gameObject.SetActive (false);
            panel.transform.FindChild ("MSG2").gameObject.SetActive (false);
        }
    }

    public void Progress (string text, float progress) {
        if (msg != null) {
            msg.text = text;
            progressBar.value = progress;
        }
    }

    public void Progress (float progress) {
        if (progressBar != null) {
            progressBar.value = progress;
        }
    }

    public void Hide () {
        panel.SetActive (false);
        msg.text = "";
        progressBar.value = 0;
    }

    public void ShowLoginView () {
        Debug.Log("wang ==> ShowLoginView LoadingPagePatch");
#if UNITY_ANDROID
        AndroidJavaClass jc = new AndroidJavaClass ("com.unity3d.player.UnityPlayer");
        AndroidJavaObject jo = jc.GetStatic<AndroidJavaObject> ("currentActivity");
        jo.Call ("showLoginView");
#endif
    }
}
