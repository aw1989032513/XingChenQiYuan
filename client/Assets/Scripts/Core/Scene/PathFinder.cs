
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

using System;
using System.Collections.Generic;
using SLua;
[CustomLuaClass]
/// <summary>
/// 寻路 
/// </summary>
public sealed class PathFinder {

    #region Field

    private SceneMgr sm;

    private Finder finder;

    private float cd = 0;

    private float sceneClickCD = 0;

    #endregion

    #region Properties

    public Finder Finder {
        get { return finder; }
    }

    #endregion

    public PathFinder (SceneMgr sm) {
        sceneClickCD = 0.2f;

        this.sm = sm;

        finder = new Finder ();
    }

    #region Protected Methods

    #endregion

    #region Private Methods

    private Point CalcRelatePoint (Point p1, float slope1, Point p2, float slope2) {
        Point p = new Point ();
        p.X = (slope1 * p1.X - slope2 * p1.X - p1.Y + p2.Y) / (slope1 - slope2);
        p.Y = slope1 * (p.X - p1.X) + p1.Y;

        return p;
    }

    private float calcSlope (Point p1, Point p2) {
        return (p2.Y - p1.Y) / (p2.X - p1.X);
    }

    private Point GetCollisionPoint (Point pt1, Point pt2, Point pt3, Point pt4) {
        float x1 = 0;
        float y1 = 0;
        float m1 = 0;
        if (pt1.X == pt2.X) {
            x1 = pt1.X;
            m1 = float.NaN;
        } else if (pt1.Y == pt2.Y) {
            y1 = pt1.Y;
            m1 = 0;
        } else {
            m1 = calcSlope (pt2, pt1);
        }

        float x2 = 0;
        float y2 = 0;
        float m2 = 0;
        if (pt3.X == pt4.X) {
            x2 = pt3.X;
            m2 = float.NaN;
        } else if (pt3.Y == pt4.Y) {
            y2 = pt3.Y;
            m2 = 0;
        } else {
            m2 = calcSlope (pt4, pt3);
        }

        if ((m1 == m2) || (float.IsNaN (m1) && float.IsNaN (m2))) {
            return null;
        }

        float ry = 0;

        if (float.IsNaN (m1)) {
            if (m2 == 0) {
                return new Point (x1, y2);
            } else {
                ry = pt4.Y + (x1 - pt4.X) * m2;
                return new Point (x1, ry);
            }
        } else if (float.IsNaN (m2)) {
            if (m1 == 0) {
                return new Point (x2, y1);
            } else {
                ry = pt2.Y + (x2 - pt2.X) * m1;
                return new Point (x2, ry);
            }
        } else {
            return CalcRelatePoint (pt1, m1, pt3, m2);
        }
    }

