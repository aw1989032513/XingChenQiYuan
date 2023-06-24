using UnityEngine;
using UnityEngine.UI;
using System;
using System.Text.RegularExpressions;
using System.Collections;

using SLua;
using LitJson;

[CustomLuaClass]
public class KKKAndroidBehaviour : MonoBehaviour {

    protected LuaState luaContext;

    private float clickChargeTime = 0;

    private bool isRelogin = false;

    void Awake () {
        luaContext = GameContext.GetInstance().LuaState;
    }

    void Update(){
#if UNITY_ANDROID
        // 返回键
        if(Input.GetKeyUp(KeyCode.Escape)){
            OnBackButtonClick ();
        }
#endif
    }

    void Start () {
    }

    // 登录界面
    public void ShowLoginView () {
        Debug.Log("wang ==> ShowLoginView KKKAndroidBehaviour ");
#if UNITY_ANDROID
        AndroidJavaClass jc = new AndroidJavaClass ("com.unity3d.player.UnityPlayer");
        AndroidJavaObject jo = jc.GetStatic<AndroidJavaObject> ("currentActivity");
        jo.Call ("showLoginView");

        // wang 修改 
        luaContext.doString("SdkManager.Instance:OnloginOnFinishNew('" + "" + "_" + "" + "', '" + "" + "','" + "" + "', '" + "" + "','" + "" + "','" + "" + "');");

#endif
    }

    // 登录完成
    public void OnloginOnFinish (string param) {
        JsonData jsonData = JsonMapper.ToObject (param);
        // map.put("uid", uid);
		// map.put("chanled", "" + chanlid);
		// map.put("timestamp", timestamp);
		// map.put("sign", sign);
        string uid = (string)jsonData["uid"];
        string chanlid = (string)jsonData["chanlid"];
        string timestamp = (string)jsonData["timestamp"];
        string sign = (string)jsonData["sign"];
        string guid = (string)jsonData["guid"];
        string cp_ext = (string)jsonData["cp_ext"];

        // string isReward = "false";
        // try {
        //     if (jsonData["isReward"] != null) {
        //         string isw = (string)jsonData["isReward"];
        //         if ("true".Equals(isw)) {
        //             isReward = "true";
        //         }
        //     }
        // } catch (Exception e) {
        //     Log.Error(e.Message);
        // }
        // luaContext.doString (string.Format ("SdkManager.Instance:OnloginOnFinishNew('" + uid + "_" + chanlid + "', '" + uid +"','" + timestamp + "', '" + sign + "', '" + isReward + "');"));
        //luaContext.doString(string.Format("SdkManager.Instance:OnloginOnFinishNew('" + uid + "_" + chanlid + "', '" + uid + "','" + timestamp + "', '" + sign + "','" + guid + "','" + cp_ext + "');"));
        luaContext.doString("SdkManager.Instance:OnloginOnFinishNew('" + uid + "_" + chanlid + "', '" + uid + "','" + timestamp + "', '" + sign + "','" + guid + "','" + cp_ext + "');");

        // old
        // luaContext.doString (string.Format ("SdkManager.Instance:OnloginOnFinish('" + param + "');"));
    }

