using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Xml;

/// <summary>
/// 准备patch_version.xml文件
/// </summary>
public class XmlVersionProcessor : IProcessor {

    private Action endEvent = null;
    private GameContext ctx = null;

    public XmlVersionProcessor (GameContext ctx) {
        this.ctx = ctx;
    }

    public void Deal () {
        string path = ctx.ResourcesPath + "/patch_version.xml";
        if (File.Exists (path)) {
            Fire ();
        } else {
            LoadTask task = new LoadTask ("patch_version.xml", OnCompleted);
            ctx.AssetBundleManager.LoadFromStreaming (task);
        }
    }
    private void OnCompleted (LoadTask task) {
        string path = ctx.ResourcesPath + "/patch_version.xml";
        Directory.CreateDirectory (Path.GetDirectoryName (path));
        File.WriteAllBytes (path, task.www.bytes);
        task.www.Dispose ();
        Fire ();
    }

    public void AddEndEvent (Action action) {
        endEvent += action;
    }

    private void Fire () {
        if (endEvent != null) {
            endEvent ();
        }
    }
}
