using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using UnityEngine;
using SLua;

[CustomLuaClass]
public class LuaBehaviourBase : MonoBehaviour {
    private string luaClass = null;
    private LuaTableProxy table = null;

    void Start () {
        if (table != null) {
            table.CallMethod ("Start");
        }
    }

    void FixedUpdate () {
        if (table != null) {
            table.CallMethod ("FixedUpdate");
        }
    }

    public void SetClass (string className) {
        this.luaClass = className;
        table = new LuaTableProxy (className);
    }
}
