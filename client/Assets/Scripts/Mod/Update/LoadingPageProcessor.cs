using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public class LoadingPageProcessor : IProcessor {

    private GameContext ctx = null;
    private Action action = null;

    public LoadingPageProcessor (GameContext ctx) {
        this.ctx = ctx;
    }

    public void Deal () {
        ctx.LoadingPage = new LoadingPagePatch ();
        ctx.LoadingPage.InitCompleted += Fire;
        ctx.LoadingPage.LoadPage ();
    }

    public void AddEndEvent (Action action) {
        this.action += action;
    }

    private void Fire () {
        if (this.action != null) {
            this.action ();
        }
    }
}
