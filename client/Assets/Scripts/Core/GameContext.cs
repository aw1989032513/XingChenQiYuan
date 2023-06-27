using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using UnityEngine;
using UnityEngine.UI;
using SLua;

using LitJson;
using System.Collections;

public delegate void GameTickHandler();

[CustomLuaClass]
public class GameContext {

    private static GameContext instance = null;
    private GameContext () {
    }

    public event GameTickHandler OnTick;
    public event GameTickHandler OnUpdateTick;

    private GameEnter gameEnter = null;

    private LuaState luaState = null;
    public LuaState LuaState{ get { return luaState; } }

    private Camera mainCamera;
    public Camera MainCamera { get { return mainCamera; } }

    private Camera uiCamera;
    public Camera UICamera { get { return uiCamera; } }

    private GameObject root = null;

    private AssetBundleManager assetBundleManager = null;
    public AssetBundleManager AssetBundleManager { get { return assetBundleManager; } }

    private LoadingPagePatch loadingPage;
    public LoadingPagePatch LoadingPage { get { return loadingPage; } set { loadingPage = value; } }

    private AlertWindow alertWidnow = null;
    public AlertWindow AlertWindow {
        get {
            if (alertWidnow == null) {
                alertWidnow = new AlertWindow();
            }
            return alertWidnow;
        }
    }

    // socket协议派发器
    private ProtocolDispatcher protocolDispatcher;
    public ProtocolDispatcher ProtocolDispatcher { get { return protocolDispatcher; } }

    // socket数据处理器
    private SmartSocket socket;
    public SmartSocket Socket { get { return socket; } }

    private LuaTableProxy lua_connection = null;

    //场景管理器
    public SceneMgr sceneManager;

    //渠道ID
    private int platformChanleId = 0;
    public int PlatformChanleId { get { return platformChanleId; } }

    //分发ID
    private string kkkChanleId = "5470";
    public string KKKChanleId { get { return kkkChanleId; } }

    // 本地持久化数据根目录(可读写)
    private string localPath;
    public string LocalPath { get { return localPath; } }

    // 编辑器中loalpath
    private string editorResPath;
    public string EditorResPath { get { return editorResPath; } }


    // cdn资源根目录(只读)
    private string remotePath;
    public string RemotePath { get { return remotePath; } }

    private string patchPath;
    public string PatchPath { get { return patchPath; } }

    private string subpackPath;
    public string SubpackPath { get { return subpackPath; } }

    // 本地资源路径(只读)
    private string resourcesPath;
    public string ResourcesPath { get { return resourcesPath; } }
    // 临时文件侠
    private string tmpPath;
    public string TmpPath { get { return tmpPath; } }

    // 资源版本
    private string resVersion;
    public string ResVersion { get { return resVersion; } set { resVersion = value; } }

    // APK版本
    private string apkVersion;
    public string ApkVersion { get { return apkVersion; } }

    public string ApkTmpPath = null;

    // 是否调试版本
    private bool isDebug = false;
    public bool IsDebug { get { return isDebug; } }

    // 是否检查APK
    private bool checkApk = false;
    public bool CheckApk { get { return checkApk; } }

    // Apk强更地址
    private string checkApkPath;
    public string CheckApkPath { get { return checkApkPath; } }

    // 一服CDN地址
    private string firstCdnPath = null;
    public string FirstCdnPath { get { return firstCdnPath; } }

    // cdn资源根目录(只读)
    private string cdnPath;
    public string CdnPath { get { return cdnPath; } }

    // 下载Apk地址
    private string downloadApkPath = null;
    public string DownloadApkPath { get { return downloadApkPath; } }

    // 是否需要检查luaMd5
    private bool checkLuaMd5 = false;
    public bool CheckLuaMd5 { get { return checkLuaMd5; } }

    //是否播放CG动画
    private bool checkPlayCG = false;
    public bool CheckPlayCG {get { return checkPlayCG; }}

    // 远程资源版本
    private string remoteResVersion = null;
    public string RemoteResVersion { get { return remoteResVersion; } }

    // 是否编译器环境
    private bool editor = false;
    public bool Editor { get { return editor; } }

    // 是否需要动态更新
    private bool needhotswap = false;
    public bool NeedHotswap { get { return needhotswap; } }
    public string hotswapLuaTxt = null;

