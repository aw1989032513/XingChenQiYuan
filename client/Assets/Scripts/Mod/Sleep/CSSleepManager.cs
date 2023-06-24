using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using UnityEngine;

using SLua;

public class CSSleepManager {

    private static CSSleepManager instance = null;

    private LuaFunction onWakeUp = null;
    private LuaFunction onSleep = null;
    private LuaFunction onPause = null;
    private LuaFunction onResume = null;

    private LuaTable insTable = null;

    public bool canCheck = false;

    public bool IsWakeUp = true;
    private bool touch = false;
    private int idelCount = 0;
    private int sleepLight = 0;

    // 保存进入睡眠前的屏幕亮度
    private int normalLight = 0;

    private CSSleepManager () {
    }

    public static CSSleepManager GetInstance () {
        if (instance == null) {
            instance = new CSSleepManager ();
        }
        return instance;
    }

    public void OnWakeUp () {
        // IsWakeUp = true;
        idelCount = 0;
        if (onWakeUp == null) {
            InitFunction ();
        }
        if (onWakeUp != null) {
            onWakeUp.call (insTable);
        }
    }

    public void OnSleep () {
        IsWakeUp = false;
        idelCount = 0;
        if (onSleep == null) {
            InitFunction ();
        }
        if (onSleep != null) {
            onSleep.call (insTable);
        }
    }

    /// <summary>
    /// 进入后台
    /// </summary>
    public void OnPause () {
        if (onPause == null) {
            InitFunction ();
        }
        if (onPause != null) {
            onPause.call (insTable);
        }
    }
    
    /// <summary>
    /// 重新激活
    /// </summary>
    public void OnResume () {
        if (onResume == null) {
            InitFunction ();
        }
        if (onPause != null) {
            onResume.call (insTable);
        }
    }

    public void InitFunction () {
        LuaState luaState = LuaSrvManager.GetInstance().LuaState;
        LuaTable clsTable = (LuaTable)luaState["SleepManager"];
        if (clsTable != null) {
            this.insTable = (LuaTable)clsTable["Instance"];
            if (this.insTable != null) {
                this.onWakeUp = (LuaFunction)insTable["OnWakeUp"];
                this.onSleep = (LuaFunction)insTable["OnSleep"];
                this.onPause = (LuaFunction)insTable["OnPause"];
                this.onResume = (LuaFunction)insTable["OnResume"];
                if (insTable["SleepLight"] != null) {
                    try {
                        this.sleepLight = Convert.ToInt32 (insTable["SleepLight"]);
                    } catch (Exception e) {
                        this.sleepLight = 0;
                    }
                    // Log.Debug("========================================sleepLight:" + this.sleepLight);
                }
            }
        }
    }

    /// <summary>
    /// 0.05秒一野
    /// </summary>
    public void OnTick () {
        if (canCheck) {
            touch = false;
            if (Input.touchCount > 0) {
                touch = true;
            }

            if (touch) {
                idelCount = 0;
                if (!IsWakeUp) {
                    // 睡眠
                    ResetLight ();
                    IsWakeUp = true;
                }
            } else {
                if (IsWakeUp) {
                    // 不触碰 醒着
                    idelCount++;
                    if (idelCount > 6000) {
                        SetLight (this.sleepLight);
                        IsWakeUp = false;
                    }
                } else {
                    // 不触碰 睡眠
                    idelCount = 0;
                }
            }
        }
    }

    /// <summary>
    /// 设置系统亮度
    /// </summary>
    /// <param name="rate">0 - 255</param>
    public void SetLight (int rate) {
        Application.targetFrameRate = 30;
        OnSleep ();
        rate = this.sleepLight;
#if UNITY_ANDROID
        AndroidJavaClass jc = new AndroidJavaClass ("com.unity3d.player.UnityPlayer");
        AndroidJavaObject jo = jc.GetStatic<AndroidJavaObject> ("currentActivity");
        jo.Call ("SetLight", rate);
#elif UNITY_IOS
        normalLight = BaseApi.GetScreenBrightness(); // 记录进入睡眠前的亮度
        float percent = (float)rate / 255 * 100; // 转为百分比
        BaseApi.SetScreenBrightness((int)percent);
#endif
    }

    public void ResetLight () {
        Application.targetFrameRate = 45;
        OnWakeUp ();
#if UNITY_ANDROID
        AndroidJavaClass jc = new AndroidJavaClass ("com.unity3d.player.UnityPlayer");
        AndroidJavaObject jo = jc.GetStatic<AndroidJavaObject> ("currentActivity");
        jo.Call ("ResetLight");
#elif UNITY_IOS
        if(normalLight > 0){
            BaseApi.SetScreenBrightness(normalLight);
        }
#endif
    }
}
