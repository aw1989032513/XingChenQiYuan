using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using UnityEngine;
using SLua;

[CustomLuaClass]
public class LuaCallActionAwakeStartDestroy : MonoBehaviour {

	public static Action awakeNoParamCall = null;
	public static Action startNoParamCall = null;
	public static Action destroyNoParamCall = null;

	public static Action<string> awakeCall = null;
	public static List<string> awakeList = new List<string>();

	public static Action<string> startCall = null;
	public static List<string> startList = new List<string>();

	public static Action<string> destroyCall = null;
	public static List<string> destroyList = new List<string>();

	public void AddAwake(string path) {
		awakeList.Add(path);
	}

	public void AddStart(string path) {
		startList.Add (path);
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

	void Start() {
		if (startNoParamCall != null) {
			startNoParamCall ();
		}

		if (startCall != null) {
			for (int i = 0; i < startList.Count; i++) {
				string path = startList[i];
				startCall(path);
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