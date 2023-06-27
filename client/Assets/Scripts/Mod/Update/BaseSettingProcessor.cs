using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;

/// <summary>
/// 准备baseSetting文件
/// </summary>
public class BaseSettingProcessor : IProcessor {

    private Action endEvent = null;
    private GameContext ctx = null;

    public BaseSettingProcessor (GameContext ctx) {
        this.ctx = ctx;
    }

    public void Deal () {
        string path = ctx.ResourcesPath + "/base_setting.json";
        if (File.Exists(path)) {
            Fire ();
        } else {
            LoadTask task = new LoadTask ("base_setting.json", OnCompleted);
            task.useRandom = false;
            ctx.AssetBundleManager.LoadFromStreaming (task);
        }
    }

    private void OnCompleted (LoadTask task) {
        string settingFile = ctx.ResourcesPath + "/base_setting.json";
        Directory.CreateDirectory (Path.GetDirectoryName (settingFile));
        // Utils.Decompress (task.www.bytes, settingFile); // 解压缩
        File.WriteAllBytes (settingFile, task.www.bytes);
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
