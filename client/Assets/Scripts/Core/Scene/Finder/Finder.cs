using UnityEngine;

using System;
// using System.Collections;
using System.Collections.Generic;
using SLua;

[CustomLuaClass]
public sealed class Point {
    public float X;
    public float Y;

    public Point (float x1, float y1) {
        X = x1;
        Y = y1;
    }

    public Point () {

    }
}
[CustomLuaClass]
public sealed class PathNode : IHeapItem<PathNode> {

    public int G;
    public int H;

    public Vector3 WorldPosition;

    public int X = 0;
    public int Y = 0;

    public byte Status = 0;

    public byte Dir = 0;

    public PathNode Parent;

    public int F { get { return G + H; } }

    private int heapIndex;

    public int CompareTo (PathNode other) {
        int compare = F.CompareTo (other.F);
        if (compare == 0) {
            compare = H.CompareTo (other.H);
        }
        return -compare;
    }

    public PathNode Clone () {
        PathNode p = new PathNode ();
        p.G = G;
        p.H = H;
        p.X = X;
        p.Y = Y;
        p.Status = Status;
        p.WorldPosition = WorldPosition;
        p.Parent = Parent;
        p.Dir = Dir;
        return p;
    }

    public int HeapIndex { get { return heapIndex; } set { heapIndex = value; } }

    public override string ToString () {
        return string.Format ("PathNode:{0}X{1}, H:{2}, G:{3}, F:{4}, S:{5}, D:{6}", X, Y, H, G, F, Status, Dir);
    }
}

public enum PathNodeType {
    LoadPoint = 0,//路点
    UnWalkPoint = 1,//不可行走区域
    ALPHAPoint = 2,//可行走透明区域
    WATERPoint = 3,//可行走水区域
    DontWalkPoint = 4,//不优先可行走区域（寻路层）
    DontWalkALPHAPoint = 5//不优先可行走透明区域（寻路层）

}

public enum FinderModel {
    LoadPointModel = 0,//只走路点的模式
    UnWalkPointModel = 1//走路点与寻路层的模式
}

public sealed class Finder {
    public enum ASTART_DIR {
        DIR_S = 0,
        Dir_LU,
        Dir_U,
        Dir_RU,
        Dir_L,
        Dir_RESERVED,
        Dir_R,
        Dir_LD,
        Dir_D,
        Dir_RD,
        Dir_Count
    }

    private byte[,] POINT_DIR = { { (byte)ASTART_DIR.Dir_LU, (byte)ASTART_DIR.Dir_U, (byte)ASTART_DIR.Dir_RU }, { (byte)ASTART_DIR.Dir_L, (byte)ASTART_DIR.DIR_S, (byte)ASTART_DIR.Dir_R }, { (byte)ASTART_DIR.Dir_LD, (byte)ASTART_DIR.Dir_D, (byte)ASTART_DIR.Dir_RD } };

    private Heap<PathNode> openSet;
    private HashSet<PathNode> closedSet;

    private PathNode target;
    private PathNode current;

    private Map map;

    private List<PathNode> path = new List<PathNode> ();

    private FinderModel model = FinderModel.LoadPointModel;

    public FinderModel Model {
        get { return model; }
    }

    public void Initialization (Map map) {
        this.map = map;
        if (null == openSet) {
            openSet = new Heap<PathNode> (map.Collumn * map.Row);
        } else {
            openSet.Clear ();
        }

        if (null == closedSet) {
            closedSet = new HashSet<PathNode> ();
        } else {
            closedSet.Clear ();
        }

        target = null;
    }

    public bool IsTarget (int x, int y) {
        return target.X == x && target.Y == y;
    }

    private int GetDistance (PathNode nodeA, PathNode nodeB) {
        int dstX = Mathf.Abs (nodeA.X - nodeB.X);
        int dstY = Mathf.Abs (nodeA.Y - nodeB.Y);

        int distance = 0;
        if (dstX > dstY) {
            distance = 1414 * dstY + 1000 * (dstX - dstY);
        }
        else {
            distance = 1414 * dstX + 1000 * (dstY - dstX);
        }

        byte dir = GetDir(nodeA, nodeB);
        if (nodeA.Dir != dir) {
            distance += 420; // 该权值越大，则在贴墙走的情况下拐点会越少
        }
        return distance;
    }

    private byte GetDir (PathNode nodeA, PathNode nodeB) {
        int x_d = nodeA.X - nodeB.X;
        int y_d = nodeA.Y - nodeB.Y;

        byte next_dir = POINT_DIR[x_d + 1, y_d + 1];

        return next_dir;
    }

    private int CalH (PathNode nodeA, PathNode nodeB) {
        int dstX = Mathf.Abs(nodeA.X - nodeB.X);
        int dstY = Mathf.Abs(nodeA.Y - nodeB.Y);

        int distance = 0;
        if (dstX > dstY) {
            distance = 1414 * dstY + 1000 * (dstX - dstY);
        }
        else {
            distance = 1414 * dstX + 1000 * (dstY - dstX);
        }
        return distance;
    }