    // 散文件更新线程数量 因为旧版本的问题，这里最大是3， 3在新版本就是5
    private int patchThreadCount = 5;
    public int PatchThreadCount { get { return patchThreadCount; } }

    // 
    private bool needLoadLua = true;
    public bool NeedLoadLua { get { return needLoadLua; } }

    // BaseSetting信息
    private BaseSetting baseSetting = null;
    public BaseSetting BaseSetting { get { return baseSetting; } }

    // 基础面板
    private GameObject baseContainer;
    public GameObject BaseContainer { get { return baseContainer; } }

    // 面板容器
    private GameObject canvasContainer;
    public GameObject CanvasContainer { get { return canvasContainer; } }

    private ConsolePanel gameConsole = null;
    public ConsolePanel GameConsole { get { return gameConsole; } }

    public string initLastServer = null;
    public string firstZone = null;

    // 个推
    private string geTuiClientId = null;
    public string GeTuiClient {
        get {
            if (geTuiClientId == null) {
                geTuiClientId = GetGeTuiClientid ();
            }
            return geTuiClientId;
        }
    }

    private LuaAssetLoader luaAssetLoader = null;
    public LuaAssetLoader LuaAssetLoader { get { return luaAssetLoader; } }

    public string GameName { get { return CSVersion.GameName; } }
    public string GameNameTxt { get { return CSVersion.GameNameTxt; } }
    private string theoneKey = "last_isfirst";

    private NormalJson serverListConfig = null;
    public NormalJson ServerListConfig {
        get { return serverListConfig; }
        set { serverListConfig = value; }
    }

    private bool LoadFromJson = false;

    // 网络链接类型
    private string networkType = null;
    public string NetworkType {
        get {
            if (networkType == null) {
                networkType = GetNetworkType ();
            }
            return networkType;
        }
    }

    public float CameraOffsetX { set { cameraOffsetX = value; } get { return cameraOffsetX; } }
    public float CameraOffsetY { set { cameraOffsetY = value; } get { return cameraOffsetY; } }
    public int ScreenWidth { set { screenWidth = value; } get { return screenWidth; } }
    public int ScreenHeight { set { screenHeight = value; } get { return screenHeight; } }
    public float ScreenScaleX { set { screenScaleX = value; } get { { return screenScaleX; } } }
    public float ScreenScaleY { set { screenScaleY = value; } get { { return screenScaleY; } } }
    private float cameraOffsetX;
    private float cameraOffsetY;
    private int screenWidth;
    private int screenHeight;
    private float screenScaleX;
    private float screenScaleY;

    public static GameContext GetInstance () {
        if (instance == null) {
            instance = new GameContext ();
        }
        return instance;
    }

    public void Activate (GameEnter gameEnter) {
        this.gameEnter = gameEnter;
        this.root = this.gameEnter.gameObject;
        InitContext ();
    }

