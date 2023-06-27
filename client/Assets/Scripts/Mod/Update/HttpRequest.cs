using System;
using System.IO;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;

using UnityEngine;

public class HttpRequest {

    private GameContext ctx = null;
    private AssetBundleManager assetMgr = null;
    private RequestInfo requestInfo = null;

    private TimerTask checkTask = null;
    private int progress = 0;
    private int totalTryCount = 1;
    private int tryCount = 0;
    private Regex pattern = null;

    public HttpRequest (RequestInfo requestInfo) {
        ctx = GameContext.GetInstance ();
        assetMgr = ctx.AssetBundleManager;
        this.requestInfo = requestInfo;
        totalTryCount = requestInfo.tryCount;
    }

    public void Download () {
        ctx.AlertWindow.Hide ();
        ctx.AssetBundleManager.StartCoroutine (DoDownload ());
    }


    private IEnumerator DoDownload() {
        string path = requestInfo.path;
        if (requestInfo.isHttps) {
            tryCount++;
            if (tryCount == 3) {
                if (pattern == null) {
                    pattern = new Regex(@"^https", RegexOptions.IgnoreCase);
                }
                if (pattern.IsMatch(path)) {
                    path = "http" + path.Substring(5);
                }
            }
        }
        if (requestInfo.useRandom) {
            System.Random random = new System.Random ();
            path = path + "?randow=" + random.Next (10000);
        }
        if (requestInfo.www != null) {
            requestInfo.www.Dispose ();
            requestInfo.www = null;
        }

        requestInfo.www = new WWW (path);
        progress = 0;
        checkTask = new TimerTask (15000, CheckProgress);
        TimerManager.GetInstance ().AddTimerTask (checkTask);
        yield return requestInfo.www;

        TimerManager.GetInstance ().RemoveTask(checkTask);
        if (null != requestInfo.www.error) {
            if (null != requestInfo.failCallback) {
                try {
                    requestInfo.tryCount--;
                    if (requestInfo.tryCount <= 0) {
                        requestInfo.failCallback (requestInfo.www.error);
                        if (requestInfo.www != null) {
        				    requestInfo.www.Dispose ();
        				    requestInfo.www = null;
        				}
                    } else {
                        if (requestInfo.alertTxt != null && requestInfo.alertTxt.Trim ().Length > 0) {
                            ctx.AlertWindow.OnSumbitClickEvent = Download;
                            ctx.AlertWindow.SetYellowTxt ("点击取消退出游戏");
                            ctx.AlertWindow.SetTipsTxt (requestInfo.alertTxt);
                            ctx.AlertWindow.Show (Download);
                        } else {
                            Download ();
                        }
                    }
                } catch (Exception e) {
                    Log.Error (path + "回调函数fail执行异常:" + e.Message);
                }
            } else {
                Debug.LogError (string.Format ("文件加载失败 {0}，原因: {1}", path, requestInfo.www.error));
            }
        } else {
            if (null != requestInfo.succeCallback) {
                try {
                    requestInfo.succeCallback(requestInfo.www, requestInfo.args);
                } catch (Exception e) {
                    Debug.LogException (e);
                    Log.Error (path + "回调函数succe执行异常:" + e.Message);
                }
            }
        }
    }

    public void CheckProgress () 
    {
        // wang  修改 屏蔽自動下載
        /*
        if (requestInfo != null && requestInfo.www != null) {
            int pg = (int)(requestInfo.www.progress * 1000);
            if (pg > progress) {
                progress = pg;
                checkTask = new TimerTask (15000, CheckProgress);
                TimerManager.GetInstance ().AddTimerTask (checkTask);
            } else {
                try {
                    try {
                        requestInfo.www.Dispose ();
                        requestInfo.www = null;
                    } catch (Exception e) {
                        Log.Error (requestInfo.path + "CheckProgress执行异常:" + e.Message);
                    }
                    requestInfo.tryCount--;
                    if (requestInfo.tryCount <= 0) {
                        requestInfo.failCallback (requestInfo.www.error);
                    } else {
                        if (requestInfo.alertTxt != null && requestInfo.alertTxt.Trim ().Length > 0) {
                            ctx.AlertWindow.OnSumbitClickEvent = Download;
                            ctx.AlertWindow.SetYellowTxt ("点击取消退出游戏");
                            ctx.AlertWindow.SetTipsTxt (requestInfo.alertTxt);
                            ctx.AlertWindow.Show (Download);
                        } else {
                            Download ();
                        }
                    }
                } catch (Exception e) {
                    Log.Error (requestInfo.path + "回调函数fail执行异常:" + e.Message);
                }
            }
        }*/
    }
}

public class RequestInfo {

    public string path = null;
    public Action<WWW, string> succeCallback = null;
    public Action<string> failCallback = null;
    public string alertTxt = "";
    public int tryCount = 1;
    public bool useRandom = false;
    public WWW www = null;
    public string args = "";
    public bool isHttps = false;

    public RequestInfo () {
    }
}
