using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

/// <summary>
/// 解决并发问题
/// 只针对单线程写，单线程读
/// </summary>
/// <typeparam name="T"></typeparam>
public class SegmentQueue<T> where T : class {

    private SegmentNode<T> enNode = null;
    private SegmentNode<T> deNode = null;

    public SegmentQueue () {
        enNode = new SegmentNode<T> ();
    	deNode = enNode;
    }

    public void Enqueue (T value) {
        if (enNode.IsFull ()) {
            SegmentNode<T> nextNode = new SegmentNode<T> ();
            enNode.Next = nextNode;
            enNode = nextNode;
        }
        enNode.Enqueue (value);
    }

    public T Dequeue () {
        if (deNode != null) {
            if (deNode.IsDeAll ()) {
                SegmentNode<T> nextNode = deNode.Next;
                if (nextNode != null) {
                    deNode.Clear ();
                    deNode = nextNode;
                    return deNode.Dequeue ();
                } else {
                    return deNode.Dequeue ();
                }
            } else {
                return deNode.Dequeue ();
            }
        } else {
            Log.Error ("SegmentQueue deNode is Null");
            return null;
        }
    }
}

/// <summary>
/// 数据块节点
/// </summary>
/// <typeparam name="T"></typeparam>
class SegmentNode<T> where T : class {
    private int size = 100;
    private List<T> list = new List<T> ();

    // 读使用
    private int head = 0;
    // 写使用
    private int tail = 0;

    public SegmentNode<T> Next = null;

    public bool IsFull () {
        return tail >= size;
    }

    public bool IsDeAll () {
        if (IsEmpty ()) {
            if (head >= size) {
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    public bool IsEmpty () {
        return head == tail;
    }

    public bool Enqueue (T value) {
        list.Add (value);
        tail++;
        return true;
    }

    public T Dequeue () {
        if (IsEmpty ()) {
            return null;
        } else {
            T value = list[head];
            list[head] = null;
            head++;
            return value;
        }
    }

    public void Clear () {
        // Console.WriteLine ("Clear");
        list.Clear ();
        list = null;
    }
}