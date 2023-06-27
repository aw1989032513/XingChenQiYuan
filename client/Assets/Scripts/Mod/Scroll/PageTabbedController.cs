using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Events;
using UnityEngine.EventSystems;

using SLua;

[CustomLuaClass]
public class OnTabbedEndDragEvent : UnityEvent {}

[CustomLuaClass]
public class PageTabbedController : MonoBehaviour, IEndDragHandler, IPointerDownHandler, IPointerUpHandler {

    public OnTabbedEndDragEvent onEndDragEvent = new OnTabbedEndDragEvent ();
    public OnTabbedEndDragEvent onDownEvent = new OnTabbedEndDragEvent ();
    public OnTabbedEndDragEvent onUpEvent = new OnTabbedEndDragEvent ();

    public void OnEndDrag (PointerEventData eventData) {
        onEndDragEvent.Invoke ();
    }

    public void OnPointerDown (PointerEventData eventData) {
        onDownEvent.Invoke ();
    }

    public void OnPointerUp (PointerEventData eventData) {
        onUpEvent.Invoke ();
    }
}