    // 充值界面
    public void ShowChargeView (LuaTable table) {
        float time = Time.time;
        if ((time - clickChargeTime) < 1) {
            return;
        } else {
            clickChargeTime = time;
        }
        int amount = (int)(Double)table["amount"];
        string productId = (string)table["productId"];
        string productName = (string)table["productName"];
        string callbackURL = (string)table["callbackURL"];
        string callbackInfo = (string)table["callbackInfo"];
        string des = (string)table["des"];
        string chargeMount = (string)table["chargeMount"];
        string serverId = (string)table["serverId"];
        string serverName = (string)table["serverName"];
        string roleName = (string)table["roleName"];
        string roleId = (string)table["roleId"];
        string rate = (string)table["rate"];
        string roleLevel = (string)table["roleLevel"];
        string sociaty = (string)table["sociaty"];
        string lastMoney = (string)table["lastMoney"];
        string vipLevel = (string)table["vipLevel"];
        string sociatylevel = (string)table["sociatylevel"];
        string petlevel = (string)table["petlevel"];
        
        JsonData json = new JsonData();
        json["amount"] = amount;
        json["productId"] = productId;
        json["productName"] = productName;
        json["callbackURL"] = callbackURL;
        json["callbackInfo"] = callbackInfo;
        json["des"] = des;
        json["chargeMount"] = chargeMount;
        json["serverId"] = serverId;
        json["serverName"] = serverName;
        json["roleName"] = roleName;
        json["roleId"] = roleId;
        json["rate"] = rate;
        json["roleLevel"] = roleLevel;
        json["sociaty"] = sociaty;
        json["lastMoney"] = lastMoney;
        json["vipLevel"] = vipLevel;
        json["sociatylevel"] = sociatylevel;
        json["petlevel"] = petlevel;

#if UNITY_ANDROID
        AndroidJavaClass jc = new AndroidJavaClass ("com.unity3d.player.UnityPlayer");
        AndroidJavaObject jo = jc.GetStatic<AndroidJavaObject> ("currentActivity");
        jo.Call ("ShowChargeView", json.ToJson());
#endif
    }

    // 角色创建接口
    public void SendExtendDataRoleCreate (LuaTable table) {
        JsonData json = ConvertExtendData (table);
#if UNITY_ANDROID
        AndroidJavaClass jc = new AndroidJavaClass ("com.unity3d.player.UnityPlayer");
        AndroidJavaObject jo = jc.GetStatic<AndroidJavaObject> ("currentActivity");
        jo.Call ("SendExtendDataRoleCreate", json.ToJson ());
#endif
    }

    // 角色登录完成接口
    public void SendExtendDataRoleLogin (LuaTable table) {
        JsonData json = ConvertExtendData (table);
#if UNITY_ANDROID
        AndroidJavaClass jc = new AndroidJavaClass ("com.unity3d.player.UnityPlayer");
        AndroidJavaObject jo = jc.GetStatic<AndroidJavaObject> ("currentActivity");
        jo.Call ("SendExtendDataRoleLogin", json.ToJson ());
#endif
    }

    // 角色升级接口
    public void SendExtendDataRoleLevelUpdate (LuaTable table) {
        JsonData json = ConvertExtendData (table);
#if UNITY_ANDROID
        AndroidJavaClass jc = new AndroidJavaClass ("com.unity3d.player.UnityPlayer");
        AndroidJavaObject jo = jc.GetStatic<AndroidJavaObject> ("currentActivity");
        jo.Call ("SendExtendDataRoleLevelUpdate", json.ToJson ());
#endif
    }

    private JsonData ConvertExtendData (LuaTable table) {
        JsonData json = new JsonData ();
        json["roleId"] = (string)table["roleId"];
        json["roleName"] = (string)table["roleName"];
    	json["roleLevel"] = (string)table["roleLevel"];
    	json["serverId"] = (string)table["serverId"];
    	json["serverName"] = (string)table["serverName"];
    	json["vipLevel"] = (string)table["vipLevel"];
    	json["userMoney"] = (string)table["userMoney"];
        json["timeReg"] = (string)table["time_reg"];
        return json;
    }

    // 显示游戏退出界面
    public void OnShowExitConfirmPanel (string param) {
        luaContext.doString ("ExitConfirmManager.Instance:OpenWindow()");
    }

