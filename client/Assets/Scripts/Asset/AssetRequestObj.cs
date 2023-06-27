using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public class AssetRequestObj {
    public string file = null;
    /// <summary>
    /// 加载类型 1：www; 2:LoadFromCacheOrDownload
    /// </summary>
    public int loadType = 1;

    public static int LoadTypeWWW = 1;
    public static int LoadTypeCashe = 2;


    public AssetRequestObj (string file, int loadType) {
        this.file = file;
        this.loadType = loadType;
    }
}
