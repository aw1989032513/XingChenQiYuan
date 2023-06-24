using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using UnityEngine;
using UnityEngine.EventSystems;
using SLua;

[CustomLuaClass]
public class LuaBehaviourDownUpBase : MonoBehaviour, IPointerDownHandler, IPointerUpHandler
{
    private string luaClass = null;
    private LuaTableProxy table = null;

    void Start()
    {
        if (table != null)
        {
            table.CallMethod("Start", transform);
        }
    }

    void FixedUpdate()
    {
        if (table != null)
        {
            table.CallMethod("FixedUpdate");
        }
    }

    public void OnPointerDown(PointerEventData eventData)
    {
        if (table != null)
        {
            table.CallMethod("OnPointerDown");
        }
    }

    public void OnPointerUp(PointerEventData eventData)
    {
        if (table != null)
        {
            table.CallMethod("OnPointerUp");
        }
    }

    public LuaTable SetClass(string className)
    {
        this.luaClass = className;
        table = new LuaTableProxy(className);
        if (table != null)
        {
            table.CallMethod("AfterInit", transform);
        }
        return table.GetChunk();
    }

    public LuaTable GetClass()
    {
        if (table != null)
            return table.GetChunk();
        else
            return null;
    }
}
