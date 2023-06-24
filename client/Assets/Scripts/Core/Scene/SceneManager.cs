using SLua;
using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Events;
using UnityEngine.EventSystems;

[CustomLuaClass]
public sealed class SceneMgr {
    public static float MapSizeConvertValue = 0.00526315f;

    private LuaTableProxy lua_sceneManager = null;
    public LuaTableProxy Lua_SceneManager { get { return lua_sceneManager; } }

    public string TargetSceneName;
    public string LastSceneName;

    private GameContext _context;

    private Map map;

    private Dictionary<uint, Map> mapCacher;

    /// <summary>
    /// 地图加载完成
    /// </summary>
    public bool MapLoaded = false;

    private SceneStatus status;

    private PathFinder pathFinder;

    private GameObject currentClickObject;
    private GameObject prevClickObject;

    private String currentMapDataPath;

    private uint currentMapId;

    public Map Map {
        get { return map; }
    }

    public SceneStatus Status { get { return status; } }

    public PathFinder PathFinder {
        get { return pathFinder; }
    }

    public GameObject CurrentClickObject {
        get { return currentClickObject; }
        set {
            if (value != null) {
                prevClickObject = currentClickObject;
            }
            if (currentClickObject != value || value == null) {
                CleanCurrentClickObject();
            }
            currentClickObject = value;
        }
    }

    public void CleanCurrentClickObject() {
        if (prevClickObject != null) {
            UnitController uc = prevClickObject.GetComponent<UnitController>();
            if (uc != null) {
                //_context.Call("mod_scene_elements_manager.cancel_select_sceneunit", uc.UnitType, uc.name);
            }
        }
    }

    public GameObject PrevClickObject { get { return prevClickObject; } }

    public SceneMgr() {
        _context = GameContext.GetInstance();

        mapCacher = new Dictionary<uint, Map>();

        pathFinder = new PathFinder(this);

        lua_sceneManager = new LuaTableProxy("SceneManager");
    }

    #region Public Methods
    /// <summary>
    /// 进入地图前处理
    /// </summary>
    public void EnterScene(int mapid) {
        currentMapId = (uint)mapid;

        SetStatus(SceneStatus.Transforming);

        TransportToMap(currentMapId);
    }

    /// <summary>
    /// 清除地图所有对象
    /// </summary>
    public void CleanScene() {
    }

    public void SetStatus(SceneStatus s) {
        status = s;
        if (status == SceneStatus.Normal) {
        }
    }

    /// <summary>
    /// 跳转游戏逻辑地图，该方法和JumpToScene意义不一样
    /// </summary>
    /// <param name="mapId">目标地图ID</param>
    public void TransportToMap(uint mapId) {
        // TODO 执行转地图前的操作
        MapLoaded = false;

        //sceneUpdateHandler.TransportToMap(mapId);
        LoadMapData(mapId);
    }

    public void LoadMapData(uint mapId) {
        currentMapId = mapId;
        if (mapCacher.ContainsKey(mapId)) {
            map = mapCacher[mapId];
            MapDataLoadOver();
        }
        else {
            string path = String.Format("{0}/data/{1}.map", _context.ResourcesPath, mapId);
            if (!File.Exists(path)) {
                throw new Exception("读取地图数据失败: " + path);
            }

            var fs = File.OpenRead(path);
            var buff = new byte[fs.Length];
            fs.Read(buff, 0, buff.Length);
            fs.Close();

            ProcessMapData(buff);
        }
    }

    public void JumpToScene(string target) {
        LastSceneName = "Launcher";
        TargetSceneName = target;

        pathFinder.Initialization(map);

        if (!IsFocusOnInputText()) {
            EventSystem.current.SetSelectedGameObject(CurrentClickObject, null);//强制剥夺焦点
        }

        Application.LoadLevel("SceneJumper");
    }

