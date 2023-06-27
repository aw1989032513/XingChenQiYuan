/*-------------------------------------------------------------*
 * UI相关处理
 *
 * @author yeahoo2000@gmail.com
 *-------------------------------------------------------------*/

using UnityEngine;
using UnityEngine.UI;

public enum AnchorPreset {
    LT, // 左上
    LM, // 左中
    LB, // 左下
    MT, // 中上
    MM, // 中中
    MB, // 中下
    RT, // 右上
    RM, // 右中
    RB, // 右下
    XT, // X轴自适应，靠上
    XM, // X轴自适应，居中
    XB, // X轴自适应，靠下
    LY, // 靠左，Y轴自适应
    MY, // 居中，Y轴自适应
    RY, // 靠右，Y轴自适应
    XY, // 向四边靠近
}

public static class UGUI {
    /// <summary>
    /// 创建实例后激活并持接到某个父对象上
    /// </summary>
    /// <param name="sourceObject">源对象</param>
    /// <param name="name">对象名称</param>
    /// <param name="parent">父对象</param>
    /// <param name="worldPositionStays">是否保持世界坐标</param>
    public static GameObject Instantiate (string name, GameObject sourceObject, GameObject parent, bool worldPositionStays = false) {
        var obj = GameObject.Instantiate (sourceObject) as GameObject;
        obj.name = name;
        obj.transform.SetParent (parent.transform, worldPositionStays);
        obj.SetActive (true);
        return obj;
    }

    /// <summary>
    /// 创建一个与父对象同样大小的UI对象
    /// </summary>
    /// <param name="parent">父对象</param>
    /// <param name="name">创建的对象名</param>
    public static GameObject CreateObject (GameObject parent, string name) {
        return CreateObject (parent, name, 0, 0, .5f, .5f, AnchorPreset.XY);
    }

    /// <summary>
    /// 创建一个UI对象，可以指定某些关键参数
    /// </summary>
    /// <param name="parent">父对象</param>
    /// <param name="name">创建的对象名</param>
    /// <param name="w">宽度</param>
    /// <param name="h">高度</param>
    /// <param name="pivotX">pivotX参数，默认:0.5f</param>
    /// <param name="pivotY">pivotY参数，默认:0.5f</param>
    /// <param name="anchorPreset">anchor参数，默认:AnchorPreset.MM</param>
    public static GameObject CreateObject (GameObject parent, string name, float w, float h, float pivotX = .5f, float pivotY = .5f, AnchorPreset anchorPreset = AnchorPreset.MM) {
        var obj = new GameObject ();
        obj.name = string.IsNullOrEmpty (name) ? "NewUIObject" : name;
        Transform t = obj.transform;
        t.SetParent (parent.transform);
        t.localScale = Vector3.one;
        t.localPosition = Vector3.zero;
        t.localRotation = Quaternion.identity;

        obj.AddComponent<CanvasRenderer> ();
        var rect = obj.AddComponent<RectTransform> ();
        SetAnchor (rect, anchorPreset);
        rect.pivot = new Vector2 (pivotX, pivotY);
        rect.sizeDelta = new Vector2 (w, h);
        return obj;
    }

    public static GameObject CreateText (GameObject parent, string name) {
        var obj = CreateObject (parent, name);
        var text = obj.AddComponent<Text> ();
        text.text = "Text组件对象";
        text.font = UnityEngine.Resources.FindObjectsOfTypeAll<Font> ()[0];
        text.supportRichText = false;

        return obj;
    }

    /// <summary>
    /// 转换Anchor预设值
    /// </summary>
    /// <param name="rect">目标对象的RectTransform</param>
    /// <param name="preset">Anchor预设</param>
    public static void SetAnchor (RectTransform rect, AnchorPreset preset) {
        switch (preset) {
            case AnchorPreset.LT: // 左上
                rect.anchorMin = new Vector2 (.0f, 1f);
                rect.anchorMax = new Vector2 (.0f, 1f);
                break;
            case AnchorPreset.LM: // 左中
                rect.anchorMin = new Vector2 (.0f, .5f);
                rect.anchorMax = new Vector2 (.0f, .5f);
                break;
            case AnchorPreset.LB: // 左下
                rect.anchorMin = new Vector2 (.0f, .0f);
                rect.anchorMax = new Vector2 (.0f, .0f);
                break;
            case AnchorPreset.MT: // 中上
                rect.anchorMin = new Vector2 (.5f, 1f);
                rect.anchorMax = new Vector2 (.5f, 1f);
                break;
            case AnchorPreset.MM: // 中中
                rect.anchorMin = new Vector2 (.5f, .5f);
                rect.anchorMax = new Vector2 (.5f, .5f);
                break;
            case AnchorPreset.MB: // 中下
                rect.anchorMin = new Vector2 (.5f, .0f);
                rect.anchorMax = new Vector2 (.5f, .0f);
                break;
            case AnchorPreset.RT: // 右上
                rect.anchorMin = new Vector2 (1f, 1f);
                rect.anchorMax = new Vector2 (1f, 1f);
                break;
            case AnchorPreset.RM: // 右中
                rect.anchorMin = new Vector2 (1f, .5f);
                rect.anchorMax = new Vector2 (1f, .5f);
                break;
            case AnchorPreset.RB: // 右下
                rect.anchorMin = new Vector2 (1f, .0f);
                rect.anchorMax = new Vector2 (1f, .0f);
                break;

            case AnchorPreset.XT: // X轴自适应，靠上
                rect.anchorMin = new Vector2 (0f, 1f);
                rect.anchorMax = new Vector2 (1f, 1f);
                break;
            case AnchorPreset.XM: // X轴自适应，居中
                rect.anchorMin = new Vector2 (0f, .5f);
                rect.anchorMax = new Vector2 (1f, .5f);
                break;
            case AnchorPreset.XB: // X轴自适应，靠下
                rect.anchorMin = new Vector2 (0f, 0f);
                rect.anchorMax = new Vector2 (1f, 0f);
                break;
            case AnchorPreset.LY: // 靠左，Y轴自适应
                rect.anchorMin = new Vector2 (.0f, 0f);
                rect.anchorMax = new Vector2 (.0f, 1f);
                break;
            case AnchorPreset.MY: // 居中，Y轴自适应
                rect.anchorMin = new Vector2 (.5f, 0f);
                rect.anchorMax = new Vector2 (.5f, 1f);
                break;
            case AnchorPreset.RY: // 靠右，Y轴自适应
                rect.anchorMin = new Vector2 (1f, 0f);
                rect.anchorMax = new Vector2 (1f, 1f);
                break;
            case AnchorPreset.XY: // 向四边靠近
                rect.anchorMin = new Vector2 (0f, 0f);
                rect.anchorMax = new Vector2 (1f, 1f);
                break;
        }
    }
}