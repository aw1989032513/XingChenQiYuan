using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using UnityEngine;
using ICSharpCode.SharpZipLib.Zip;

public class GameEnter : MonoBehaviour {

    private GameContext context = null;
    private TimerManager timerManager = null;


#if UNITY_ANDROID
	AndroidJavaObject activity;
#endif

	void Awake() {
        DontDestroyOnLoad (gameObject);
        // 基础设置
        Screen.sleepTimeout = SleepTimeout.NeverSleep;
        Screen.autorotateToLandscapeLeft = true;
        Screen.autorotateToLandscapeRight = true;
        Screen.autorotateToPortrait = false;
        Screen.autorotateToPortraitUpsideDown = false;
        QualitySettings.vSyncCount = 0;
        Application.targetFrameRate = 45;
        ZipConstants.DefaultCodePage = System.Text.Encoding.UTF8.CodePage;
        context = GameContext.GetInstance ();
        timerManager = TimerManager.GetInstance ();
        context.Activate (this);
        base.InvokeRepeating("OnManagerTimer", 1f, 0.05f);

#if UNITY_ANDROID
		AndroidJavaClass jc = new AndroidJavaClass("com.unity3d.player.UnityPlayer");
		activity = jc.GetStatic<AndroidJavaObject>("currentActivity");
#endif
	}


#if UNITY_ANDROID
	void OnApplicationFocus(bool focusStatus)
	{
		if (focusStatus)
		{
			TurnImmersiveModeOn();
		}
	}

	void TurnImmersiveModeOn()
	{
		activity.Call("setUiVisibility");
	}
#endif

	void Update () {
    }

    void FixedUpdate () {
        context.Tick();
    }

    private void OnManagerTimer () {
        timerManager.OnTick ();
        CSSleepManager.GetInstance ().OnTick ();
    }

    void OnApplicationQuit() {
        if (context.Socket != null)
            context.Socket.Dispose();
    }
}
