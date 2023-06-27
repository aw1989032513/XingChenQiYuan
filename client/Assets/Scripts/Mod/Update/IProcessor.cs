using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public interface IProcessor {
    void Deal ();
    void AddEndEvent(Action action);
}
