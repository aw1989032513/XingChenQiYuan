using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using SLua;

[CustomLuaClass]
public class RemoteConfig {

    // apk大小
    public string size = null;
    // apk版本
    public string apkVersion = null;
    // 服务器列表路径
    public string serverListPath = null;
    // apk下载路径
    public string apkPath = null;
    // 一服cdn路径
    public string firstCdnPath = null;
    // cdn路径
    public string cdnPath = null;
}
