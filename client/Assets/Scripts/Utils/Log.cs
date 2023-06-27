using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using UnityEngine;
using SLua;

[CustomLuaClass]
public class Log {

    public static int DEBUG = 1;
    public static int WARN = 2;
    public static int INFO = 3;
    public static int ERROR = 4;
    public static int CLOSE = 5;

    /// <summary>
    /// [true:控制台打印,false:Unity Debug打印]
    /// </summary>
    public static bool printWay = false;

    private static int level = DEBUG;

    public static void SetLev(int lev) {
        level = lev;
    }

    public static void Debug(string log) {
        if (level <= DEBUG) {
            Format ("DEBUG", log);
        }
    }

    public static void Info(string log) {
        if (level <= INFO) {
            Format ("INFO", log);
        }
    }

    public static void Warn(string log) {
        if (level <= WARN) {
            Format ("WARN", log);
        }
    }

    public static void Error(string log) {
        if (level <= ERROR) {
            Format ("ERROR", log);
        }
    }

    private static void Format (String level, String log) {
        StringBuilder str = new StringBuilder ();
        if ("ERROR".Equals (level)) {
            // str.Append ("<color='#ff0000'>[" + level + "]</color>");
            str.Append ("[" + level + "]");
        } else {
            str.Append ("[" + level + "]");
        }
        // str.Append ("[" + DateTime.Now.ToString ("yyyy-MM-dd HH:mm:ss") + ":" + DateTime.Now.Millisecond + "] ");
        // str.Append ("[" + name + "]");
        str.Append (" " + log);
        if ("ERROR".Equals (level)) {
            str.Append ("\r\n[/" + level + "]");
        }
        if (printWay) {
            Console.WriteLine (str);
        } else {
            if (level.Equals ("ERROR")) {
                UnityEngine.Debug.LogError (str);
            } else if (level.Equals ("WARN")) {
                UnityEngine.Debug.LogWarning (str);
            } else {
                UnityEngine.Debug.Log (str);
            }
        }
    }
}
