using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using UnityEngine;
using SLua;

[CustomLuaClass]
public class LuaCallActionAwake : MonoBehaviour {

	public static Action awakeNoParamCall = null;

	public static Action<string> awakeCall = null;
	public static List<string> list = new List<string>();

	public void Add(string path) {
		list.Add(path);
	}

    void Awake() {
		if (awakeNoParamCall != null) {
			awakeNoParamCall ();
		}

    	if (awakeCall != null) {
			for (int i = 0; i < list.Count; i++) {
				string path = list [i];
				awakeCall (path);
			}
		}
    }
}