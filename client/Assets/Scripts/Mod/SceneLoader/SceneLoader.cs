using UnityEngine;
using UnityEngine.UI;
using System.Collections;

/// <summary>
/// 场景加载器，跳进该场景前，先在SceneManager里设置目标场景名称，然后跳进来。
/// </summary>
public class SceneLoader : MonoBehaviour {

    private float progress;

    private float precentSize;

    private GameContext ctx;

    private SceneMgr sm;

    private AsyncOperation asyncOpt;


    // Use this for initialization
    void Start() {

        ctx = GameContext.GetInstance();
        sm = ctx.sceneManager;

        if (sm.LastSceneName.Equals(sm.TargetSceneName)) {
            // 不重复进入相同场景
            sm.SetStatus(SceneStatus.Normal);
            return;
        }

        precentSize = (float)ctx.ScreenWidth / 100;

        Application.LoadLevel(sm.TargetSceneName);
    }

    IEnumerator LoadScene() {
        asyncOpt = Application.LoadLevelAsync(sm.TargetSceneName);
        asyncOpt.allowSceneActivation = false;

        while (asyncOpt.isDone) {
            yield return null;
        }

        asyncOpt.allowSceneActivation = true;

    }
}
