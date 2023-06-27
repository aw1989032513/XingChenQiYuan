using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using UnityEngine;

public class GameStart : MonoBehaviour {

    private LuaTableProxy gameStart = null;

    void Start () {
        DontDestroyOnLoad (gameObject);

        gameStart = new LuaTableProxy ("GameLuaStart");
        gameStart.CallMethod ("Start");
		Debug.Log ("wang ==> GameStart");
    }

    void FixedUpdate() {
        gameStart.CallMethod("FixedUpdate");
    }

// #if UNITY_EDITOR
//     void Update()
//     {
//         if (Input.GetKey(KeyCode.LeftControl))
//         {
//             if (Input.GetKeyUp(KeyCode.U))
//             {
//                 gameStart.CallMethod("HotUpdate");
//             }
//         }
//     }
// #endif
}
