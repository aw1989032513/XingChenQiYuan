using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using LitJson;
using System.Collections;

public class BaseSetting {

    private bool debug = false;
    private string apkVersion = null;
    private string resVersion = null;
    private bool checkApk = false;
    private string checkApkPath = null;
    private string cdnPath = null;
    private bool editor = false;
    private bool remoteLog = false;
    private string serverListPath = null;
    private string downloadApkPath = null;
    private string firstCdnPath = null;

    public bool Debug { get { return debug; } }
    public string ApkVersion { get { return apkVersion; } }
    public string ResVersion { get { return resVersion; } }
    public bool CheckApk { get { return checkApk; } }
    public string CheckApkPath { get { return checkApkPath; } }
    public string CdnPath { get { return cdnPath; } }
    public bool Editor { get { return editor; } }
    public bool RemoteLog { get { return remoteLog; } }
    public string ServerListPath { set { serverListPath = value; } get { return serverListPath; } }
    public string DownloadApkPath { get { return downloadApkPath; } }
    public string FirstCdnPath { get {return firstCdnPath; }}

    public BaseSetting (string content) {
        JsonData jsonData = JsonMapper.ToObject (content);
        string debugstr = @jsonData["debug"].ToString ();
        if ("true".Equals (debugstr)) {
            debug = true;
        } else {
            debug = false;
        }
        apkVersion = @jsonData["apk_version"].ToString ();
        resVersion = @jsonData["res_version"].ToString ();
        string chkApk = @jsonData["check_apk"].ToString ();
        if ("true".Equals (chkApk)) {
            checkApk = true;
        } else {
            checkApk = false;
        }
        checkApkPath = @jsonData["check_apk_path"].ToString ();
        cdnPath = @jsonData["cdn_path"].ToString ();
        string editorstr = @jsonData["editor"].ToString ();
        if ("true".Equals (editorstr)) {
            editor = true;
        } else {
            editor = false;
        }

        string remoteLogStr = @jsonData["remote_log"].ToString ();
        if ("true".Equals (remoteLogStr)) {
            remoteLog = true;
        } else {
            remoteLog = false;
        }
        serverListPath = @jsonData["server_list_path"].ToString ();

        downloadApkPath = @jsonData["download_apk_path"].ToString ();
        firstCdnPath = @jsonData["first_cdn_path"].ToString ();
    }
}
