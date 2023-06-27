using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using SLua;

[CustomLuaClass]
public class LuaCallDestroy : LuaCallBase {

    void OnDestroy() {
        CallFunc("OnDestroy");
    }
}
