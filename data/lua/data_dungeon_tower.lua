DataDungeonTower = DataDungeonTower or {}

DataDungeonTower.data_get_length = 10
DataDungeonTower.data_get = {
	{base_id = 55499, name = "利贝尔二世", floor = 1},
	{base_id = 56300, name = "幽冥狼王", floor = 1},
	{base_id = 56700, name = "火精灵", floor = 1},
	{base_id = 56400, name = "祸乱", floor = 1},
	{base_id = 55599, name = "守望者", floor = 2},
	{base_id = 55199, name = "巴恩", floor = 2},
	{base_id = 56500, name = "红角大王", floor = 2},
	{base_id = 55899, name = "祖拉", floor = 2},
	{base_id = 56800, name = "森罗", floor = 3},
	{base_id = 57000, name = "复仇之灵", floor = 3}
}

DataDungeonTower.data_gain_length = 3
DataDungeonTower.data_gain = {
	{floor = 1, floor_name = "底层", items = {{90000,0,50000},{20052,0,1}}, lev_low = 0, lev_high = 120},
	{floor = 2, floor_name = "中层", items = {{22215,0,1},{20052,0,1}}, lev_low = 0, lev_high = 120},
	{floor = 3, floor_name = "上层", items = {{20006,1,5}}, lev_low = 0, lev_high = 120}
}

DataDungeonTower.data_help_gain_length = 1
DataDungeonTower.data_help_gain = {
	{floor = 1, help_gain = {{20549,1}}}
}