    private bool IsFocusOnInputText()
    {
        if (EventSystem.current != null && EventSystem.current.currentSelectedGameObject != null && EventSystem.current.currentSelectedGameObject.GetComponent<InputField>() != null)
            return true;
        return false;
    }

    #endregion

    #region Private methods

    private void ProcessMapData(byte[] buff) {
        MemoryStream ms = new MemoryStream(buff);
        BinaryReader br = new BinaryReader(ms);

        map = new Map();
        map.MapId = Utils.ReverseBytes(br.ReadUInt32());
        map.TextureId = Utils.ReverseBytes(br.ReadUInt32());
        map.MaxPlayer = Utils.ReverseBytes(br.ReadUInt16());
        map.Width = Utils.ReverseBytes(br.ReadUInt32());
        map.MapWidth = (float)map.Width * MapSizeConvertValue;
        map.Height = Utils.ReverseBytes(br.ReadUInt32());
        map.MapHeight = (float)map.Height * MapSizeConvertValue;
        map.TileWidth = Utils.ReverseBytes(br.ReadUInt16());
        map.TileHeight = Utils.ReverseBytes(br.ReadUInt16());
        map.Row = Utils.ReverseBytes(br.ReadUInt16());
        map.Collumn = Utils.ReverseBytes(br.ReadUInt16());
        map.GridWidth = br.ReadByte();
        map.GridHeight = br.ReadByte();
        map.Name = Encoding.UTF8.GetString(br.ReadBytes(Utils.ReverseBytes(br.ReadUInt16())));

        map.Grid = new PathNode[map.Collumn][];
        for (int i = 0; i < map.Collumn; i++) {
            map.Grid[i] = new PathNode[map.Row];
        }

        float GridWorldWidth = map.GridWidth * MapSizeConvertValue;
        for (int i = 0; i < map.Collumn; i++) {
            for (int j = map.Row - 1; j >= 0; j--) {
                var p = new PathNode();
                p.X = i;
                p.Y = j;
                p.Status = br.ReadByte();
                p.WorldPosition = new Vector3(p.X * GridWorldWidth, p.Y * GridWorldWidth, 1);
                map.Grid[p.X][p.Y] = p;
            }
        }

        ms.Close();
        br.Close();

        mapCacher.Add(map.MapId, map);
        MapDataLoadOver();
    }

    private void MapDataLoadOver() {
        MapLoaded = true;

        JumpToScene("Normal");

        SetStatus(SceneStatus.Normal);

        lua_sceneManager.CallMethod("MapData_Loaded");
        //_context.EventsManager.DispatchEvent("mapdata_loaded");
    }
    #endregion

    public void ModifyMap(SLua.LuaTable table) {
        uint mapid = (uint)(Double)table["base_id"];
        if (map.MapId == mapid) {
            Map cacherMap = mapCacher[mapid];
            if (map == cacherMap) { map = cacherMap.CloneMap(); }
            uint type = (uint)(Double)table["flag"];
            SLua.LuaTable pos = table["pos"] as SLua.LuaTable;
            foreach (SLua.LuaTable.TablePair asset in pos) {
                SLua.LuaTable info = asset.value as SLua.LuaTable;
                uint x = (uint)(Double)info["x"];
                uint y = (uint)(Double)info["y"];
                if (type == 1) {
                    map.Grid[x][y].Status = 1;
                }
                else {
                    map.Grid[x][y].Status = cacherMap.Grid[x][y].Status;
                }
            }
            pathFinder.Initialization(map);
        }
    }
}

/// <summary>
/// 地图网格结构体
/// </summary>
[CustomLuaClass]
public sealed class Map {
    public uint MapId;
    public uint TextureId;
    public ushort MaxPlayer;
    public uint Width;
    public uint Height;
    public ushort TileWidth;
    public ushort TileHeight;
    public ushort Row;
    public ushort Collumn;
    public byte GridWidth;
    public byte GridHeight;

    public float MapWidth;
    public float MapHeight;

