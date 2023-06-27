using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using SLua;

[CustomLuaClass]
public class LuaCallStartDestroy : LuaCallBase{

    void Start() {
        CallFunc("Start");
    }

    void OnDestroy() {
        CallFunc("OnDestroy");
    }
}