    // 退回登录页面
    public void OnRelogin (string param) {
        if ("Show".Equals (param)) {
            isRelogin = true;
            luaContext.doString ("LoginManager.Instance:returnto_login(); LoginManager.Instance.model:clear_account_input(); SdkManager.Instance:OnShowLoginViewOnRelogin();");
#if UNITY_ANDROID
            AndroidJavaClass jc = new AndroidJavaClass ("com.unity3d.player.UnityPlayer");
        	AndroidJavaObject jo = jc.GetStatic<AndroidJavaObject> ("currentActivity");
        	jo.Call ("OnShowLoginView");
#endif
        } else {
            luaContext.doString ("LoginManager.Instance:returnto_login()");
        }
    }

    // 返回键
    public void OnBackButtonClick () {
#if UNITY_ANDROID
        AndroidJavaClass jc = new AndroidJavaClass ("com.unity3d.player.UnityPlayer");
        AndroidJavaObject jo = jc.GetStatic<AndroidJavaObject> ("currentActivity");
        jo.Call ("OnBackButtonClick");
#endif
    }

    // 显示登录页
    public void OnShowLoginView () {
#if UNITY_ANDROID
        if (isRelogin) {
            AndroidJavaClass jc = new AndroidJavaClass ("com.unity3d.player.UnityPlayer");
        	AndroidJavaObject jo = jc.GetStatic<AndroidJavaObject> ("currentActivity");
        	jo.Call ("OnShowReLoginView");
            // isRelogin = false; 
        } else {
            AndroidJavaClass jc = new AndroidJavaClass ("com.unity3d.player.UnityPlayer");
        	AndroidJavaObject jo = jc.GetStatic<AndroidJavaObject> ("currentActivity");
        	jo.Call ("OnShowLoginView");
        }
#endif
    }


    /// <summary>
    /// 进入后台
    /// </summary>
    public void OnPause () {
        CSSleepManager.GetInstance ().OnPause();
    }
    
    /// <summary>
    /// 重新激活
    /// </summary>
    public void OnResume () {
        CSSleepManager.GetInstance ().OnResume();
        CSSleepManager.GetInstance ().OnWakeUp ();
    }

    /// <summary>
    /// 打开文字输入面板
    /// </summary>
    /// <param name="fromId"></param>
    /// <param name="keyboardType"></param>
    /// <param name="x"></param>
    /// <param name="y"></param>
    /// <param name="fontSize"></param>
    /// <param name="gravity"></param>
    /// <param name="width"></param>
    /// <param name="text"></param>
    public void ShowInputDialog (int fromId, int keyboardType, int x, int y, int fontSize, int gravity, int width, string text) {
#if UNITY_ANDROID
        AndroidJavaClass jc = new AndroidJavaClass ("com.unity3d.player.UnityPlayer");
        AndroidJavaObject jo = jc.GetStatic<AndroidJavaObject> ("currentActivity");
        jo.Call ("ShowInputDialog", fromId, keyboardType, x, y, fontSize, gravity, width, text);
#endif
    }

    public void ShowInputDialogWhite(int fromId, int keyboardType, int x, int y, int fontSize, int gravity, int width, string text) {
#if UNITY_ANDROID
        AndroidJavaClass jc = new AndroidJavaClass ("com.unity3d.player.UnityPlayer");
        AndroidJavaObject jo = jc.GetStatic<AndroidJavaObject> ("currentActivity");
        jo.Call ("ShowInputDialogWhite", fromId, keyboardType, x, y, fontSize, gravity, width, text);
#endif
    }

    public void HideInputDialog () {
#if UNITY_ANDROID
        AndroidJavaClass jc = new AndroidJavaClass ("com.unity3d.player.UnityPlayer");
        AndroidJavaObject jo = jc.GetStatic<AndroidJavaObject> ("currentActivity");
        jo.Call ("HideInputDialog");
#endif
    }

    public void OnInputDialogClose (string msg) {
#if UNITY_ANDROID
        if (msg != null && msg.Trim ().Length > 0) {
            JsonData jsonData = JsonMapper.ToObject (msg);
            string fromId = @jsonData["fromId"].ToString ();
            string actionType = @jsonData["actionType"].ToString ();
            string text = @jsonData["text"].ToString ();
            luaContext.doString (string.Format ("SdkManager.Instance:OnInputDialogClose('" + fromId + "', '" + actionType + "', [[" + text + "]]);"));
        }
#endif
    }