    public string Name;
    public PathNode[][] Grid;

    /// <summary>
    /// 检查是否可行走坐标
    /// </summary>
    /// <param name="tx">目标x点</param>
    /// <param name="ty">目标y点</param>
    /// <returns>返回true为可行走，false为不可行走(这都不懂的话你麻烦大了)</returns>
    public bool Walkable(float tx, float ty) {
        int gx = GetMapGridByX(tx);
        int gy = GetMapGridByY(ty);
        if (gx >= this.Collumn || gy >= this.Row) return false;

        if (Grid[gx][gy].Status != (byte)PathNodeType.UnWalkPoint) {
            return true;
        }
        return false;
    }

    /// <summary>
    /// 检查是否透明
    /// </summary>
    /// <param name="tx">目标x点</param>
    /// <param name="ty">目标y点</param>
    /// <returns>返回true为透明点，false为不透明点</returns>
    public bool Transparent(float tx, float ty) {
        int gx = GetMapGridByX(tx);
        int gy = GetMapGridByY(ty);
        if (gx >= this.Collumn || gy >= this.Row) return false;

        PathNode pathNode = Grid[gx][gy];
        if (pathNode.Status == (byte)PathNodeType.ALPHAPoint
            || pathNode.Status == (byte)PathNodeType.DontWalkALPHAPoint) {
            return true;
        }
        return false;
    }

    public int GetMapGridByX(float tx) {
        int v = (int)((tx / SceneMgr.MapSizeConvertValue) / (float)GridWidth + 0.5f);
        if (v < 0) {
            v = 0;
        }

        if (v > Collumn - 1) {
            v = Collumn - 1;
        }

        return v;
    }

    public int GetMapGridByY(float ty) {
        int v = (int)((ty / SceneMgr.MapSizeConvertValue) / (float)GridHeight + 0.5f);
        if (v < 0) {
            v = 0;
        }

        if (v > Row - 1) {
            v = Row - 1;
        }

        return v;
    }

    public Map CloneMap() {
        Map map = new Map();
        map.MapId = this.MapId;
        map.TextureId = this.TextureId;
        map.MaxPlayer = this.MaxPlayer;
        map.Width = this.Width;
        map.Height = this.Height;
        map.TileWidth = this.TileWidth;
        map.TileHeight = this.TileHeight;
        map.Row = this.Row;
        map.Collumn = this.Collumn;
        map.GridWidth = this.GridWidth;
        map.GridHeight = this.GridHeight;
        map.MapWidth = this.MapWidth;
        map.MapHeight = this.MapHeight;
        map.Name = this.Name;
        map.Grid = new PathNode[map.Collumn][];
        for (int i = 0; i < map.Collumn; i++) {
            map.Grid[i] = new PathNode[map.Row];
        }

        float GridWorldWidth = this.GridWidth * SceneMgr.MapSizeConvertValue;
        for (int i = 0; i < map.Collumn; i++) {
            for (int j = map.Row - 1; j >= 0; j--) {
                var p = new PathNode();
                p.X = i;
                p.Y = j;
                p.Status = this.Grid[p.X][p.Y].Status;
                p.WorldPosition = new Vector3(p.X * GridWorldWidth, p.Y * GridWorldWidth, 1);
                map.Grid[p.X][p.Y] = p;
            }
        }
        return map;
    }
}

/// <summary>
/// 客户端场景状态
/// </summary>
public enum SceneStatus : byte {

    /// <summary>
    /// 正常 (值为0)
    /// </summary>
    Normal = 0,

    /// <summary>
    /// 跳转中 (值为1)
    /// </summary>
    Transforming,

    /// <summary>
    /// 战斗中 (值为2)
    /// </summary>
    Combated
}

/// <summary>
/// 传送方式
/// </summary>
public enum TranslateStyle : byte {
    Fall = 1,
    Junp = 2,
    Down = 3,
    Now = 4
}
