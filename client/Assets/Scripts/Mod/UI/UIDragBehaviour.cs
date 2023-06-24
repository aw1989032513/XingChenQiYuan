using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

using SLua;

[CustomLuaClass]
public class UIDragBehaviour : MonoBehaviour, IBeginDragHandler, IDragHandler, IEndDragHandler {

    public Action<PointerEventData> onBeginDrag = null;
    public Action<PointerEventData> onDrag = null;
    public Action<PointerEventData> onEndDrag = null;

    public virtual void OnBeginDrag(PointerEventData eventData) {
        if (onBeginDrag != null) {
            onBeginDrag(eventData);
        }
    }

    public virtual void OnDrag(PointerEventData eventData) {
        if (onDrag != null) {
            onDrag (eventData);
        }
    }

    public virtual void OnEndDrag(PointerEventData eventData) {
        if (onEndDrag!= null) {
            onEndDrag (eventData);
        }
    }
}
