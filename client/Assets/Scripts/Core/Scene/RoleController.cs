using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

using System.Collections.Generic;

using System;
using SLua;
[CustomLuaClass]
/// <summary>
/// 角色控制器
/// </summary>
public class RoleController : UnitController, IPointerClickHandler {

    #region Field

    private GameObject triggerUnit;

    #endregion

    #region Properties

    public GameObject TriggerUnit {
        set { triggerUnit = value; }
        get { return triggerUnit; }
    }

    #endregion

    public override void Start() {
        base.Start();
    }

    void OnTriggerEnter(Collider c) {
        if (sm != null && sm.CurrentClickObject != null && c.gameObject != null && sm.CurrentClickObject.name == c.gameObject.name) {
            UnitController uc = c.gameObject.GetComponent<UnitController> ();
            if (uc != null && sm.Lua_SceneManager != null) {
                sm.Lua_SceneManager.CallMethod ("TouchSceneUnit", c.gameObject.name);
            }
        }
    }

    void OnTriggerStay(Collider c) {
        if (sm != null && sm.CurrentClickObject != null && c.gameObject != null && sm.CurrentClickObject.name == c.gameObject.name) {
            UnitController uc = c.gameObject.GetComponent<UnitController>();
            if (uc != null && sm.Lua_SceneManager != null) {
                sm.Lua_SceneManager.CallMethod("TouchSceneUnit", c.gameObject.name);
            }
        }
    }

    void OnTriggerExit(Collider c) {
        if (triggerUnit == c.gameObject) {
            triggerUnit = null;
        }
    }

    #region Private Methods

    #endregion

    #region Protected Methods

    #endregion

    #region Public Methods

    public void OnPointerClick(PointerEventData eventData) {
        if (DontSelect) {
            mapClicker.Click(eventData.position);
        }
        else {
            sm.Lua_SceneManager.CallMethod("ClickRoleObject", eventData, eventData.pointerEnter);
        }
    }

    #endregion
}
