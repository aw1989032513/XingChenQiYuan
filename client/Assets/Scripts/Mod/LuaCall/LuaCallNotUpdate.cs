using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using UnityEngine;
using SLua;

/// <summary>
/// 
/// </summary>
[CustomLuaClass]
public class LuaCallNotUpdate : LuaCallBase {
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
}
