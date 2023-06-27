using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using UnityEngine;

using SLua;

public class CSSoundManager {

    public static CSSoundManager instance = null;
    private LuaFunction func = null;
    private LuaTable insTable = null;

    public static CSSoundManager GetInstance() {
        if (instance == null) {
            instance = new CSSoundManager();
        }
        return instance;
    }
    private CSSoundManager() {
    }

    public void PlayButton (int soundId) {
        if (func == null) {
            SetFunction ();
        }
        if (func != null) {
            func.call (insTable, soundId);
        }
    }

    private LuaFunction SetFunction () {
        LuaState luaState = LuaSrvManager.GetInstance().LuaState;
        LuaTable clsTable = (LuaTable)luaState["SoundManager"];
        if (clsTable != null) {
            this.insTable = (LuaTable)clsTable["Instance"];
            if (this.insTable != null) {
                this.func = (LuaFunction)insTable["Play"];
                return this.func;
            } else {
                return null;
            }
        } else {
            return null;
        }
    }
}
