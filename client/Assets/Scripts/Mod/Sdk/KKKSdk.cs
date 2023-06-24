using UnityEngine;

using System;
using System.Runtime.InteropServices;

using SLua;
using LitJson;

[CustomLuaClass]
public class KKKSdk : MonoBehaviour {
#if UNITY_IOS
    [DllImport("__Internal")]
    private static extern void _SDK_Init(string config);
    [DllImport("__Internal")]
    private static extern void _SDK_Login();
    [DllImport("__Internal")]
    private static extern void _SDK_Logout();
    [DllImport("__Internal")]
    private static extern void _SDK_Pay(string info);
    [DllImport("__Internal")]
    private static extern void _SDK_ShowAccountCenter();
    [DllImport("__Internal")]
    private static extern void _SDK_ShowAssistiveTouch();
    [DllImport("__Internal")]
    private static extern IntPtr _SDK_GetChannelNum();
    [DllImport("__Internal")]
    private static extern int _SDK_GetPlatformId();
    [DllImport("__Internal")]
    private static extern void _SDK_HideAssistiveTouch();
    [DllImport("__Internal")]
    private static extern void _SDK_StatisticsInfo(string info);
    [DllImport("__Internal")]
    private static extern void _CloseKeyboard();
    [DllImport("__Internal")]
    private static extern void _SDK_OpenUrl(string url, string title);
    [DllImport("__Internal")]
    private static extern void _VerifyPhone();
    [DllImport("__Internal")]
    private static extern void _ShowAccountCenter();
    

    // SDK初始化完成时的回调函数
    private Action<string> initCallback;
    // 登录完成时的回调函数
    private Action<string, string, string, string> loginCallback;
    // 注销帐号完成时的回调函数
    private Action logoutCallback;
    // 购买完成时的回调函数
    private Action<string> payCallback;
    // 分享回调
    public Action<string> shareCallback;
    // 实名认证回调
    public Action<string> realNameCallback;
    // 绑定手机回调
    public Action<string>  phoneCallback;

    protected LuaState luaContext;

    void Awake(){
        luaContext = GameContext.GetInstance().LuaState;
    }

    void OnApplicationPause(bool pause){
        if(pause){
            CSSleepManager.GetInstance().OnPause();
            CSSleepManager.GetInstance().ResetLight();
        }else{
            CSSleepManager.GetInstance().OnResume();
            CSSleepManager.GetInstance().OnWakeUp();
        }
    }

    void OnApplicationQuit(){
        CSSleepManager.GetInstance().ResetLight();
    }

    public void MessageFromSDK(string result){
        var json = JsonMapper.ToObject(result);
        if(!json.IsObject){
            Debug.LogError("消息格式错误");
            return;
        }
        var type = (string)json["type"];
        var error = "";

        switch(type){
            default:
                Debug.LogWarning("KKKSdk发送了无法处理的消息类型: " + type);
                break;

            case "init_callback":
                error = (string)json["error"];
                initCallback.Invoke(error);
                break;

            case "login_callback":
                error = (string)json["error"];
                var userid = (string)json["userid"];
                var username = (string)json["username"];
                var guid = (string)json["guid"];
                loginCallback.Invoke(error, userid, username, guid);
                break;

            case "pay_callback":
                error = (string)json["error"];
                payCallback.Invoke(error);
                break;

            case "share_callback":
                error = (string)json["error"];
                if (shareCallback != null) {
                    shareCallback.Invoke(error);
                }
                break;
            case "change_account":
                ChangeAccount();
                break;
            case "realname_callback":
                var age = (string)json["age"];
                luaContext.doString("SdkManager.Instance:OnRealNameReturn(" + age + ")");
                break;
            case "phone_callback":
                var phone_result = (string)json["result"];
                luaContext.doString("SdkManager.Instance:OnBindPhoneReturn(" + phone_result + ")");
                break;
        }
    }

