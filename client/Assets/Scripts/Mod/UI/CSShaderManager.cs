using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using SLua;
using UnityEngine;

/// <summary>
/// add on 160505
/// </summary>
[CustomLuaClass]
public class CSShaderManager {

    private static CSShaderManager instance = null;

    private Shader unitAlpahaShader = null;
    private Shader unitTextureShader = null;

    public Shader GetUnitAlpahaShader () {
        return unitAlpahaShader;
    }
    public Shader GetUnitTextureShader () {
        return unitTextureShader;
    }

    private CSShaderManager () { }

    public static CSShaderManager GetInstance () {
        if (instance == null) {
            instance = new CSShaderManager ();
        }
        return instance;
    }

    public void InitShader () {
        unitAlpahaShader = Shader.Find ("Client/SceneUnitAlpaha");
        unitTextureShader = Shader.Find ("Client/UnlitTexture");
    }
}