    private void InitContext () {
        localPath = Application.persistentDataPath;
        ApkTmpPath = localPath + "/xcqy_download.apk";
        LoadFromJson = false;

        initLastServer = PlayerPrefs.GetString (theoneKey);
        firstZone = PlayerPrefs.GetString (theoneKey);
        resourcesPath = Application.persistentDataPath + "/res";
        tmpPath = Application.persistentDataPath + "/tmp";
        if (IsTheone (PlayerPrefs.GetString (theoneKey))) {
            resourcesPath = Application.persistentDataPath + "/res_theone";
            tmpPath = Application.persistentDataPath + "/tmp_theone";
        }
        editorResPath = Directory.GetCurrentDirectory () + "/../release/" + GetPlatform ();
        #if UNITY_EDITOR
        editor = true;
		#endif

        this.canvasContainer = GameObject.Find ("CanvasContainer").gameObject;
        GameObject.DontDestroyOnLoad (this.canvasContainer);
        baseContainer = GameObject.Find ("CanvasContainer/BaseCanvas/Container").gameObject;

        this.uiCamera = GameObject.Find("UICamera").GetComponent<Camera>();
        GameObject.DontDestroyOnLoad(this.uiCamera);
        GameObject.DontDestroyOnLoad(GameObject.Find("EventSystem"));
        InitChanleId ();
        CSShaderManager.GetInstance ().InitShader ();

        this.assetBundleManager = this.gameEnter.gameObject.AddComponent<AssetBundleManager>();
        // 覆盖安装问题
        CheckLocalApkVersionProcessor checkApkProcessor = new CheckLocalApkVersionProcessor (this);
        // 准备basesetting文件
        BaseSettingProcessor baseSettingProcessor = new BaseSettingProcessor (this);
        // 准备patch_version.xml文件
        // XmlVersionProcessor xmlVersionProcessor = new XmlVersionProcessor (this);
        // 读取basesetting文件
        ActionProcessor readAction = new ActionProcessor (ReadBaseSetting);
        // 初始化Bugly
        ActionProcessor initButlyProcessor = new ActionProcessor (InitBugly);
        // 初始化loadingpag
        LoadingPageProcessor loadingPageProcessor = new LoadingPageProcessor (this);
        // 检查强更
        CheckRemotApkProcessor checkRemoteProcessor = new CheckRemotApkProcessor (this);

        checkApkProcessor.AddEndEvent (baseSettingProcessor.Deal);
        baseSettingProcessor.AddEndEvent (readAction.Deal);
        // xmlVersionProcessor.AddEndEvent (readAction.Deal);
        readAction.AddEndEvent (initButlyProcessor.Deal);
        initButlyProcessor.AddEndEvent (loadingPageProcessor.Deal);
        loadingPageProcessor.AddEndEvent (checkRemoteProcessor.Deal);
        checkRemoteProcessor.AddEndEvent (StepLoadingPage);
        checkApkProcessor.Deal ();
    }

    private void StepLoadingPage () {
        this.loadingPage.Show ("初始化环境..");
    	CameraInit ();
    	if (isDebug) {
    	    InitConsole ();
    	}
    	LuaSrvManager.GetInstance ().Initialize (null, OnLuaSrvInitCompleted);
    }

    private void OnLuaSrvInitCompleted () {
        this.luaState = LuaSrvManager.GetInstance ().LuaState;

        if (this.checkPlayCG && !CSSubpackageManager.isSubpackage) {
            Utils.PlayMovie("movie.mov", 2);
        }

        HotswapProcessor hotswap = new HotswapProcessor (UpdateServerList);
        AssetUpdater updater = new AssetUpdater (hotswap.Deal);
        updater.DoCheck ();
    }

    private void UpdateServerList () {
        // ServerListProcessor serverListPro = new ServerListProcessor (this);
        // serverListPro.AddEndEvent (OnAssetUpdateCompleted);
        // serverListPro.Deal ();
        // OnAssetUpdateCompleted ();
        CheckLuaMd5Proc ();
    }

    private void CheckLuaMd5Proc () {
        CheckLuaMd5Processor check = new CheckLuaMd5Processor (this);
        check.AddEndEvent (CheckLuaMd5Finish);
        check.Deal ();
    }

    private void CheckLuaMd5Finish () {
        this.LoadingPage.Show ("正在加载文件中（不消耗流量）");
    	TimerManager.GetInstance ().AddTimerTask (new TimerTask (200, LoadLuaAsset));
    }

    // 加载lua文件
    private void LoadLuaAsset () {
        luaAssetLoader = new LuaAssetLoader (this, InitSubpackage);
        LuaAssetLoader.Load ();
    }

    // 初始化上下文
    private void InitSubpackage () {
        Debug.Log("所有资源文件已经准备");
        Dictionary<string, bool> dict = new Dictionary<string, bool> ();
        assetBundleManager.ScanLocalDir (dict, "", new DirectoryInfo(GameContext.GetInstance().ResourcesPath));
        assetBundleManager.LoadVersionInfo (dict);
        CSSubpackageManager.GetInstance ().Init (OnAssetUpdateCompleted, dict);
    }

    public void OnAssetUpdateCompleted () {
        // 加载lua文件
        LuaSrvManager.GetInstance ().SetupFiles ();
        luaAssetLoader.Release ();

        luaState["ctx"] = this;

        lua_connection = new LuaTableProxy("Connection");

        // 初始化协议处理器
        socket = new SmartSocket(luaState, lua_connection);
        // 初始化协议派发器
        protocolDispatcher = new ProtocolDispatcher(socket, luaState, lua_connection);

        sceneManager = new SceneMgr();

        if (Application.platform == RuntimePlatform.Android || Application.platform == RuntimePlatform.IPhonePlayer) {
            CSSleepManager.GetInstance ().canCheck = true;
        }
        // this.loadingPage.Hide ();
        if (needhotswap && hotswapLuaTxt != null) {
            try {
                luaState.doString (hotswapLuaTxt);
            } catch (Exception e) {
                Log.Error ("动态热更DoString出错了:" + e.Message + ":" + hotswapLuaTxt);
            }
        }
        Application.LoadLevel ("Main");
    }

