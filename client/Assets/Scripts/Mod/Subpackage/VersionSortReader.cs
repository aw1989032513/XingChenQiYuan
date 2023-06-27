using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using UnityEngine;

using LitJson;

public class VersionSortReader {

    private string file = null;
    private bool isFile = true;
    private bool useList = false;
    public Dictionary<string, VersionSortAsset> dict = new Dictionary<string, VersionSortAsset> ();
    public List<VersionSortAsset> list = new List<VersionSortAsset> ();
    public string subVersion = null;

    public VersionSortReader (bool useList, string file, bool isFile = true) {
        this.file = file;
        this.isFile = isFile;
        this.useList = useList;
        Parse ();
    }

    public void Parse () {
        string detail = "";
        if (isFile) {
            detail = System.Text.Encoding.UTF8.GetString(Utils.Decompress (File.ReadAllBytes (this.file)));
            // detail = File.ReadAllText (this.file);
        } else {
            detail = this.file;
        }
        JsonData jsonData = JsonMapper.ToObject (detail);
        subVersion = jsonData["version"].ToString ();
        JsonData listData = jsonData["list"];

        int count = listData.Count;
        string target = "";
        string origin = "";
        string size = "";
        string md5 = "";
        string sort = "";
        for (int i = 0; i < count; i++) {
            JsonData data = listData[i];
            target = data["target"].ToString ();
            origin = data["origin"].ToString ();
            size = data["size"].ToString ();
            md5 = data["md5"].ToString ();
            sort = data["sort"].ToString ();
            if (useList) {
                list.Add (new VersionSortAsset (target, origin, size, md5, sort));
            } else {
                dict.Add (target, new VersionSortAsset (target, origin, size, md5, sort));
            }
        }
    }
}

public class VersionSortAsset : IComparable {

    private string target = null;
    private string origin = null;
    private string size = null;
    private string md5 = null;
    private string sort = null;

    public string Target { get { return target; } }
    public string Origin { get { return origin; } }
    public string Size { get { return size; } }
    public string Md5 { get { return md5; } }
    public string Sort { get { return sort; } }

    public int status = 1; // 1:待下载 2：待写文件 3：完成

    public VersionSortAsset (string target, string origin, string size, string md5, string sort) {
        this.target = target;
        this.origin = origin;
        this.size = size;
        this.md5 = md5;
        this.sort = sort;
    }

    public int CompareTo (object obj) {
        VersionSortAsset n = obj as VersionSortAsset;
        if (sort != null && n.sort != null) {
            return n.sort.CompareTo (sort);
        } else {
            return 0;
        }
    }
    
}