    /// <summary>
    /// 执行SDK初始化
    /// <param name="config">初始化配置</param>
    /// <param name="callback">初始化完成时的回调函数</param>
    /// </summary>
    public void SDKInit(LuaTable config, Action<string> callback){
        Debug.Log("wang  ==> SDKInit" );
        initCallback = callback;
        var json = LuaTableToJsonData(config);
        _SDK_Init(json.ToJson());
    }

    /// <summary>
    /// 显示时登录窗口
    /// <param name="callback">初始化完成时的回调函数</param>
    /// </summary>
    public void ShowLoginView(Action<string, string, string, string> callback){
        Debug.Log("wang ==> ShowLoginView" );
        loginCallback = callback;
        _SDK_Login();
    }

    /// <summary>
    /// 切换账号
    /// </summary>
    public void ChangeAccount() {
        luaContext.doString ("LoginManager.Instance:returnto_login(); LoginManager.Instance.model:clear_account_input(); SdkManager.Instance:OnShowLoginViewOnRelogin();");
    }

    /// <summary>
    /// 注销帐号
    /// <param name="callback">注销帐号完成时的回调函数</param>
    /// </summary>
    public void Logout(Action callback){
        logoutCallback = callback;
        _SDK_Logout();
    }

    /// <summary>
    /// 购买
    /// <param name="info">购买设置</param>
    /// <param name="callback">购买完成时的回调函数</param>
    /// </summary>
    public void Pay(LuaTable info, Action<string> callback){
        payCallback = callback;
        var json = LuaTableToJsonData(info);
        _SDK_Pay(json.ToJson());
    }

    /// <summary>
    /// 获取渠道号
    /// </summary>
    public static string GetChannelNum(){
        return Marshal.PtrToStringAnsi(_SDK_GetChannelNum());
    }

    /// <summary>
    /// 获取分发ID
    /// </summary>
    public static int GetPlatformId(){
        return _SDK_GetPlatformId();
    }

    /// <summary>
    /// 显示帐号中心
    /// </summary>
    public void ShowAccountCenter(){
        _SDK_ShowAccountCenter();
    }

    /// <summary>
    /// 显示悬浮图标
    /// </summary>
    public void ShowAssistiveTouch(){
        _SDK_ShowAssistiveTouch();
    }

    /// <summary>
    /// 隐藏悬浮图标
    /// </summary>
    public void HideAssistiveTouch(){
        _SDK_HideAssistiveTouch();
    }

    /// <summary>
    /// 统计接口
    /// </summary>
    public void StatisticsInfo(LuaTable info){
        var json = LuaTableToJsonData(info);
        _SDK_StatisticsInfo(json.ToJson());
    }

    // LuaTable转为JsonData
    private JsonData LuaTableToJsonData(LuaTable tab){
        var json = new JsonData();
        foreach (LuaTable.TablePair item in tab) {
            var type = item.value.GetType();
            if(type == typeof(string)){
                json[item.key.ToString()] = (string)item.value;
            }else if(type == typeof(double)){
                json[item.key.ToString()] = (double)item.value;
            }else if(type == typeof(bool)){
                json[item.key.ToString()] = (bool)item.value;
            }else if(type == typeof(LuaTable)){
                json[item.key.ToString()] = LuaTableToJsonData((LuaTable)item.value);
            }else{
                throw new Exception("该类型无法转成JsonData: " + type);
            }
        }
        return json;
    }

    // 外部调用关闭输入框接口
    public static void CloseKeyboard() {
        _CloseKeyboard();
    }

    // 调用sdk内部打开连接
    public void SDK_OpenUrl(string url = "", string title = "") {
        _SDK_OpenUrl(url, title);
    }

    // 调用实名制窗口
    public void OpenRealNameWindow() {
        _VerifyPhone();
    }

    // 调用手机认证窗口
    public void OpenBindPhoneWindow() {
        _ShowAccountCenter();
    }
#endif
}