    public void ReadBaseSetting () {
        string path = this.resourcesPath + "/base_setting.json";
        string script = null;
        if (File.Exists(path)) {
            script = File.ReadAllText (path);
        } else {
            script = Resources.Load<TextAsset> ("base_setting").text;
        }
        BaseSetting setting = new BaseSetting (script);
        ConvertBaseSetting (setting);
    }

    public void ConvertBaseSetting (BaseSetting setting) {
        resVersion = setting.ResVersion;
        isDebug = setting.Debug;
        apkVersion = setting.ApkVersion;
        checkApk = setting.CheckApk;
        checkApkPath = setting.CheckApkPath;
        editor = setting.Editor;

        string srvList = null;
        if (baseSetting != null && baseSetting.ServerListPath != null) {
            srvList = baseSetting.ServerListPath;
        }
        baseSetting = setting;
        if (!LoadFromJson) {
            downloadApkPath = setting.DownloadApkPath;
            cdnPath = setting.CdnPath;
            firstCdnPath = setting.FirstCdnPath;
        } else if (srvList != null) {
            baseSetting.ServerListPath = srvList;
        }

        switch (Application.platform) {
            case RuntimePlatform.Android:
                this.remotePath = cdnPath + "/android";
                this.patchPath = cdnPath + "/patch_android";
                this.subpackPath = cdnPath + "/subpatch_android";
                if (IsTheone (PlayerPrefs.GetString (theoneKey))) {
                    this.remotePath = firstCdnPath + "/android";
                	this.patchPath = firstCdnPath + "/patch_android";
                    this.subpackPath = firstCdnPath + "/subpatch_android";
                }
                break;
            case RuntimePlatform.IPhonePlayer:
                this.remotePath = cdnPath + "/ios";
                this.patchPath = cdnPath + "/patch_ios";
                this.subpackPath = cdnPath + "/subpatch_ios";
                if (IsTheone (PlayerPrefs.GetString (theoneKey))) {
                    this.remotePath = firstCdnPath + "/ios";
                	this.patchPath = firstCdnPath + "/patch_ios";
                    this.subpackPath = firstCdnPath + "/subpatch_ios";
                }
                break;
            default:
                this.remotePath = cdnPath + "/pc";
                this.patchPath = cdnPath + "/patch_pc";
                this.subpackPath = cdnPath + "/subpatch_pc";
                break;
        }

    }

