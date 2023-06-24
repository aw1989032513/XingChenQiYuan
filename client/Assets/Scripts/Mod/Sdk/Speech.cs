/*---------------------------------------------------------*
 * 语音功能封装，包括以下功能:
 *
 * 使用原生录音机录音
 * 语音识别
 * speex编码/解码
 * PCM转AudioClip
 *
 * 注意: 目前只支持android和IOS
 *
 * @author yeahoo2000@gmail.com
 *---------------------------------------------------------*/
using UnityEngine;

using System;
using System.IO;
using System.Collections;
using System.Runtime.InteropServices;

using LitJson;

using SLua;

[CustomLuaClass]
public class Speech : MonoBehaviour{
    private static Speech instance;
    public static Speech Instance{ get{ return instance; } }
    private string wavFilePath;
    private Action<string> callback;

#if UNITY_ANDROID
    private AndroidJavaObject speechService;
    private AndroidJavaObject audioRecorder;
    private AndroidJavaObject currentActivity;
#endif

// 映射IOS相关的底层API
#if UNITY_IOS
    [DllImport("__Internal")]
    private static extern bool _AudioRecorderInit(int sampleRate, string filepath);
    [DllImport("__Internal")]
    private static extern bool _AudioRecorderIsRecording();
    [DllImport("__Internal")]
    private static extern bool _AudioRecorderStart();
    [DllImport("__Internal")]
    private static extern void _AudioRecorderStop();
    [DllImport("__Internal")]
    private static extern void _AudioPlayerSetVolume(int volume);
    [DllImport("__Internal")]
    private static extern int _AudioPlayerGetVolume();

    [DllImport("__Internal")]
	private static extern void _SpeechInit();
    [DllImport("__Internal")]
	private static extern void _SpeechRecognize(byte[] data, int length);
#endif

#if UNITY_IOS && !UNITY_EDITOR
    const string BASEAPI_DLL = "__Internal";
#else
    const string BASEAPI_DLL = "baseapi";
#endif

    [DllImport(BASEAPI_DLL)]
	private static extern bool baseapi_speex_encode(string infile, string outfile);
    [DllImport(BASEAPI_DLL)]
	private static extern bool baseapi_speex_decode(string infile, string outfile);

    private bool initSpeech = false;

    /// <summary>
    /// 初始化函数
    /// </summary>
    public static Speech Init(Transform parent, Action<string> callback){
        var go = new GameObject("SpeechProxy");
        var speech = go.AddComponent<Speech>();
        go.transform.parent = parent;
        speech.callback = callback;
        return speech;
    }

    void Awake(){
        if(null != instance){
            throw new Exception("Speech为单例对象，不能重复创建");
        }
        instance = this;

        wavFilePath = Application.persistentDataPath + "/speech.wav";
    }

    void Start(){
#if UNITY_ANDROID
        try{
            currentActivity = new AndroidJavaClass("com.unity3d.player.UnityPlayer").GetStatic<AndroidJavaObject>("currentActivity");
            audioRecorder = new AndroidJavaClass("com.shiyuegame.fswy.AudioRecorder").CallStatic<AndroidJavaObject>("getInstance");
            speechService = new AndroidJavaClass("com.shiyuegame.fswy.Speech").CallStatic<AndroidJavaObject>("getInstance");
            audioRecorder.Call("setCurrentActivity", currentActivity);
        }catch(Exception e){
            Debug.Log("语音识别服务不能启动: " + e);
        }
        if(!AudioRecorderInit(16000, wavFilePath)){
            Debug.LogError("初始化录音机失败");
            return;
        }
        SpeechInit();
        AudioRecorderStart();
        AudioRecorderStop();

        initSpeech = true;
#elif UNITY_IOS

#else
        Debug.Log("当前平台暂不不支持语音识别");
#endif
    }

    /// <summary>
    /// IOS录音初始化
    /// </summary>
    public void Init_IOS() {
        if (!AudioRecorderInit(16000, wavFilePath)) {
            Debug.LogError("初始化录音机失败");
            return;
        }
        SpeechInit();
        //AudioRecorderStart();
        AudioRecorderStop();

        initSpeech = true;
    }

    /// <summary>
    /// 开始录音
    /// </summary>
    public bool Begin(){
#if UNITY_IOS
        if (!initSpeech) {
            this.Init_IOS();
        }
#endif
        return AudioRecorderStart();
    }

    /// <summary>
    /// 取消录音
    /// </summary>
    public void Cancel(){
        AudioRecorderStop();
    }

    /// <summary>
    /// 结束录音，随后会将录音进行语音识别
    /// </summary>
    public AudioClip End(bool isRecognize = true){
        if(!AudioRecorderIsRecording()) return null;
        AudioRecorderStop();

        var wav = File.ReadAllBytes(wavFilePath);
        var pcm = new byte[wav.Length - 44];
        Array.Copy(wav, 44, pcm, 0, pcm.Length);

        if (isRecognize) {
            SpeechRecognize(wav);
        }

        return PcmToAudioClip(pcm);
    }

    /// <summary>
    /// 获取当前播放音量原始值(仅供android使用)
    /// 返回音量等级
    /// </summary>
    public int GetPlayerVolumeRaw(){
#if UNITY_ANDROID
        return audioRecorder.Call<int>("getVolumeRaw");
#endif
        return 0;
    }

