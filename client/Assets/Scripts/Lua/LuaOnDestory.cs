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
public class LuaOnDestory : MonoBehaviour {

    private Action destoryCall;

    public void SetDestoryCall(Action call) {
        destoryCall = call;
    }

    void OnDestroy() {
        if (destoryCall != null) {
            destoryCall();
            destoryCall = null;
        }
    }

}