    public void ConvertBaseSettingJson (JsonData data) {
        try {
            if (data == null) {
                return;
            }
            IDictionary dict = data as IDictionary;
            this.BaseSetting.ServerListPath = dict["server_list_path"].ToString ();
            this.downloadApkPath = dict["download_apk_path"].ToString ();
            this.firstCdnPath = dict["first_cdn_path"].ToString ();
            this.cdnPath = dict["cdn_path"].ToString();

            switch (Application.platform) {
        	    case RuntimePlatform.Android:
        	        this.remotePath = cdnPath + "/android";
        	        this.patchPath = cdnPath + "/patch_android";
                    this.subpackPath = cdnPath + "/subpatch_android";
                    if (IsTheone (PlayerPrefs.GetString (theoneKey))) {
        	            this.remotePath = firstCdnPath + "/android";
        	        	this.patchPath = firstCdnPath + "/patch_android";
                        this.subpackPath = firstCdnPath + "/subpatch_android";
        	        }
        	        break;
        	    case RuntimePlatform.IPhonePlayer:
        	        this.remotePath = cdnPath + "/ios";
        	        this.patchPath = cdnPath + "/patch_ios";
                    this.subpackPath = cdnPath + "/subpatch_ios";
                    if (IsTheone (PlayerPrefs.GetString (theoneKey))) {
        	            this.remotePath = firstCdnPath + "/ios";
        	        	this.patchPath = firstCdnPath + "/patch_ios";
                        this.subpackPath = firstCdnPath + "/subpatch_ios";
        	        }
        	        break;
        	    default:
        	        this.remotePath = cdnPath + "/pc";
        	        this.patchPath = cdnPath + "/patch_pc";
                    this.subpackPath = cdnPath + "/subpatch_pc";
        	        break;
        	}
            if (dict.Contains ("check_lua_md5")) {
                string chm = dict["check_lua_md5"].ToString ();
                if ("true".Equals (chm)) {
                    this.checkLuaMd5 = true;
                }
            }
            if (dict.Contains ("res_version")) {
                this.remoteResVersion = dict["res_version"].ToString ();
            }
            if (dict.Contains ("is_play_cg")) {
                string cp = dict["is_play_cg"].ToString ();
                Debug.Log("checkPlayCG = " + cp);
                if ("true".Equals (cp)) {
                    this.checkPlayCG = true;
                }
            }
            if (dict.Contains ("hotswap")) {
                string hs = dict["hotswap"].ToString ();
                if ("true".Equals (hs)) {
                    this.needhotswap = true;
                }
            }
            if (dict.Contains ("patchThreadCount")) {
                string hs = dict["patchThreadCount"].ToString ();
                patchThreadCount = Convert.ToInt32(hs);
            }
            if (dict.Contains ("needLoadLua")) {
                string hs = dict["needLoadLua"].ToString ();
                if ("true".Equals (hs)) {
                    this.needLoadLua = true;
                }
            }
            LoadFromJson = true;
        } catch (Exception e) {
            Log.Error ("ConvertBaseSettingJson出错了:" + e.Message);
        }
    }

    private string GetPlatform () {
        switch (Application.platform) {
            case RuntimePlatform.Android:
                return "android";
            case RuntimePlatform.IPhonePlayer:
                return "ios";
            default:
                return "pc";
        }
    }

    public void CameraInit () {
        mainCamera = root.GetComponent<Camera> ();
        mainCamera.orthographicSize = 2f;
        mainCamera.orthographic = true;
        mainCamera.backgroundColor = Color.black;
        mainCamera.clearFlags = CameraClearFlags.Color;
        mainCamera.depth = 1;
        mainCamera.nearClipPlane = -20;
        mainCamera.farClipPlane = 1000;
        root.name = root.tag = "MainCamera";


        if (Screen.width > Screen.height) {
            screenWidth = Screen.width;
            screenHeight = Screen.height;
        } else {
            screenWidth = Screen.height;
            screenHeight = Screen.width;
        }

        float v = 2f * 2 / screenHeight;

        cameraOffsetX = ((float)screenWidth * 0.5f * v);
        cameraOffsetY = ((float)screenHeight * 0.5f * v);

        screenScaleX = 960f / screenWidth;
        screenScaleY = 540f / screenHeight;
    }

    public void GetRemoteResVersion (Action<string> acallback) {
        Action<string> callback = acallback;
        string url = GameContext.GetInstance ().RemotePath + "/base_setting.json";
        RequestInfo requestInfo = new RequestInfo ();
        requestInfo.useRandom = true;
        requestInfo.path = url;
        requestInfo.succeCallback = (WWW www, string args) => { this.GetRemoteResVersionSucc (www, args, callback); };
        requestInfo.failCallback = (string msg) => { this.GetRemoteResVersionFailed (msg, callback); };
        requestInfo.alertTxt = "下载base_setting信息失败，可能是网络不稳定，是否重试？";
        requestInfo.tryCount = 1;
        HttpRequest request = new HttpRequest (requestInfo);
        request.Download ();
    }

    private void GetRemoteResVersionSucc (WWW www, string args, Action<string> callback) {
        string context = www.text;
        www.Dispose ();
        try {
            BaseSetting setting = new BaseSetting (context);
            callback (setting.ResVersion);
        } catch (Exception e) {
            callback ("error:" + e.Message);
        }
    }

    private void GetRemoteResVersionFailed(string errormsg, Action<string> callback) {
        callback ("error:" + errormsg);
    }