    public string GetDeviceIdIMEI () {
        string deviceId = "10000";
#if UNITY_ANDROID
        AndroidJavaClass jc = new AndroidJavaClass ("com.unity3d.player.UnityPlayer");
        AndroidJavaObject jo = jc.GetStatic<AndroidJavaObject> ("currentActivity");
        deviceId = jo.Call<string> ("GetDeviceIdIMEI");
#endif
        return deviceId;
    }

    public void ExitGame () {
        Application.Quit ();
    }

    public void GetVIPGrade() {
#if UNITY_ANDROID
        AndroidJavaClass jc = new AndroidJavaClass ("com.unity3d.player.UnityPlayer");
        AndroidJavaObject jo = jc.GetStatic<AndroidJavaObject> ("currentActivity");
        jo.Call ("getVIPGrade");
#endif
    }


    public bool isRealName() {
        bool isReal = false;
//#if UNITY_ANDROID
//        AndroidJavaClass jc = new AndroidJavaClass ("com.unity3d.player.UnityPlayer");
//        AndroidJavaObject jo = jc.GetStatic<AndroidJavaObject> ("currentActivity");
//        isReal = jo.Call<bool> ("isRealName");
//#endif
        return isReal;
    }

    public int getUserAge() {
        int age = 0;
#if UNITY_ANDROID
        AndroidJavaClass jc = new AndroidJavaClass ("com.unity3d.player.UnityPlayer");
        AndroidJavaObject jo = jc.GetStatic<AndroidJavaObject> ("currentActivity");
        age = jo.Call<int> ("getUserAge");
#endif
        return age;
    }

    // 打开实名制页面
    public void OpenRealNameWindow() {
#if UNITY_ANDROID
        AndroidJavaClass jc = new AndroidJavaClass ("com.unity3d.player.UnityPlayer");
        AndroidJavaObject jo = jc.GetStatic<AndroidJavaObject> ("currentActivity");
        jo.Call ("showPersonView");
#endif
    }

    public void OnRealName(string age) {
        luaContext.doString("SdkManager.Instance:OnRealNameReturn(" + age + ")");
    }

    public void OpenOnlineGmWindow(string url) {
#if UNITY_ANDROID
        AndroidJavaClass jc = new AndroidJavaClass ("com.unity3d.player.UnityPlayer");
        AndroidJavaObject jo = jc.GetStatic<AndroidJavaObject> ("currentActivity");
        jo.Call ("openOnlineGmWindow", url);
#endif
    }

    // 获取绑定手机状态
    public string CheckBindPhone() {
        string state = "";
#if UNITY_ANDROID
        AndroidJavaClass jc = new AndroidJavaClass ("com.unity3d.player.UnityPlayer");
        AndroidJavaObject jo = jc.GetStatic<AndroidJavaObject> ("currentActivity");
        state = jo.Call<string>("checkBindPhone");
#endif
        return state;
    }

    // 绑定手机页面返回
    public void BindPhone(string param) {
        if ("onFailure".Equals(param)) {
            luaContext.doString("SdkManager.Instance:OnBindPhoneReturn(onFailure);");
        }
        else {
            luaContext.doString("SdkManager.Instance:OnBindPhoneReturn(" + param + ")");
        }
    }

    // 打开绑定手机页面
    public void OpenBindPhoneWindow() {
#if UNITY_ANDROID
        AndroidJavaClass jc = new AndroidJavaClass ("com.unity3d.player.UnityPlayer");
        AndroidJavaObject jo = jc.GetStatic<AndroidJavaObject> ("currentActivity");
        jo.Call ("showBindPhoneView");
#endif
    }
}