    /// <summary>
    /// 获取周边格子，注意层数必须是1层、2层这样。最少1层起
    /// </summary>
    /// <param name="sx">当前格子x</param>
    /// <param name="sy">当前格子y</param>
    /// <param name="level">层数，需要扫描的层数以8方向往外扩散，最少1层起</param>
    /// <returns></returns>
    public List<PathNode> GetNeighboursByXYAndLevel (int sx, int sy, int level) {
        List<PathNode> neighbours = new List<PathNode> ();
        if (level < 1) {
            return neighbours;
        }

        for (int x = -level; x <= level; x++) {
            for (int y = -level; y <= level; y++) {
                if (x == 0 && y == 0) {
                    continue;
                }

                int checkX = sx + x;
                int checkY = sy + y;

                if (checkX >= 0 && checkX < map.Collumn && checkY >= 0 && checkY < map.Row) {
                    PathNode n = map.Grid[checkX][checkY];
                    if (canWalk (n)) {
                        neighbours.Add (map.Grid[checkX][checkY]);
                    }
                }
            }
        }

        return neighbours;
    }

    public List<PathNode> GetNeighbours (PathNode source) {
        List<PathNode> neighbours = new List<PathNode> ();

        for (int x = -1; x <= 1; x++) {
            for (int y = -1; y <= 1; y++) {
                if (x == 0 && y == 0) {
                    continue;
                }

                int checkX = source.X + x;
                int checkY = source.Y + y;

                if (checkX >= 0 && checkX < map.Collumn && checkY >= 0 && checkY < map.Row) {
                    PathNode n = map.Grid[checkX][checkY];
                    if (canWalk (n)) {
                        neighbours.Add (map.Grid[checkX][checkY]);
                    }
                }
            }
        }

        return neighbours;
    }

    public List<PathNode> GetAllNeighbours (PathNode source) {
        List<PathNode> neighbours = new List<PathNode> ();

        for (int x = -1; x <= 1; x++) {
            for (int y = -1; y <= 1; y++) {
                if (x == 0 && y == 0) {
                    continue;
                }

                int checkX = source.X + x;
                int checkY = source.Y + y;

                if (checkX >= 0 && checkX < map.Collumn && checkY >= 0 && checkY < map.Row) {
                    neighbours.Add (map.Grid[checkX][checkY]);
                }
            }
        }

        return neighbours;
    }

    private Boolean canWalk (PathNode node) {
        PathNodeType pnt = (PathNodeType)Enum.ToObject (typeof (PathNodeType), node.Status);
        if (model == FinderModel.LoadPointModel && pnt != PathNodeType.UnWalkPoint && pnt != PathNodeType.DontWalkPoint && pnt != PathNodeType.DontWalkALPHAPoint) {
            return true;
        }
        else if (model == FinderModel.UnWalkPointModel && pnt != PathNodeType.UnWalkPoint) {
            return true;
        }
        else {
            return false;
        }
        //if (pnt != PathNodeType.UnWalkPoint) {
        //    return true;
        //}
        //else {
        //    return false;
        //}
    }

    private void RetracePath (PathNode startNode, PathNode endNode) {
        path.Clear ();
        PathNode currentNode = endNode;

        while (currentNode != startNode) {
            path.Add (currentNode);
            currentNode = currentNode.Parent;
        }
        path.Reverse ();
    }

    public List<PathNode> GetPath (int sourceX, int sourceY, int targetX, int targetY) {
        if (sourceX >= map.Collumn || sourceY >= map.Row || targetX >= map.Collumn || targetY >= map.Row) {
            return path;
        }

        if (map.Grid[sourceX][sourceY].Status == (byte)PathNodeType.DontWalkPoint || map.Grid[sourceX][sourceY].Status == (byte)PathNodeType.DontWalkALPHAPoint) {
            model = FinderModel.UnWalkPointModel;
        } else if (map.Grid[targetX][targetY].Status == (byte)PathNodeType.DontWalkPoint || map.Grid[targetX][targetY].Status == (byte)PathNodeType.DontWalkALPHAPoint) {
            model = FinderModel.UnWalkPointModel;
        } else {
            model = FinderModel.LoadPointModel;
        }
#if (SCENEDEBUG)
        Logger.Debug(string.Format("FinderMode:{0}", model));
#endif

        path.Clear ();
        PathNode startNode = map.Grid[sourceX][sourceY];
        PathNode targetNode = map.Grid[targetX][targetY];

        closedSet.Clear ();
        openSet.Clear ();
        openSet.Add (startNode);
        while (openSet.Count > 0) {
            PathNode currentNode = openSet.RemoveFirst ();
            closedSet.Add (currentNode);
            if (currentNode == targetNode) {
                RetracePath (startNode, targetNode);
                return path;
            }

            foreach (PathNode neighbour in GetNeighbours (currentNode)) {
                if (neighbour.Status == (byte)PathNodeType.UnWalkPoint || closedSet.Contains (neighbour)) {
                    continue;
                }

                int newMovementCostToNeighbour = currentNode.G + GetDistance (currentNode, neighbour);
                if (newMovementCostToNeighbour < neighbour.G || !openSet.Contains (neighbour)) {
                    neighbour.Dir = GetDir(currentNode, neighbour);
                    neighbour.G = newMovementCostToNeighbour;
                    neighbour.H = CalH(neighbour, targetNode);
                    neighbour.Parent = currentNode;

                    if (!openSet.Contains (neighbour)) {
                        openSet.Add (neighbour);
                        openSet.UpdateItem (neighbour);
                    }
                }
            }
        }
        return path;
    }
}