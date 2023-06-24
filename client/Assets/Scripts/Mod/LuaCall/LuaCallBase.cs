using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using UnityEngine;
using SLua;

[CustomLuaClass]
public class LuaCallBase : MonoBehaviour {

    public string luaClass = null;
    public LuaTableProxy table = null;

    protected void CallFunc(string funcName) {
        if (table == null) {
            initClass();
        }
        if (table != null) {
            table.CallMethod(funcName);
        }
    }

    public void SetClass(string className) {
        this.luaClass = className;
    }

    public void initClass() {
        if (luaClass != null && luaClass.Trim().Length > 0 && table == null) {
            table = new LuaTableProxy(luaClass);
        }
    }

    public LuaTable GetChunk() {
        if (table == null) {
            initClass();
        }
        if (table != null) {
            return table.GetChunk();
        } else {
            return null;
        }
    }
}