    /// <summary>
    /// 设置当前播放音量(仅供android使用)
    /// <param name="volume">音量等级</param>
    /// </summary>
    public void SetPlayerVolumeRaw(int volume){
#if UNITY_ANDROID
        audioRecorder.Call("setVolumeRaw", volume);
#endif
    }

    /// <summary>
    /// 获取当前播放音量
    /// 返回0~100之间的值表示百分比
    /// </summary>
    public int GetPlayerVolume(){
#if UNITY_ANDROID
        return audioRecorder.Call<int>("getVolume");
#elif UNITY_IOS
        return _AudioPlayerGetVolume();
#endif
        return 0;
    }

    /// <summary>
    /// 设置当前播放音量
    /// <param name="percent">传入0~100之间的值表示百分比</param>
    /// </summary>
    public void SetPlayerVolume(int percent){
#if UNITY_ANDROID
        audioRecorder.Call("setVolume", percent);
#elif UNITY_IOS
        _AudioPlayerSetVolume(percent);
#endif
    }

    /// <summary>
	/// 使用speex对wav文件进行压缩编码(有比较高的压缩率)
    /// <param name="infile">wav音频文件，只支持单声道，16k</param>
    /// <param name="outfile">输出文件</param>
    /// </summary>
	public bool CompressAudio(string infile, string outfile){
#if UNITY_ANDROID || UNITY_IOS
		return !baseapi_speex_encode(infile, outfile);
#else
        return false;
#endif
	}

    /// <summary>
	/// 对使用speex编码过的文件进行解码
    /// <param name="infile">已经进行speex编码的文件</param>
    /// <param name="outfile">输出为PCM编码的文件，单声道，16k</param>
    /// </summary>
	public bool DecompressAudio(string infile, string outfile){
#if UNITY_ANDROID || UNITY_IOS
		return !baseapi_speex_decode(infile, outfile);
#else
        return false;
#endif
	}

    /// <summary>
    /// PCM数据转为AudioClip，只支持单声道，16k
    /// <param name="source">原始数据</param>
    /// </summary>
    public AudioClip PcmToAudioClip(byte[] source){
        if(source == null || source.Length == 0){
            return null;
        }

        var samples = new float[source.Length / 2];
        int pos = 0;
        int i = 0;
        while(pos < source.Length){
            samples[i] = BytesToFloat(source[pos], source[pos + 1]);
            pos += 2;
            i++;
        }

        AudioClip audioClip = AudioClip.Create("speech", samples.Length, 1, 16000, false, false);
        audioClip.SetData(samples, 0);
        return audioClip;
    }

    // 转换两位的short 为 一个float
    public static float BytesToFloat(byte firstByte, byte secondByte) {
        short s = (short)((secondByte << 8) | firstByte);
        return s / 32768.0F;
    }

    /// <summary>
    /// 收到来自Speech底层的消息
    /// </summary>
    public void MessageArrive(string result){
        // Debug.Log("收到语音识别结果: " + result);
        if(callback == null) return ;

        var json = JsonMapper.ToObject(result);
        var errCode = (int)json["errCode"];
        var message = json["message"].ToString();
        switch(errCode){
            default:
                Debug.LogError(string.Format("语音识别失败[{0}]: {1}", errCode, message));
                // 识别失败还是让他正常发送，只是没翻译结果而已
                callback("");
                break;
            case 0: // 正常识别
                callback(message);
                break;
        }
    }

    /// <summary>
    /// 语音识别服务初始化
    /// </summary>
    private void SpeechInit(){
#if UNITY_ANDROID
        speechService.Call("init", currentActivity);
#elif UNITY_IOS
        _SpeechInit();
#endif
    }

	// 调用语音识别服务
	private void SpeechRecognize(byte[] data){
#if UNITY_ANDROID
        speechService.Call("speechRecognize", data);
#elif UNITY_IOS
		_SpeechRecognize(data, data.Length);
#endif
	}

    // 录音机初始化
    private bool AudioRecorderInit(int sampleRate, string filepath){
#if UNITY_ANDROID
        return audioRecorder.Call<bool>("init", sampleRate, filepath);
#elif UNITY_IOS
        return _AudioRecorderInit(sampleRate, filepath);
#else
        return false;
#endif
    }

    // 查询录音机是否正在录音中
    private bool AudioRecorderIsRecording(){
#if UNITY_ANDROID
        return audioRecorder.Call<bool>("isRecording");
#elif UNITY_IOS
        return _AudioRecorderIsRecording();
#else
        return false;
#endif
    }

    // 录音机开始录音
    public bool AudioRecorderStart(){
#if UNITY_ANDROID
        return audioRecorder.Call<bool>("start");
#elif UNITY_IOS
        Debug.LogError("录音机开始录音");
        return _AudioRecorderStart();
#else
        return false;
#endif
    }

    // 录音机结束录音
    private void AudioRecorderStop(){
#if UNITY_ANDROID
        audioRecorder.Call("stop");
#elif UNITY_IOS
        _AudioRecorderStop();
#endif
    }
}
