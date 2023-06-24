using UnityEngine;
using UnityEngine.EventSystems;
using System.Collections;
using SLua;

[CustomLuaClass]
public class MapClicker : MonoBehaviour, IPointerClickHandler {

    private PathFinder pathFinder;
    public bool islock = false;
    #region Events

    #endregion

    void Start() {
        pathFinder = GameContext.GetInstance().sceneManager.PathFinder;
    }

    public void Click(Vector3 pos) {
        if (islock)
            return;
        pathFinder.MoveToPointByScreenClick(pos);
    }

    public void OnPointerClick(PointerEventData eventData) {
        if (islock)
            return;
        Click(eventData.position);
    }
}
