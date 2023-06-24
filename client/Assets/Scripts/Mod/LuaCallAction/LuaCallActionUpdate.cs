using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using UnityEngine;
using SLua;

[CustomLuaClass]
public class LuaCallActionUpdate : MonoBehaviour {

	public static Action updateNoParamCall = null;

	public static Action<string> updateCall = null;
	public static List<string> list = new List<string>();

	public void Add(string path) {
		list.Add(path);
	}

	void Awake() {
		if (updateNoParamCall != null) {
			updateNoParamCall ();
		}

		if (updateCall != null) {
			for (int i = 0; i < list.Count; i++) {
				string path = list [i];
				updateCall (path);
			}
		}
	}
}