    private List<PathNode> GetLineCrossNodes (PathNode begin, PathNode end, int maxCol, int maxRow) {

        int beginCol = begin.X;
        int beginRow = begin.Y;

        int endCol = end.X;
        int endRow = end.Y;

        List<PathNode> nodes = new List<PathNode> ();

        Point pt1 = new Point (beginCol + 0.5f, beginRow + 0.5f);
        Point pt2 = new Point (endCol + 0.5f, endRow + 0.5f);

        Point pt3 = new Point ();
        Point pt4 = new Point ();

        int dx = Math.Abs (endCol - beginCol);
        int dy = Math.Abs (endRow - beginRow);

        bool isH = dx > dy;

        Point p;

        int colFactor = end.X > begin.X ? 1 : -1;
        int rowFactor = end.Y > begin.Y ? 1 : -1;

        if (isH) {
            for (int i = beginCol; i != endCol; i += colFactor) {
                pt3.X = (float)(colFactor == 1 ? Math.Min (i + 0.5 + colFactor * 0.5f, endCol) : Math.Max (i + 0.5f + colFactor * 0.5f, endCol));
                pt3.Y = Math.Max (0, beginRow - rowFactor);

                pt4.X = pt3.X;
                pt4.Y = Math.Min (maxRow - 1, endRow + rowFactor);

                p = GetCollisionPoint (pt1, pt2, pt3, pt4);

                // 比较严格的路径优化判断，需要周围没有障碍物才可以消除拐点
                //PathNode source = new PathNode ();
                //source.X = (int)p.X;
                //source.Y = (int)p.Y;

                //List<PathNode> nig = finder.GetAllNeighbours (source);
                //nodes.AddRange (nig);

                // 比较宽松的路径优化判断，只要本身不是障碍物就消除拐点
                PathNode source = sm.Map.Grid[(int)p.X][(int)p.Y];
                nodes.Add(source);
            }
        } else {
            for (int i = beginRow; i != endRow; i += rowFactor) {
                pt3.X = Math.Max (0, beginCol - colFactor);
                pt3.Y = rowFactor == 1 ? Math.Min (i + 0.5f + rowFactor * 0.5f, endRow) : Math.Max (i + 0.5f + rowFactor * 0.5f, endRow);

                pt4.X = Math.Min (maxCol - 1, endCol + colFactor);
                pt4.Y = pt3.Y;

                p = GetCollisionPoint (pt1, pt2, pt3, pt4);

                // 比较严格的路径优化判断，需要周围没有障碍物才可以消除拐点
                //PathNode source = new PathNode();
                //source.X = (int)p.X;
                //source.Y = (int)p.Y;

                //List<PathNode> nig = finder.GetAllNeighbours(source);
                //nodes.AddRange(nig);

                // 比较宽松的路径优化判断，只要本身不是障碍物就消除拐点
                PathNode source = sm.Map.Grid[(int)p.X][(int)p.Y];
                nodes.Add(source);
            }
        }

        return nodes;
    }

    private List<PathNode> FloydAdvance (List<PathNode> p) {
        List<PathNode> copyPath = new List<PathNode> ();

        if (null == p) {
            return copyPath;
        }

        foreach (PathNode item in p) {
            copyPath.Add (item.Clone ());
        }

        int len = copyPath.Count;

        int i = 0;
        if (len > 2) {
            Vector2 firstDis = GetNodeDistance (copyPath[len - 1], copyPath[len - 2]);
            Vector2 secondDis;

            for (i = copyPath.Count - 3; i >= 0; --i) {
                secondDis = GetNodeDistance (copyPath[i + 1], copyPath[i]);
                if (secondDis.Equals (firstDis)) {
                    copyPath.RemoveAt (i + 1);
                } else {
                    firstDis = secondDis;
                }
            }
        }

        for (i = copyPath.Count - 1; i > 1; --i) {
            for (int j = 0; j <= i - 2; ++j) {
                if (!HasObstacle (copyPath[j], copyPath[i])) {
                    copyPath.RemoveRange (j + 1, i - j - 1);
                    i = j;
                    break;
                }
            }
        }
        p.Clear ();
        return copyPath;
    }

    private bool HasObstacle (PathNode begin, PathNode end) {

        List<PathNode> points = GetLineCrossNodes (begin, end, sm.Map.Collumn, sm.Map.Row);

        foreach (PathNode item in points) {
            byte b = sm.Map.Grid[item.X][item.Y].Status;

            // 路径优化的时候考虑寻路层
            //if (finder.Model == FinderModel.LoadPointModel && (b == (Byte)PathNodeType.UnWalkPoint
            //    || b == (Byte)PathNodeType.DontWalkPoint
            //    || b == (Byte)PathNodeType.DontWalkALPHAPoint)) {
            //    return true;
            //} else if (finder.Model == FinderModel.UnWalkPointModel && (b == (Byte)PathNodeType.UnWalkPoint)) {
            //    return true;
            //}

            // 路径优化的时候不考虑寻路层
            if (b == (Byte)PathNodeType.UnWalkPoint) {
                return true;
            }
        }

        return false;
    }

    private Vector2 GetNodeDistance (PathNode v1, PathNode v2) {
        Vector2 v = new Vector2 ();
        v.x = v2.X - v1.X;
        v.y = v2.Y - v1.Y;
        return v;
    }

    #endregion

    #region Public Methods

    public void Initialization (Map map) {
        finder.Initialization (map);
    }

