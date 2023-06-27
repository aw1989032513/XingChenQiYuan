using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;

using UnityEngine;

public class TimerManager {

    private static TimerManager instance = null;
    private List<TimerTask> taskList = new List<TimerTask> ();

    private TimerManager () {
    }

    public static TimerManager GetInstance () {
        if (instance == null) {
            instance = new TimerManager ();
        }
        return instance;
    }

    public void AddTimerTask (TimerTask task) {
        this.taskList.Add (task);
    }

    public void RemoveTask (TimerTask task) {
        if (task != null) {
            this.taskList.Remove (task);
        }
    }

    /// <summary>
    /// 独立线程处理
    /// </summary>
    /// <param name="action"></param>
    /// <param name="callback"></param>
    public void RunThread (Action action, Action callback) {
        Thread thread = new Thread (new ThreadStart (() => { RunAsync (action, callback); }));
        thread.IsBackground = true;
        thread.Start ();
    }

    // public void OnTick () {
    //     int index = 0;
    //     while (this.taskList.Count > index) {
    //         TimerTask task = this.taskList[index];
    //         if (task == null) {
    //             this.taskList.RemoveAt (index);
    //         } else {
    //             task.msec = task.msec - 50;
    //             if (task.msec <= 0) {
    //                 try {
    //                     task.callback ();
    //                 } catch (Exception e) {
    //                     Log.Error ("TimerManager调整失败:" + e.Message);
    //                     throw e;
    //                 } finally {
    //                     task.callback = null;
    //                 	this.taskList.RemoveAt (index);
    //                 }
    //                 continue;
    //             } else {
    //                 index++;
    //             }
    //         }
    //     }
    // }

    public void OnTick () {
        List<TimerTask> delList = new List<TimerTask> ();
        int count = this.taskList.Count;
        TimerTask taskTmp = null;
        for (int i = 0; i < count; i++) {
            taskTmp = this.taskList[i];
            if (taskTmp == null) {
                continue;
            }
            taskTmp.msec = taskTmp.msec - 50;
            if (taskTmp.msec <= 0) {
                delList.Add (taskTmp);
            }
        }
        int dcount = delList.Count;
        for (int j = 0; j < dcount; j++) {
            taskTmp = delList[j];
            if (taskTmp == null) {
                continue;
            }
            try {
                taskTmp.callback ();
            } catch (Exception e) {
                Log.Error ("TimerManager调整失败:" + e.Message);
                throw e;
            } finally {
                taskTmp.callback = null;
            	this.taskList.Remove(taskTmp);
            }
        }
    }

    private void RunAsync (Action action, Action callback) {
        action ();
        TimerTask task = new TimerTask (10, callback);
        AddTimerTask (task);
    }
}

public class TimerTask {

    // 毫秒
    public float msec = 0;
    public Action callback = null;

    public TimerTask (float ms, Action callback) {
        this.msec = ms;
        this.callback += callback;
    }
}
