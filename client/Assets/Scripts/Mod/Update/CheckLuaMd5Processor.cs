using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class CheckLuaMd5Processor : IProcessor {

    private GameContext ctx = null;
    private Action endEvent = null;

    public CheckLuaMd5Processor (GameContext ctx) {
        this.ctx = ctx;
    }

    public void Deal () {
        this.ctx.LoadingPage.Show ("检查资源完整性");
    	TimerManager.GetInstance ().AddTimerTask (new TimerTask (200, DoDeal));
    }

    public void DoDeal () {
        if (this.ctx.CheckLuaMd5) {
            Dictionary<string, bool> dict = new Dictionary<string, bool> ();
            ScanLocalDir (dict, "", new DirectoryInfo (GameContext.GetInstance ().ResourcesPath));
            string file = GameContext.GetInstance ().ResourcesPath + "/version.json";
            VersionReader reader = new VersionReader (false, file);
            bool pass = true;
            foreach (string key in dict.Keys) {
                if (reader.dict.ContainsKey (key) && key.EndsWith("lua")) {
                    string vmd5 = reader.dict[key].Md5;
                    string localMd5 = MD5HashFromFile (GameContext.GetInstance ().ResourcesPath + "/" + key);
                    if (!vmd5.Equals (localMd5)) {
                        pass = false;
                        break;
                    }
                }
            }
            if (pass) {
                Fire ();
            } else {
                ctx.AlertWindow.OnSumbitClickEvent = DoSumbit;
                ctx.AlertWindow.SetYellowTxt ("点击取消退出游戏");
                ctx.AlertWindow.SetTipsTxt ("资源版本信息有误，请重新更新资源");
                ctx.AlertWindow.Show ();
            }
        } else {
            Fire ();
        }
    }

    public void DoSumbit () {
        Clean ();
        Application.Quit ();
    }

    public void AddEndEvent (Action action) {
        endEvent += action;
    }

    public void Fire () {
        if (endEvent != null) {
            endEvent ();
        }
    }

    private string MD5HashFromFile (string fileName) {
        try {
            FileStream file = new FileStream (fileName, FileMode.Open);
            System.Security.Cryptography.MD5 md5 = new System.Security.Cryptography.MD5CryptoServiceProvider ();
            byte[] retVal = md5.ComputeHash (file);
            file.Close ();
            StringBuilder sb = new StringBuilder ();
            for (int i = 0; i < retVal.Length; i++) {
                sb.Append (retVal[i].ToString ("x2"));
            }
            return sb.ToString ();
        } catch (Exception ex) {
            throw new Exception ("GetMD5HashFromFile() fail,error:" + ex.Message);
        }
    }

    private void ScanLocalDir (Dictionary<string, bool> dict, string path, DirectoryInfo dir) {
        FileInfo[] files = dir.GetFiles ();
        DirectoryInfo[] dirs = dir.GetDirectories ();
        foreach(FileInfo file in files) {
            dict.Add (path + file.Name, true);
        }
        foreach(DirectoryInfo dirInfo in dirs){
            ScanLocalDir (dict, path + dirInfo.Name + "/", dirInfo);
        }
    }

    private void Clean () {
        DirectoryInfo dir = new DirectoryInfo (ctx.ResourcesPath);
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
}
