using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public class AssetBundleBase {

    public static int LOCAL = 1;
    public static int STREAMING = 2;
    public static int REMOTE = 3;

    // 源文件
    public string SourcePath { get; set; }
    // 真实位置
    public string Realpath { get; set; }
    // 依赖的文件
    public string[] Depends { get; set; }
    // 目标文件hash
    public string Hash { get; set; }
    // 资源文件尺寸
    public string Size { get; set; }
    // 类型 1:Local 2:Streaming 3:Remote
    public int ResType { get; set; }

    // 加载类型 1：www; 2:LoadFromCacheOrDownload
    private int loadType = 1;
    public int LoadType {
        get {
            return loadType;
        }
        set {
            loadType = value;
        }
    }
}
