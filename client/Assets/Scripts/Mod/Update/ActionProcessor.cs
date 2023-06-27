using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public class ActionProcessor : IProcessor {

    private Action doAction = null;
    private Action endAction = null;

    public ActionProcessor (Action action) {
        this.doAction += action;
    }

    public void AddEndEvent (Action action) {
        this.endAction += action;
    }

    public void Deal () {
        if (this.doAction != null) {
            this.doAction ();
        }
        if (this.endAction != null) {
            this.endAction ();
        }
    }
}
