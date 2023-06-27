using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using UnityEngine;

using LitJson;

public class VersionReader {

    private string file = null;
    private bool isFile = true;
    private bool useList = false;
    public Dictionary<string, VersionAsset> dict = new Dictionary<string, VersionAsset> ();
    public List<VersionAsset> list = new List<VersionAsset> ();

    public VersionReader (bool useList, string file, bool isFile = true) {
        this.file = file;
        this.isFile = isFile;
        this.useList = useList;
        Parse ();
    }

    public void Parse () {
        string detail = "";
        if (isFile) {
            detail = System.Text.Encoding.UTF8.GetString(Utils.Decompress (File.ReadAllBytes (this.file)));
        } else {
            detail = this.file;
        }
        JsonData jsonData = JsonMapper.ToObject (detail);
        int count = jsonData.Count;
        string target = "";
        string origin = "";
        string size = "";
        string md5 = "";
        string patchVersion = "";
        for (int i = 0; i < count; i++) {
            JsonData data = jsonData[i];
            target = data["target"].ToString ();
            origin = data["origin"].ToString ();
            size = data["size"].ToString ();
            md5 = data["md5"].ToString ();
            patchVersion = data["patchVersion"].ToString ();
            if (useList) {
                list.Add (new VersionAsset (target, origin, size, md5, patchVersion));
            } else {
                dict.Add (target, new VersionAsset (target, origin, size, md5, patchVersion));
            }
        }
    }
}

public class VersionAsset {

    private string target = null;
    private string origin = null;
    private string size = null;
    private string md5 = null;
    private string patchVersion = null;

    public string Target { get { return target; } }
    public string Origin { get { return origin; } }
    public string Size { get { return size; } }
    public string Md5 { get { return md5; } }
    public string PatchVersion { get { return patchVersion; } }

    public VersionAsset (string target, string origin, string size, string md5, string patchVersion) {
        this.target = target;
        this.origin = origin;
        this.size = size;
        this.md5 = md5;
        this.patchVersion = patchVersion;
    }
}