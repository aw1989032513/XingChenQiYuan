using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using UnityEngine;
using SLua;

[CustomLuaClass]
public class LuaCallActionDestroy : MonoBehaviour {

	public static Action destroyNoParamCall = null;

	public static Action<string> destroyCall = null;
	public static List<string> list = new List<string>();

	public void Add(string path) {
		list.Add(path);
	}

	void OnDestroy() {
		if (destroyNoParamCall != null) {
			destroyNoParamCall ();
		}

		if (destroyCall != null) {
			for (int i = 0; i < list.Count; i++) {
				string path = list [i];
				destroyCall(path);
			}
		}
	}
}