    public void GetRemoteTxt (string url, Action<string> acallback, int tryCount) {
        Action<string> callback = acallback;
        RequestInfo requestInfo = new RequestInfo ();
        requestInfo.useRandom = false;
        requestInfo.path = url;
        requestInfo.succeCallback = (WWW www, string args) => { this.GetRemoteTxtSucc (www, args, callback); };
        requestInfo.failCallback = (string msg) => { this.GetRemoteTxtFailed (msg, callback); };
        requestInfo.alertTxt = "下载remotetxt信息失败，可能是网络不稳定，是否重试？";
        requestInfo.tryCount = tryCount;
        HttpRequest request = new HttpRequest (requestInfo);
        request.Download ();
    }

    private void GetRemoteTxtSucc (WWW www, string args, Action<string> callback) {
        string context = www.text;
        www.Dispose ();
        try {
            callback (context);
        } catch (Exception e) {
            callback ("error:" + e.Message);
        }
    }

    private void GetRemoteTxtFailed(string errormsg, Action<string> callback) {
        callback ("error:" + errormsg);
    }

    public void InitConsole () {
        if (gameConsole == null) {
            gameConsole = new ConsolePanel ();
            gameConsole.initPanel();
            OnTick += gameConsole.OnTick;
            if (!baseSetting.RemoteLog) {
                Application.RegisterLogCallback (LogHandler);
            } else {
#if UNITY_ANDROID || UNITY_IOS
                BuglyAgent.RegisterLogCallback (LogHandler);
#else
                Application.RegisterLogCallback (LogHandler);
#endif
            }
        }
    }

    private void LogHandler (string logString, string stackTrace, LogType type) {
        if (gameConsole != null) {
            gameConsole.AddLog (logString, stackTrace, type);
        }
    }

    public void Tick() {
        if (null != OnTick) {
            OnTick ();
        }
    }

    public void UpdateTick () {
        if (null != OnUpdateTick) {
            OnUpdateTick ();
        }
    }

    public void DoUnloadUnusedAssets () {
        Resources.UnloadUnusedAssets ();
        System.GC.Collect ();
        luaState.doString ("collectgarbage();");
    }

    // 是否一服
    public bool IsTheone (string firstZone) {
        // if (Application.platform == RuntimePlatform.Android && lastServer != null && lastServer.Equals ("梦幻之旅")) {
        //     return true;
        // } else if (Application.platform == RuntimePlatform.IPhonePlayer && lastServer != null && lastServer.Equals ("梦幻之旅")) {
        //     return true;
        // }
        if (firstZone != null && firstZone.Equals ("1")) {
            return true;
        } else {
            return false;
        }
    }

    // 替换参数
    public string ReplaceParam (string path) {
        string path2 = path.Replace ("{platformChanleId}", "" + this.PlatformChanleId);
        path2 = path2.Replace ("{chanleId}", "" + this.KKKChanleId);
        path2 = path2.Replace ("{gameName}", this.GameName);
        path2 = path2.Replace ("{lastServerName}", Utils.UrlEncode(this.initLastServer));
        path2 = path2.Replace ("{version}", CSVersion.Version);
        string isFirst = "0";
        if (this.firstZone != null && this.firstZone.Equals ("1")) {
            isFirst = "1";
        }
        path2 = path2.Replace ("{isTheoneSrv}", isFirst);
        return path2;
    }

    /// <summary>
    /// 清缓存
    /// @date 160328
    /// android csversion > 1.2.1
    /// </summary>
    public void CleanCache () {
        DirectoryInfo dir = new DirectoryInfo (ResourcesPath);
        if (dir.Exists) {
            FileInfo[] fileInfo = dir.GetFiles ();
            foreach (FileInfo file in fileInfo) {
                file.Delete ();
            }
            DirectoryInfo[] dirInfos = dir.GetDirectories ();
            foreach (DirectoryInfo directory in dirInfos) {
                directory.Delete (true);
            }
        }
    }

    /// <summary>
    /// 初始化渠道信息
    /// </summary>
    private void InitChanleId () {
#if UNITY_ANDROID
		AndroidJavaClass jc = new AndroidJavaClass ("com.unity3d.player.UnityPlayer");
        AndroidJavaObject jo = jc.GetStatic<AndroidJavaObject> ("currentActivity");
        platformChanleId = jo.Call<int> ("GetPlatformChanleId");
        kkkChanleId = jo.Call<string> ("GetKKKChanleId");
#elif UNITY_IOS
        // platformChanleId = KKKSdk.GetPlatformId();
        // kkkChanleId = KKKSdk.GetChannelNum();
        // 2016-03-15 参数调换 hosr
        platformChanleId = Convert.ToInt32(KKKSdk.GetChannelNum());
        kkkChanleId = "" + KKKSdk.GetPlatformId();
#endif
    }