    public List<PathNode> LineOfSight (List<PathNode> nodes) {
        List<PathNode> list = new List<PathNode> ();
        list.Add (nodes[0]);

        PathNode start = nodes[0];
        PathNode next;

        int checkIndex = 1;

        PathNode tempNode;
        while (checkIndex < nodes.Count) {
            next = nodes[checkIndex];
            if (!Physics.Linecast (start.WorldPosition, next.WorldPosition)) {
                checkIndex++;
            } else {
                if (checkIndex == nodes.Count - 1) {
                    list.Add (nodes[checkIndex - 1]);
                    list.Add (nodes[checkIndex]);
                } else {
                    list.Add (nodes[checkIndex - 1]);
                    start = nodes[checkIndex];
                    next = nodes[checkIndex + 1];
                }
                checkIndex++;
            }
        }
        return list;
    }

    public Vector2[] MoveTo (UnitController uc, float tx, float ty, int flyTo) {
        if (uc == null) return null;

        Vector3 TargetPoint = new Vector3 (tx, ty, ty);
        int tpx = sm.Map.GetMapGridByX (tx);
        int tpy = sm.Map.GetMapGridByY (ty);
        int spx = sm.Map.GetMapGridByX (uc.transform.position.x);
        int spy = sm.Map.GetMapGridByY (uc.transform.position.y);


#if (SCENEDEBUG)
        Debug.Log (string.Format ("目标点: {0}x{1} [{2}]", tpx, tpy, sm.Map.Grid [tpx, tpy]));
#endif

        if (flyTo == 1) {
            return new Vector2[] { Vector2.zero, TargetPoint };
        }

        if (spx == tpx && spy == tpy) {
            return new Vector2[] { Vector2.zero, TargetPoint };
        }

        List<PathNode> rodes = null;
        if (sm.Map.Grid[tpx][tpy].Status != 1) {
            rodes = finder.GetPath (spx, spy, tpx, tpy);

#if (SCENEDEBUG)
            Debug.Log(string.Format("Rodes: {0}", rodes.Count));
#endif

            rodes = FloydAdvance (rodes);

#if (SCENEDEBUG)
            Debug.Log(string.Format("Rodes: {0}", rodes.Count));
#endif

        } else {
#if (SCENEDEBUG)
            nei = sm.Finder.GetNeighboursByXYAndLevel(tpx, tpy, 5);
            Debug.Log(string.Format("邻居:{0}", nei.Count));
#else
            List<PathNode> nei = finder.GetNeighboursByXYAndLevel (tpx, tpy, 5);
#endif

            if (nei.Count > 0) {
                PathNode closedN = nei[0];
                int closedP = Math.Abs (closedN.X - tpx) + Math.Abs (closedN.Y - tpy);
                foreach (PathNode n in nei) {
                    int p = Math.Abs (n.X - tpx) + Math.Abs (n.Y - tpy);
                    if (closedP > p) {
                        closedP = p;
                        closedN = n;
                    }
                }
                if (null != closedN) {
                    tpx = closedN.X;
                    tpy = closedN.Y;
                    float ttpy = tpy * sm.Map.GridHeight * SceneMgr.MapSizeConvertValue;
                    TargetPoint = new Vector3 (tpx * sm.Map.GridWidth * SceneMgr.MapSizeConvertValue, ttpy, ttpy);
                    rodes = finder.GetPath (spx, spy, tpx, tpy);

#if (SCENEDEBUG)
            Debug.Log(string.Format("Rodes: {0}", rodes.Count));
#endif

                    rodes = FloydAdvance (rodes);

#if (SCENEDEBUG)
            Debug.Log(string.Format("Rodes: {0}", rodes.Count));

            Debug.Log(string.Format("closedN: {0} {1} {2}", closedN.Status, closedN.X, closedN.Y));

            PathNode pathNode = sm.Map.Grid[sm.Map.GetMapGridByX(TargetPoint.x), sm.Map.GetMapGridByY(TargetPoint.y)];
            Debug.Log(string.Format("TargetPoint: {0} {1} {2}", pathNode.Status, pathNode.X, pathNode.Y));
#endif
                }
            } else {
                return null;
            }
        }

        if (rodes.Count == 0) {
            //return;
        }

        Vector2[] paths;
        int pathsLength = rodes.Count;
        if (pathsLength > 1) {
            paths = new Vector2[pathsLength];

            int index = 0;
            foreach (PathNode n in rodes) {
                if (index != 0 && index < rodes.Count - 1) {
                    paths[index] = n.WorldPosition;
                }
                index++;
            }
            paths[index - 1] = TargetPoint;
        } else {
            paths = new Vector2[] { Vector2.zero, TargetPoint };
        }
        cd = Time.time;

        return paths;
    }

#if (SCENEDEBUG)
    private List<PathNode> nei = null;
    void OnDrawGizmos() {
        if (null != sm && null != sm.Map && null != sm.Map.Grid && null != Follower) {
            Gizmos.color = Color.white;
            int spx = sm.Map.GetMapGridByX(Follower.transform.position.x);
            int spy = sm.Map.GetMapGridByY(Follower.transform.position.y);
            PathNode n = sm.Map.Grid[spx, spy];
            foreach(var i in sm.Map.Grid) {
                PathNodeType pnt = (PathNodeType)Enum.ToObject(typeof(PathNodeType), i.Status);
                switch(pnt) {
                    case PathNodeType.ALPHAPoint:
                        Gizmos.color = Color.gray;
                        break;
                    case PathNodeType.DontWalkPoint:
                        Gizmos.color = Color.cyan;
                        break;
                    case PathNodeType.UnWalkPoint:
                        Gizmos.color = Color.black;
                        break;
                    case PathNodeType.LoadPoint:
                        Gizmos.color = Color.white;
                        break;
                    case PathNodeType.WATERPoint:
                        Gizmos.color = Color.blue;
                        break;
                    case PathNodeType.DontWalkALPHAPoint:
                        Gizmos.color = Color.green;
                        break;

                }
                if (null != nei) {
                    foreach (var nn in nei) {
                        if (nn == i) {
                            if (pnt == PathNodeType.UnWalkPoint) {
                                Gizmos.color = Color.magenta;
                            } else {
                                Gizmos.color = Color.yellow;
                            }
                        }
                    }
                }
                if (n == i) {
                    Gizmos.color = Color.red;
                }
                Gizmos.DrawCube(i.WorldPosition, Vector3.one * 0.2f);
            }
        }
    }
#endif

