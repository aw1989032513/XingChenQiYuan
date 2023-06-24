using UnityEngine;
﻿using UnityEngine.EventSystems;

using System;
using System.Text.RegularExpressions;
using System.Collections;
using System.Collections.Generic;
using SLua;
public enum UnitActionState {
    NeverPlayed = 0,
    Playing,
    Pause,
    Stop
}

[CustomLuaClass]
/// <summary>
/// 单位控制器
/// </summary>
public class UnitController : MonoBehaviour, IPointerClickHandler {

    #region Events

    #endregion

    #region Field

    private bool isSelf = false;

    private bool isOverControl = false;

    private bool dontSelect = false;

    #endregion

    #region Properties

    protected GameObject tpose;

    protected SceneMgr sm;

    protected float alpha;

    protected float size;

    protected GameContext context;

    protected MapClicker mapClicker;

    public float Alpha { get { return alpha; } }

    public bool DontSelect { get { return dontSelect; } set { dontSelect = value; } }

    [HideInInspector]

    #endregion

    public virtual void Start() {
        sm = GameContext.GetInstance().sceneManager;
    }

    public void Destroy() {
    }
    #region Protected Methods

    #endregion

    #region Public Methods

    public virtual void UpdateAlpha(bool hard, float x, float y) {
        if (sm != null && sm.Map != null && sm.Map.Transparent(x, y)) {
            SetAlpha(0.3f, hard);
        }
        else {
            SetAlpha(1.0f, hard);
        }
    }

    public void SetAlpha(float alpha, bool hard) {
        if (hard || alpha != this.alpha) {
            SetAlphaChlid(tpose.transform, alpha);
        }
    }

    public void SetAlphaChlid(Transform transform, float alpha) {

        MeshRenderer[] pskin = transform.gameObject.GetComponentsInChildren<MeshRenderer>(true);
        for (int i = 0; i < pskin.Length; i++)
        {
            if (!pskin[i].name.StartsWith("Mesh_"))
                continue;
            if (alpha == 1)
            {
                pskin[i].material.shader = CSShaderManager.GetInstance().GetUnitTextureShader();
            }
            else
            {
                pskin[i].material.shader = CSShaderManager.GetInstance().GetUnitAlpahaShader();
                Color cc = pskin[i].material.color;
                cc.a = alpha;
                pskin[i].material.color = cc;
            }
        }
        SkinnedMeshRenderer[] smr = transform.gameObject.GetComponentsInChildren<SkinnedMeshRenderer>(true);
        for (int i = 0; i < smr.Length; i++)
        {
            if (!smr[i].name.StartsWith("Mesh_"))
                continue;
            if (alpha == 1)
            {
                smr[i].material.shader = CSShaderManager.GetInstance().GetUnitTextureShader();
            }
            else
            {
                smr[i].material.shader = CSShaderManager.GetInstance().GetUnitAlpahaShader();
                Color cc = smr[i].material.color;
                cc.a = alpha;
                smr[i].material.color = cc;
            }
        }
        //for (int i = 0; i < transform.childCount; i++) {
        //    Transform t = transform.GetChild(i);
        //    SkinnedMeshRenderer smr = t.GetComponent<SkinnedMeshRenderer>();
        //    if (null != smr) {
        //        if (alpha == 1) {
        //            smr.material.shader = CSShaderManager.GetInstance ().GetUnitTextureShader ();
        //        } else {
        //            smr.material.shader = CSShaderManager.GetInstance ().GetUnitAlpahaShader ();
        //            cc = smr.material.color;
        //            cc.a = alpha;
        //            smr.material.color = cc;
        //        }
        //    }

        //    MeshRenderer mr = t.GetComponent<MeshRenderer>();
        //    if (null != mr) {
        //        if (alpha == 1) {
        //            mr.material.shader = CSShaderManager.GetInstance ().GetUnitTextureShader ();
        //        } else {
        //            mr.material.shader = CSShaderManager.GetInstance ().GetUnitAlpahaShader ();
        //            cc = mr.material.color;
        //            cc.a = alpha;
        //            mr.material.color = cc;
        //        }
        //    }
        //    SetAlphaChlid(t, alpha);
        //}
    }

    public IEnumerator InvokeDelay(Action action, float delay) {
        yield return new WaitForSeconds(delay);
        action();
    }

    public void OnPointerClick(PointerEventData eventData) {
        if (DontSelect) {
            mapClicker.Click(eventData.position);
        }
        else {
            if (sm != null) {
                sm.CurrentClickObject = eventData.pointerEnter as GameObject;
                sm.Lua_SceneManager.CallMethod("ClickUnitObject", sm.CurrentClickObject.name);
            }
        }
    }
    #endregion
}
