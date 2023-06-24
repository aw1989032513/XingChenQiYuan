using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using LitJson;
using SLua;
using System.Collections;

[CustomLuaClass]
public class NormalJson {

    private string srcString = null;

    public LuaTable table = null;

    public NormalJson (string srcString) {
        this.srcString = srcString;
        if (srcString != null && srcString.Trim ().Length > 0) {
            JsonData data = JsonMapper.ToObject (this.srcString);
            if (data != null && (data.IsObject || data.IsArray)) {
                table = Parse (data);
            }
        }
    }

    private LuaTable Parse (JsonData data) {
        LuaTable ctable = new LuaTable (GameContext.GetInstance ().LuaState);
        if (data.IsArray) {
            int count = data.Count;
            for (int i = 0; i < count; i++) {
                JsonData arrItem = data[i];
                if (arrItem.IsString) {
                    ctable[i + 1] = arrItem.ToString ();
                } else if (arrItem.IsInt) {
                    ctable[i + 1] = arrItem.ToString ();
                } else if (arrItem.IsArray) {
                    ctable[i + 1] = Parse (arrItem);
                } else if (arrItem.IsObject) {
                    ctable[i + 1] = Parse (arrItem);
                } else {
                    Log.Error ("出错了：" + srcString);
                }
            }
        } else if (data.IsObject) {
            IDictionary ttable = data as IDictionary;
            foreach (string key in ttable.Keys) {
                JsonData tdata = data[key];
                if (tdata.IsString) {
                    ctable[key] = tdata.ToString ();
                } else if (tdata.IsInt) {
                    ctable[key] = tdata.ToString ();
                } else if (tdata.IsArray) {
                    ctable[key] = Parse (tdata);
                } else if (tdata.IsObject) {
                    ctable[key] = Parse (tdata);
                }
            }
        } else {
            Log.Error ("json数量解析异常:" + data.ToString());
            ctable[0] = data.ToString ();
        }
        return ctable;
    }
} 