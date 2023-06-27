using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using UnityEngine;
using SLua;

[CustomLuaClass]
public class LuaCallActionAwakeDestroy : MonoBehaviour {

	public static Action awakeNoParamCall = null;
	public static Action destroyNoParamCall = null;

	public static Action<string> awakeCall = null;
	public static List<string> awakeList = new List<string>();

	public static Action<string> destroyCall = null;
	public static List<string> destroyList = new List<string>();

	public void AddAwake(string path) {
		awakeList.Add(path);
	}

	public void AddDestroy(string path) {
		destroyList.Add (path);
	}

	void Awake() {
		if (awakeNoParamCall != null) {
			awakeNoParamCall ();
		}

		if (awakeCall != null) {
			for (int i = 0; i < awakeList.Count; i++) {
				string path = awakeList[i];
				awakeCall (path);
			}
		}
	}

	void OnDestroy() {
		if (destroyNoParamCall != null) {
			destroyNoParamCall ();
		}

		if (destroyCall != null) {
			for (int i = 0; i < destroyList.Count; i++) {
				string path = destroyList[i];
				destroyCall(path);
			}
		}
	}
}