    public Vector2[] MoveToRoadPoint (UnitController uc, int flyTo) {
        int spx = sm.Map.GetMapGridByX (uc.transform.position.x);
        int spy = sm.Map.GetMapGridByY (uc.transform.position.y);

        List<PathNode> nei = finder.GetNeighboursByXYAndLevel (spx, spy, 5);
        if (nei.Count > 0) {
            PathNode closedN = nei[nei.Count - 1];
            int tpx = closedN.X;
            int tpy = closedN.Y;
            float ttpy = tpy * sm.Map.GridHeight * SceneMgr.MapSizeConvertValue;
            Vector3 TargetPoint = new Vector3 (tpx * sm.Map.GridWidth * SceneMgr.MapSizeConvertValue, ttpy, ttpy);

            return MoveTo (uc, TargetPoint.x, TargetPoint.y, flyTo);
        }
        return null;
    }

    public void MoveToPointByScreenClick (float tx, float ty) {
        MoveToPointByScreenClick (new Vector2 (tx, ty));
    }

    public void MoveToPointByScreenClick (Vector2 screenPoint) {
        Ray ray = Camera.main.ScreenPointToRay (screenPoint);
        RaycastHit hit;
        if (Physics.Raycast (ray, out hit)) {
            sm.CurrentClickObject = null;
            int l = LayerMask.GetMask ("UI");
            if (hit.collider.gameObject.layer != l) {
                Vector3 tp = new Vector3 (hit.point.x, hit.point.y, 10);
                //MoveTo(tp.x, tp.y);
                sm.Lua_SceneManager.CallMethod ("MapClick", tp.x, tp.y);
            }
        }
    }

    public void MoveToPointByWorldMapClick (Vector2 point) {
        if ((Time.time - cd) > sceneClickCD) {
            sm.CurrentClickObject = null;
            int l = LayerMask.GetMask ("UI");
            Vector3 tp = new Vector3 (point.x, point.y, 10);

            //MoveTo(tp.x, tp.y);
        }
    }
    #endregion
}
