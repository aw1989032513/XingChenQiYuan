using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class AlertWindow {

    public Action OnSumbitClickEvent;

    private GameObject gameObject = null;
    private GameObject cancelBut = null;
    private GameObject submitBut = null;
    private GameObject tipsTxt = null;
    private GameObject yellowTxt = null;
    private string defaultYellowTxt = "建议在WIFI网络下载新版本";

    public AlertWindow () {
        GameObject asset = Resources.Load ("UpdateAlertWindow", typeof (GameObject)) as GameObject;
        gameObject = UGUI.Instantiate ("UpdateAlertWindow", asset, GameObject.Find ("CanvasContainer").gameObject);
        cancelBut = gameObject.transform.FindChild ("CancleButton").gameObject;
        submitBut = gameObject.transform.FindChild ("SubmitButton").gameObject;
        tipsTxt = gameObject.transform.FindChild ("TipsTxt").gameObject;
        yellowTxt = gameObject.transform.FindChild ("Text").gameObject;

        cancelBut.GetComponent<Button> ().onClick.AddListener (OnCancelButClick);
        submitBut.GetComponent<Button> ().onClick.AddListener (OnSubmitButClick);
        gameObject.SetActive (false);
    }

    private void OnCancelButClick () {
        gameObject.SetActive (false);
        Application.Quit ();
    }

    private void OnSubmitButClick () {
        if (OnSumbitClickEvent != null) {
            OnSumbitClickEvent ();
        }
        OnSumbitClickEvent = null;
    }

    public void SetTipsTxt (string content) {
        if (this.tipsTxt != null) {
            // 检查到新版本更新，本次更新包大小约为100M，点击确认即可进行下载更新，点击取消退出游戏
            this.tipsTxt.GetComponent<Text> ().text = content;
        }
    }

    public void SetYellowTxt (string content) {
        if (yellowTxt != null) {
            yellowTxt.GetComponent<Text> ().text = content;
        }
    }

    public void SetDefaultYellowTxt () {
        SetYellowTxt (defaultYellowTxt);
    }

    public void Hide () {
        gameObject.SetActive (false);
    }

    public void Show () {
        gameObject.SetActive (true);
    }

    public void Show (Action onSumbit) {
        OnSumbitClickEvent = onSumbit;
        gameObject.SetActive (true);
    }

    public void Release () {
        OnSumbitClickEvent = null;
        GameObject.DestroyImmediate (this.gameObject);
    }
}
