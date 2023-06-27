using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using UnityEngine;
using UnityEngine.UI;
using SLua;

using LitJson;
using System.Collections;

[CustomLuaClass]
public class HotUpdate {

    private static HotUpdate instance = null;

    private string rootPath = Application.dataPath.Replace("client/Assets", "");
    private Dictionary<string, string> nameToLastWriteTimeDic = new Dictionary<string, string>();
    private HotUpdate () {
    }

    public static HotUpdate GetInstance () {
        if (instance == null) {
            instance = new HotUpdate ();
        }
        return instance;
    }
    public void CheckFilesWitchNeedUpdate(LuaTable table)
    {
        //Debug.Log("项目根目录:"+rootPath);

        nameToLastWriteTimeDic.Clear();
        string whiteListFile = rootPath + "/nameToLastWriteTime.txt";
        if (!File.Exists(whiteListFile))
        {
            File.WriteAllText(whiteListFile, "", new UTF8Encoding(false));
        }
        string[] lineStr = File.ReadAllLines(whiteListFile);
        int cntTemp = lineStr.Length;
        bool isFirst = true;
        if (cntTemp > 0)
        {
            for (int i = 0; i < cntTemp; i++)
            {
                string[] lineContent = lineStr[i].Trim().Split('|');
                nameToLastWriteTimeDic.Add(lineContent[0], lineContent[1]);
            }
            isFirst = false;
        }

        StringBuilder sbData = new StringBuilder();
        StringBuilder sb = new StringBuilder();

        //int testCnt = 0;
        //Debug.Log("检查文件开始------------"+nameToLastWriteTimeDic.Count);
        foreach (LuaTable.TablePair t in table)
        {
            string fullPath = rootPath + t.value;
            DateTime dt = File.GetLastWriteTime(fullPath);
            string timeStr = dt.GetDateTimeFormats('s')[0].ToString();
            string target = null;
            if (isFirst == true)
            {
                //初始没有数据
                nameToLastWriteTimeDic.Add(t.key.ToString(), timeStr);
            }
            else if (nameToLastWriteTimeDic.TryGetValue(t.key.ToString(),out target) == true)
            {
                if (target.Equals(timeStr) == false)
                {
                    //旧文件，有修改
                    nameToLastWriteTimeDic[t.key.ToString()] = timeStr;
                    sb.Append(t.key.ToString());
                    sb.Append("|");
                }
            }
            else
            {
                //新文件
                nameToLastWriteTimeDic.Add(t.key.ToString(), timeStr);
                sb.Append(t.key.ToString());
                sb.Append("|"); 
            }
            sbData.AppendLine(t.key.ToString()+"|"+timeStr);
        }
        File.WriteAllText(whiteListFile, sbData.ToString(), new UTF8Encoding(false));
        //Debug.Log("待热更的文件:" + sb.ToString());
        if (sb.ToString().IndexOf("|") > 0)
        {
            GameContext.GetInstance().LuaState.doString(string.Format("GmManager.Instance:DoHotUpdate('" + sb.ToString().Substring(0, sb.Length - 1) + "');"));
        }
        //Debug.Log("检查文件结束------------");
    }
}
