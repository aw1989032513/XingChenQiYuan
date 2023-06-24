using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using UnityEngine;
using SLua;

/// <summary>
/// create at 2017/2/8
/// 新类，包括OnDestro方法
/// </summary>
[CustomLuaClass]
public class LuaComponentCycle : MonoBehaviour {

    public string luaClass = null;
    private LuaTableProxy table = null;

    void Awake() {
        CallFunc("Awake");
    }

    void OnEnable() {
        CallFunc("OnEnable");
    }

    void OnDisable() {
        CallFunc("OnDisable");
    } 

    void Start() {
        CallFunc("Start");
    }

    void OnDestroy() {
        CallFunc("OnDestroy");
    }

    private void CallFunc(string funcName) {
        if (table == null) {
            initClass();
        }
        if (table != null) {
            table.CallMethod(funcName);
        }
    }

    public void SetClass (string className) {
        this.luaClass = className;
    }

    public void initClass() {
        if (luaClass != null && table == null) {
            table = new LuaTableProxy(luaClass);
        }
    }
}
