using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using UnityEngine;
using SLua;

[CustomLuaClass]
public class LuaCallActionStart : MonoBehaviour {

	public static Action startNoParamCall = null;

	public static Action<string> startCall = null;
	public static List<string> list = new List<string>();

	public void Add(string path) {
		list.Add(path);
	}

	void Start() {
		if (startNoParamCall != null) {
			startNoParamCall ();
		}

		if (startCall != null) {
			for (int i = 0; i < list.Count; i++) {
				string path = list [i];
				startCall(path);
			}
		}
	}
}