using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using UnityEngine;
using SLua;

[CustomLuaClass]
public class LuaCallStart : LuaCallBase {
    void Start() {
        CallFunc("Start");
    }
}
