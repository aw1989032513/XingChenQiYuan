/*-------------------------------------------------------------*
 * 控制台命令
 * 在控制台输入的短指令将在以下的静态公共方法中进行匹配调用
 * @author yeahoo2000@gmail.com
 *-------------------------------------------------------------*/
using UnityEngine;
using UnityEngine.UI;
using SLua;

using System;
using System.Text.RegularExpressions;
using System.Reflection;
using System.Collections.Generic;

[CustomLuaClass]
public class Cmd {
    [ConsoleCommandAttribute("显示帮助信息")]
    public static void help() {
        help(String.Empty);
    }

    [ConsoleCommandAttribute("显示与指定关键词相关的命令", new []{ "关键词" })]
    public static void help(string keyword) {
        if (keyword.Equals(String.Empty)) {
            Debug.Log("短指令格式:[命令] [参数1] [参数2] ...");
            Debug.Log("完整指令格式:[类名].[方法名] [参数1] [参数2] ...");
            Debug.Log("快捷键(手速快才能秀得飞起):F1显示/隐藏 F2改变尺寸 ctrl+n和ctrl+p浏览历史命令 ctrl+a和ctrl+e移动光标 ctrl+w和ctrl+k删除当前输入的内容");
        }
        MethodInfo[] methods = Type.GetType("Cmd").GetMethods(BindingFlags.Public | BindingFlags.Static);
        bool found = false;
        foreach (MethodInfo m in methods) {
            System.Attribute[] attrs = System.Attribute.GetCustomAttributes(m);
            foreach (System.Attribute attr in attrs) {
                if (attr is ConsoleCommandAttribute) {
                    var c = (ConsoleCommandAttribute)attr;
                    string argsDesc = "";
                    for (int i = 0; i < c.argsDesc.Length; i++) {
                        argsDesc += "[<color=#393>" + c.argsDesc [i] + "</color>] ";
                    }

                    if (keyword.Length > 0) {
                        Match m1 = Regex.Match(c.description, keyword, RegexOptions.IgnoreCase);
                        Match m2 = Regex.Match(m.Name, keyword, RegexOptions.IgnoreCase);
                        Match m3 = Regex.Match(argsDesc, keyword, RegexOptions.IgnoreCase);
                        if (m1.Success || m2.Success || m3.Success) {
                            Debug.Log("<color=#393>" + m.Name + "</color> " + argsDesc + c.description);
                            found = true;
                        }
                    } else {
                        Debug.Log("<color=#393>" + m.Name + "</color> " + argsDesc + c.description);
                        found = true;
                    }
                }
            }
        }
        if (!found && keyword.Length > 0) {
            Debug.Log("找不到与 " + keyword + " 相关的命令");
        } else if (!found) {
            Debug.Log("无效的指令");
        }
    }

    [ConsoleCommandAttribute("执行GM命令，gm help 显示所有的GM命令，gm help [关键词] 查找相关的GM命令", new []{ "命令内容" })]
    public static void gm(string text) {
        // 此命令特殊处理，不在这里实现
    }

    [ConsoleCommandAttribute("客户端加速运行", new []{ "比例，有效范围0.1~10之间" })]
    public static void speedup(float ratio) {
        if (ratio < 0.1 || ratio > 10) {
            Debug.Log("无效的值,加速比例有效有效范围在0.1~10之间");
            return;
        }
        Time.timeScale = ratio;
    }

    [ConsoleCommandAttribute("显示当前设备的环境信息")]
    public static void env() {
        GameContext ctx = GameContext.GetInstance();
        Debug.Log("--- 硬件信息 ---------------------------------------");
        Debug.Log(String.Format("设备型号: {0}", SystemInfo.deviceModel));
        Debug.Log(String.Format("处理器: {0}", SystemInfo.processorType));
        Debug.Log(String.Format("理器数量: {0}", SystemInfo.processorCount));
        Debug.Log(String.Format("当前系统内存数量: {0}M", SystemInfo.systemMemorySize));
        Debug.Log(String.Format("当前显存的数量: {0}M", SystemInfo.graphicsMemorySize));
        Debug.Log(String.Format("显卡的名字: {0}", SystemInfo.graphicsDeviceName));
        Debug.Log(String.Format("显卡支持的图形API版本: {0}", SystemInfo.graphicsDeviceVersion));
        Debug.Log(String.Format("图形设备着色器性能级别: {0}", SystemInfo.graphicsShaderLevel));
        Debug.Log(String.Format("显卡像素填充率: {0}", SystemInfo.graphicsPixelFillrate), null);
        Debug.Log("--- 软件及其它信息 ---------------------------------");
        Debug.Log(String.Format("操作系统: {0}", SystemInfo.operatingSystem));
        Debug.Log(String.Format("当前版本: {0}", ctx.ResVersion));
        Debug.Log(String.Format("屏幕尺寸: {0}x{1}", ctx.ScreenWidth, ctx.ScreenHeight));
        Debug.Log(String.Format("当前平台: {0}", Application.platform));
        Debug.Log(String.Format("缓存目录: {0}", ctx.ResourcesPath));
        // Debug.Log(String.Format("资源URL: {0}", ctx.ResourcesUrl));
        Debug.Log(String.Format("Socket服务器: {0}", ctx.Socket));
    }
}