    /// <summary>
    /// 获取网络链接类型
    /// </summary>
    public string GetNetworkType () {
#if UNITY_ANDROID
		try {
            AndroidJavaClass jc = new AndroidJavaClass ("com.unity3d.player.UnityPlayer");
            AndroidJavaObject jo = jc.GetStatic<AndroidJavaObject> ("currentActivity");
            return jo.Call<string> ("GetNetworkType");
        } catch (Exception e) {
            Log.Error ("获取网络链接类型出错了:" + e.Message);
            return "WIFI";
        }
#elif UNITY_IOS
        return BaseApi.GetNetworkType();
        // if (Application.internetReachability == NetworkReachability.ReachableViaLocalAreaNetwork) {
        //     return "WIFI";
        // } else {
        //     return "Other";
        // }
#else
        return "WIFI";
#endif
		return "WIFI";
    }

    private void InitBugly () {
        if (baseSetting.RemoteLog) {
#if UNITY_ANDROID
            BuglyAgent.ConfigDebugMode (false);
            // BuglyAgent.RegisterLogCallback (CallbackDelegate.Instance.OnApplicationLogCallbackHandler);
            BuglyAgent.InitWithAppId ("900010314");
            BuglyAgent.ConfigAutoReportLogLevel (LogSeverity.LogError);
            // BuglyAgent.EnableExceptionHandler ();
#elif UNITY_IOS
            BuglyAgent.ConfigDebugMode (false);
            // BuglyAgent.RegisterLogCallback (CallbackDelegate.Instance.OnApplicationLogCallbackHandler);
            BuglyAgent.InitWithAppId ("900017776");
            BuglyAgent.ConfigAutoReportLogLevel (LogSeverity.LogError);
            // BuglyAgent.EnableExceptionHandler ();
#endif
        }
    }

    private string GetGeTuiClientid () {
        string clientid = "";
#if UNITY_ANDROID
        AndroidJavaClass jc = new AndroidJavaClass ("com.unity3d.player.UnityPlayer");
        AndroidJavaObject jo = jc.GetStatic<AndroidJavaObject> ("currentActivity");
        clientid = jo.Call<string> ("GetGeTuiClientid");
#elif UNITY_IOS
        // FIXME UNITY_IOS
        clientid = BaseApi.GetGtClientId();
#endif
        if (clientid == null) {
            clientid = "";
        }
        return clientid;
    }

    public string GetIDFA(){
#if UNITY_IOS
        return BaseApi.GetIDFA();
#else
        return "10000";
#endif
    }

    public bool IsIpv6(){
#if UNITY_IOS
        return BaseApi.IsIpv6();
#else
        return false;
#endif
    }

    public void InitShareSDK(LuaTable info){
#if UNITY_IOS
        BaseApi.InitShareSDK(info);
#endif
    }

    public void Share(LuaTable info, int type){
#if UNITY_IOS
        BaseApi.Share(info, type);
#endif
    }

    // 判断刘海屏
    private bool isNotch = false;
    private bool isNotchRead = false;
    public bool HasNotchInScreen() {
        if (isNotchRead) {
            return isNotch;
        }
        try {
#if UNITY_ANDROID
            AndroidJavaClass jc = new AndroidJavaClass("com.unity3d.player.UnityPlayer");
            AndroidJavaObject jo = jc.GetStatic<AndroidJavaObject>("currentActivity");
            isNotch = jo.Call<bool>("hasNotchInScreen");
            isNotchRead = true;
#elif UNITY_IOS
#endif
        }
        catch (Exception e) {
        }
        return isNotch;
    }

    // 设备名称
    public string GetDeviceType() {
        string deviceType = "unknow";
#if UNITY_ANDROID
        AndroidJavaClass jc = new AndroidJavaClass("com.unity3d.player.UnityPlayer");
        AndroidJavaObject jo = jc.GetStatic<AndroidJavaObject>("currentActivity");
        deviceType = jo.Call<string>("getDeviceType");
#elif UNITY_IOS
            // FIXME
#endif
        return deviceType;
    }
}
