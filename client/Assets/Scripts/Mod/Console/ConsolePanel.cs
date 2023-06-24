using System;
using System.Reflection;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class ConsolePanel {
    private GameContext ctx;
    public GameObject panel;

    private InputField commandLine;
    private CommandHistory history; // 保存历史命令
    private Text info;
    private Scrollbar scrollbar;
    private bool isCtrlKeydown;

    public Queue<string> logBuffer = new Queue<string> ();

    public void AddLog (string logString, string stackTrace, LogType type) {
        if (type == LogType.Error) {
            logBuffer.Enqueue ("[ERROR]" + logString);
        } else {
            logBuffer.Enqueue (logString);
        }
    }

    public ConsolePanel () {
        ctx = GameContext.GetInstance ();
    }

    public void initPanel () {
        if (panel == null) {
        	string path = null;
        	switch (Application.platform) {
        	    case RuntimePlatform.Android:
                    path = Application.streamingAssetsPath;
        	        break;
        	    case RuntimePlatform.IPhonePlayer:
                    path = ctx.RemotePath;
        	        break;
        	    default:
                    path = ctx.RemotePath;
        	        break;
        	}
            LoadTask task = new LoadTask (path, "prefabs/ui/console/prefabs_ui_console_console.unity3d", OnPrefabLoaded);
        	ctx.AssetBundleManager.LoadFile (task);
        }
    }

    private void OnPrefabLoaded (LoadTask task) {
        WWW w3 = task.www;
        panel = UGUI.Instantiate ("Console", w3.assetBundle.mainAsset as GameObject, ctx.CanvasContainer);
        w3.assetBundle.Unload (false);
        w3.Dispose ();

        info = panel.transform.FindChild ("ScrollView/Info").GetComponent<Text> ();
        commandLine = panel.transform.FindChild ("Input").GetComponent<InputField> ();
        commandLine.textComponent = commandLine.transform.FindChild ("Text").gameObject.GetComponent<Text> ();
        commandLine.placeholder = commandLine.transform.FindChild ("Placeholder").gameObject.GetComponent<Graphic> ();
        scrollbar = panel.transform.FindChild ("Scrollbar").GetComponent<Scrollbar> ();

        // panel.transform.FindChild ("ButtonChangeHeight").GetComponent<Button> ().onClick.AddListener (ChangeHeight);
        panel.transform.FindChild ("ButtonHide").GetComponent<Button> ().onClick.AddListener (ToggleShow);

        history = new CommandHistory(commandLine);

        commandLine.onEndEdit.AddListener(delegate{
                if(EventSystem.current.alreadySelecting) return; // 非回车阻止提交
                Submit();
                });

        panel.SetActive(false);
    }

    /// <summary>
    /// 显示缓存中的日志
    /// </summary>
    public void Reload(){
        if (logBuffer.Count > 0) {
            StringBuilder sb = new StringBuilder();
            foreach (string log in logBuffer) {
                sb.Append(log + "\r\n");
            }
            //超了text的内容限制，清空
            if (info.preferredHeight > 15000) {
                logBuffer.Clear();
                info.text = sb.ToString();
            }else {
                info.text = info.text + sb.ToString ();
            }
        }
    }

    /// <summary>
    /// 切换显示或隐藏
    /// </summary>
    public void ToggleShow () {
        if (panel.activeSelf) {
            panel.SetActive (false);
            return;
        }
        Reload ();
        panel.SetActive (true);
#if UNITY_STANDALONE || UNITY_EDITOR
        // 激活后立即将光标定位到输入框
        EventSystem.current.SetSelectedGameObject (commandLine.gameObject, null);
        commandLine.OnPointerClick (new PointerEventData (EventSystem.current));
#endif
        // 将光标移动到尾部
        commandLine.MoveTextEnd (false);
    }

    /// <summary>
    /// 改变高度
    /// </summary>
    public void ChangeHeight () {
        if (!panel.activeSelf) return;
        RectTransform rect = panel.GetComponent<RectTransform> ();
        float max = Screen.height;
        rect.sizeDelta = (rect.sizeDelta.y / max > 0.9f)
            ? new Vector2 (0, 300f)
            : new Vector2 (0, max);
    }

    public void OnTick () {
        if (Input.GetKeyUp (KeyCode.F1)) {
            ToggleShow ();
        }
        if (Input.GetKeyUp (KeyCode.F2)) {
            ChangeHeight ();
        }
        if (Input.GetKeyUp (KeyCode.F3)) {
            Debug.Log("f3");
        }
        if(Input.GetKeyDown(KeyCode.LeftControl) || Input.GetKeyDown(KeyCode.RightControl)){
            isCtrlKeydown = true;
        }
        if(Input.GetKeyUp(KeyCode.LeftControl) || Input.GetKeyUp(KeyCode.RightControl)){
            isCtrlKeydown = false;
        }
        if(Input.GetKeyDown(KeyCode.UpArrow)){
            history.Prev();
        }
        if(Input.GetKeyDown(KeyCode.DownArrow)){
            history.Next();
        }
        if(isCtrlKeydown){
            if(Input.GetKeyDown(KeyCode.P)){
                history.Prev();
            }
            if(Input.GetKeyDown(KeyCode.N)){
                history.Next();
            }
            if(Input.GetKeyDown(KeyCode.A)){
                commandLine.MoveTextStart(false);
            }
            if(Input.GetKeyDown(KeyCode.E)){
                commandLine.MoveTextEnd(false);
            }
            // TODO:无法获取光标位置，只能删除整行了
            if(Input.GetKeyDown(KeyCode.K)){
                commandLine.text = "";
            }
            // 删除当前行的最后一个单词
            if(Input.GetKeyDown(KeyCode.W)){
                string[] tokens = commandLine.text.Split(' ');
                tokens[tokens.Length - 1] = "";
                commandLine.text = String.Join(" ", tokens).Trim();
            }
        }
    }

    // 提交命令处理
    private void Submit(){
        string cmd = commandLine.text.Trim();
        if(cmd.Equals("")) return;
        history.Add();
        commandLine.text = "";
        scrollbar.value = 0;
#if UNITY_STANDALONE || UNITY_EDITOR
        commandLine.OnPointerClick(new PointerEventData(EventSystem.current)); // 将光标重新定位到输入框
#endif
        Debug.Log("<color=#f60>▌</color>" + cmd);
        string err = Run(cmd);
        if(err.Length > 0){
            Debug.Log(err);
        }
        Reload();
    }

    // 运行指令
    private string Run(string cmd){
        var tokens = new List<string>(cmd.Split(' '));
        string[] callInfo = tokens[0].Split('.');
        tokens.RemoveAt(0);
        string className;
        string methodName;

        if(callInfo.Length > 2) return "无效的指令";
        if(callInfo.Length == 1){
            // 调用gm_cmd.lua中的命令
            try{
                var lua = GameContext.GetInstance().LuaState;
                lua.getFunction("gm_cmd.run").call(cmd);
                return string.Empty;
            }catch(Exception e){
                return "执行控制台命令时发生异常: " + e;
            }
        }
        className = callInfo[0];
        methodName = callInfo[1];

        Type type = Type.GetType(className);
        if (type == null){
            return "无效的指令";
        }
        // 支持调用静态方法
        // 支持方法重载
        string errorMessage = "无效的指令";
        MethodInfo[] methods = type.GetMethods(BindingFlags.Public | BindingFlags.Static);
        foreach(MethodInfo m in methods){
            if(m.Name.Equals(methodName)){
                ParameterInfo[] pList = m.GetParameters();
                if(pList.Length != tokens.Count){
                    errorMessage = "指令参数不匹配，正确格式: " + m.Name;
                    var attrs = Attribute.GetCustomAttributes(m);
                    foreach(var attr in attrs){
                        if(attr is ConsoleCommandAttribute){
                            var c = (ConsoleCommandAttribute) attr;
                            for(int i = 0; i < c.argsDesc.Length; i++){
                                errorMessage += " [" + c.argsDesc[i] + "]";
                            }
                        }
                    }
                }else if(pList.Length > 0){
                    var param = new object[pList.Length];
                    foreach(ParameterInfo p in pList){
                        int idx = p.Position;
                        try{
                            param[p.Position] = Convert.ChangeType(tokens[idx], p.ParameterType);
                        }catch(Exception){
                            return "第" + idx + "个参数类型错误，必须是类型[" + p.ParameterType + "]: " + tokens[idx];
                        }
                    }
                    try{
                        m.Invoke(null, param);
                        return String.Empty; // 执行成功，不再继续搜索
                    }catch(Exception e){
                        errorMessage = "执行指令时发生内部错误:\n" + e;
                    }
                }else{
                    try{
                        m.Invoke(null, null);
                        return String.Empty; // 执行成功，不再继续搜索
                    }catch(Exception e){
                        errorMessage = "执行指令时发生内部错误:\n" + e;
                    }
                }
            }
        }

        return errorMessage;
    }

    private class CommandHistory{
        private readonly InputField inputField;
        private const int maxLines = 99;
        private readonly string[] list;
        private int next;
        private int curr;

        public CommandHistory(InputField f){
            inputField = f;
            list = new String[maxLines];
        }

        public void Add(){
            list[next % maxLines] = inputField.text;
            next++;
            curr = next;
        }

        public void Prev(){
            if(curr == 0) return;
            if(next - curr < maxLines){
                list[curr % maxLines] = inputField.text; // 保存当前输入框中的内容
                curr--;
            }
            inputField.text = list[curr % maxLines];
            inputField.MoveTextEnd(false);
        }

        public void Next(){
            if(curr == next) return;
            curr++;
            inputField.text = list[curr % maxLines];
            inputField.MoveTextEnd(false);
        }
    }
}

public class ConsoleCommandAttribute : Attribute {
    public string description;
    public string[] argsDesc = { };

    public ConsoleCommandAttribute(string description) {
        this.description = description;
    }

    public ConsoleCommandAttribute(string description, string[] argsDesc) {
        this.description = description;
        this.argsDesc = argsDesc;
    }

    // 检查所有短指令的格式是否正确
    public static void Check() {
        Type type = Type.GetType("Cmd");
        MethodInfo[] methods = type.GetMethods(BindingFlags.Public | BindingFlags.Static);
        foreach (MethodInfo m in methods) {
            ParameterInfo[] pList = m.GetParameters();
            Attribute[] attrs = Attribute.GetCustomAttributes(m);
            bool hasAttr = false;
            foreach (Attribute attr in attrs) {
                if (attr is ConsoleCommandAttribute) {
                    hasAttr = true;
                    var c = (ConsoleCommandAttribute)attr;
                    if (pList.Length != c.argsDesc.Length) {
                        Debug.Log("指令 " + m.Name + " 的参数与说明不匹配");
                    }
                }
            }
            if (!hasAttr) {
                Debug.Log("指令 " + m.Name + " 没有添加说明属性(ConsoleCommandAttribute)");
            }
        }
    }
}
