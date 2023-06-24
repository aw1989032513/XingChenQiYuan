/*---------------------------------------------------------*
 * 拍照相关接口
 *
 * @author yeahoo2000@gmail.com
 *---------------------------------------------------------*/
using UnityEngine;
using System;
using System.Runtime.InteropServices;
using SLua;

public delegate void WebcamCallback(string filepath, string filename);
[CustomLuaClass]
public class Webcam : MonoBehaviour{
    private Action<string, string> callback;
    // 照片临时保存路径，注意：路径末尾要带上'/'
    private readonly string photoSavePath = Application.persistentDataPath + "/tmp/";
    // 照片临时保存名称
    private readonly string photoSaveName = "webcam_photo.png";

#if UNITY_IOS
    [DllImport("__Internal")]
	private static extern void _OpenPhotoGallery(string filepath, string filename);
    [DllImport("__Internal")]
	private static extern void _TakePhoto(string filepath, string filename);
#endif

    /// <summary>
    /// 初始化函数
    /// </summary>
    public static Webcam Init(Transform parent, Action<string, string> callback){
        var go = new GameObject("WebcamProxy");
        var webcam = go.AddComponent<Webcam>();
        go.transform.parent = parent;
        webcam.callback = callback;
        
        return webcam;
    }

    void Awake(){
    }

    /// <summary>
    /// 设置处理结果回调
    /// </summary>
    /// <param name="cb">回调函数</param>
    public void SetCallback(Action<string, string> cb){
        callback = cb;
    }

    /// <summary>
    /// 拍照
    /// </summary>
    public void TakePhoto(){
#if UNITY_ANDROID
        // var currentActivity = new AndroidJavaClass("com.unity3d.player.UnityPlayer").GetStatic<AndroidJavaObject>("currentActivity");
        // new AndroidJavaClass("com.shiyuegame.fswy.WebcamActivity").CallStatic("startService", currentActivity, "TakePhoto", photoSavePath, photoSaveName);
        AndroidJavaClass jc = new AndroidJavaClass ("com.unity3d.player.UnityPlayer");
        AndroidJavaObject jo = jc.GetStatic<AndroidJavaObject> ("currentActivity");
        jo.Call ("startWebcamService", "TakePhoto", photoSavePath, photoSaveName);
#elif UNITY_IOS
		_TakePhoto(photoSavePath, photoSaveName);
#else
        Debug.LogError("暂不支持此平台的拍照功能");
#endif
    }

    /// <summary>
    /// 从相册中选取照片
    /// </summary>
    public void OpenPhotoGallery(){
#if UNITY_ANDROID
        var currentActivity = new AndroidJavaClass("com.unity3d.player.UnityPlayer").GetStatic<AndroidJavaObject>("currentActivity");
        new AndroidJavaClass("com.shiyuegame.fswy.WebcamActivity").CallStatic("startService", currentActivity, "OpenPhotoGallery", photoSavePath, photoSaveName);
#elif UNITY_IOS
		_OpenPhotoGallery(photoSavePath, photoSaveName);
#else
        Debug.LogError("暂不支持此平台的照片选取功能");
#endif
    }

    /// <summary>
    /// 接收处理结果(供android底层调用)
    /// <param name="errorMessage">错误信息，为空表示处理成功</param>
    /// </summary>
    public void MessageArrive(string errorMessage){
        if(!"success".Equals(errorMessage)){
            Debug.LogError("拍照或打开相册失败: " + errorMessage); 
            return;
        }
        if(callback == null) return;
        callback(photoSavePath, photoSaveName);
    }
}
