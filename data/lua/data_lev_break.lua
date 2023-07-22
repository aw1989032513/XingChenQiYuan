DataLevBreak = DataLevBreak or {}

DataLevBreak.data_lev_break_effect_length = 6
DataLevBreak.data_lev_break_effect = {
	[1] = {id = 1, title = "新起点", desc = "晋升至<color='#249015'>1转95级</color>", tips = "1、为了适应突破后的能力，需将自身等级压至<color='#ffff00'>1转95级</color>\n2、同时回收<color='#ffff00'>25点</color>属性（5种属性各回收5点）\n3、突破后开启<color='#ffff00'>属性点兑换</color>，可额外获得<color='#ffff00'>50点</color>人物属性"},
	[2] = {id = 2, title = "新高度", desc = "人物可升至<color='#249015'>110级</color>", tips = "突破自身限制后，可超越<color='#ffff00'>100级</color>，上限提升至<color='#ffff00'>110级</color>"},
	[3] = {id = 3, title = "新冒险", desc = "解锁<color='#249015'>全新</color>冒险等级", tips = "突破后最高<color='#ffff00'>冒险等级</color>将会开放"},
	[4] = {id = 4, title = "新装备", desc = "全新<color='#249015'>神装</color>等你打造", tips = "<color='#ffff00'>100级装备</color>拥有更强大的属性，只有突破自身限制的勇者才有资格佩戴！"},
	[5] = {id = 5, title = "新宠物", desc = "相遇全新<color='#249015'>1转</color>宠物", tips = "105级的<color='#ffff00'>宠物</color>有多强？不亲身培养怎么能体会？勇敢突破自身，追寻强力神宠吧！"},
	[6] = {id = 6, title = "新能力", desc = "神秘<color='#249015'>职业</color>能力", tips = "突破后将获得一项神秘的职业能力，请自行探索"}
}

DataLevBreak.data_lev_break_goal_length = 8
DataLevBreak.data_lev_break_goal = {
	["1_1001"] = {id = 1001, times = 1, name = "重筑星途", progress = {{target_val = 5000}}, desc = "全服收集<color='#249015'>星光碎片</color>", iconId = 0, uiId = 0, sortIndex = 1, action = "2:60,1"},
	["1_1002"] = {id = 1002, times = 1, name = "消灭边界", progress = {{target_val = 1}}, desc = "<color='#249015'>边界恶魔</color>被击杀", iconId = 0, uiId = 0, sortIndex = 2, action = "2:60,1"},
	["1_1003"] = {id = 1003, times = 1, name = "百级强者", progress = {{target_val = 100}}, desc = "人物等级达到<color='#249015'>100</color>级", iconId = 0, uiId = 0, sortIndex = 3, action = "1:10301,1"},
	["1_1004"] = {id = 1004, times = 1, name = "冒险精神", progress = {{target_val = 6}}, desc = "冒险等级全部达到<color='#249015'>16</color>级", iconId = 0, uiId = 0, sortIndex = 3, action = "1:10800,2"},
	["1_1005"] = {id = 1005, times = 1, name = "盔甲铮亮", progress = {{target_val = 8}}, desc = "全身强化<color='#249015'>+9</color>", iconId = 0, uiId = 0, sortIndex = 4, action = "1:10600,4"},
	["1_1006"] = {id = 1006, times = 1, name = "人高马大", progress = {{target_val = 10}}, desc = "拥有1匹<color='#249015'>10级</color>的坐骑", iconId = 0, uiId = 0, sortIndex = 5, action = "1:17050,1"},
	["1_1007"] = {id = 1007, times = 1, name = "位高权重", progress = {{target_val = 45}}, desc = "通关爵位挑战第<color='#249015'>45</color>关", iconId = 0, uiId = 0, sortIndex = 6, action = "1:13800,1"},
	["1_1008"] = {id = 1008, times = 1, name = "挑战心魔", progress = {{target_val = 1}}, desc = "击杀<color='#249015'>心魔</color>", iconId = 0, uiId = 0, sortIndex = 7, action = "2:60,1"}
}

DataLevBreak.data_lev_break_times_length = 1
DataLevBreak.data_lev_break_times = {
	[1] = {times = 1, loss = {{1,23711,5},{2,23712,5},{3,23713,5},{4,23714,5},{5,23715,5},{6,23731,5},{7,23735,5}}, max_exchange = 50}
}

DataLevBreak.data_lev_break_boss_length = 2
DataLevBreak.data_lev_break_boss = {
	[73020] = {base_id = 73020, map = 10001, x = 3698, y = 3358},
	[73030] = {base_id = 73030, map = 10008, x = 1506, y = 559}
}

DataLevBreak.data_lev_break_exchange_length = 50
DataLevBreak.data_lev_break_exchange = {
	[1] = {point = 1, loss = {{90010,3000000}}},
	[2] = {point = 2, loss = {{90010,3500000}}},
	[3] = {point = 3, loss = {{90010,4000000}}},
	[4] = {point = 4, loss = {{90010,4500000}}},
	[5] = {point = 5, loss = {{90010,5000000}}},
	[6] = {point = 6, loss = {{90010,6000000}}},
	[7] = {point = 7, loss = {{90010,7000000}}},
	[8] = {point = 8, loss = {{90010,8000000}}},
	[9] = {point = 9, loss = {{90010,9000000}}},
	[10] = {point = 10, loss = {{90010,10000000}}},
	[11] = {point = 11, loss = {{90010,5000000}}},
	[12] = {point = 12, loss = {{90010,5800000}}},
	[13] = {point = 13, loss = {{90010,6600000}}},
	[14] = {point = 14, loss = {{90010,7400000}}},
	[15] = {point = 15, loss = {{90010,8200000}}},
	[16] = {point = 16, loss = {{90010,9000000}}},
	[17] = {point = 17, loss = {{90010,9800000}}},
	[18] = {point = 18, loss = {{90010,10600000}}},
	[19] = {point = 19, loss = {{90010,11400000}}},
	[20] = {point = 20, loss = {{90010,12200000}}},
	[21] = {point = 21, loss = {{90010,8000000}}},
	[22] = {point = 22, loss = {{90010,9000000}}},
	[23] = {point = 23, loss = {{90010,10000000}}},
	[24] = {point = 24, loss = {{90010,11000000}}},
	[25] = {point = 25, loss = {{90010,12000000}}},
	[26] = {point = 26, loss = {{90010,13000000}}},
	[27] = {point = 27, loss = {{90010,14000000}}},
	[28] = {point = 28, loss = {{90010,15000000}}},
	[29] = {point = 29, loss = {{90010,16000000}}},
	[30] = {point = 30, loss = {{90010,17000000}}},
	[31] = {point = 31, loss = {{90000,5000000}}},
	[32] = {point = 32, loss = {{90000,6000000}}},
	[33] = {point = 33, loss = {{90000,7000000}}},
	[34] = {point = 34, loss = {{90000,8000000}}},
	[35] = {point = 35, loss = {{90000,9000000}}},
	[36] = {point = 36, loss = {{90000,10000000}}},
	[37] = {point = 37, loss = {{90000,11000000}}},
	[38] = {point = 38, loss = {{90000,12000000}}},
	[39] = {point = 39, loss = {{90000,13000000}}},
	[40] = {point = 40, loss = {{90000,15000000}}},
	[41] = {point = 41, loss = {{90000,8000000}}},
	[42] = {point = 42, loss = {{90000,10000000}}},
	[43] = {point = 43, loss = {{90000,12000000}}},
	[44] = {point = 44, loss = {{90000,14000000}}},
	[45] = {point = 45, loss = {{90000,16000000}}},
	[46] = {point = 46, loss = {{90000,18000000}}},
	[47] = {point = 47, loss = {{90000,20000000}}},
	[48] = {point = 48, loss = {{90000,22000000}}},
	[49] = {point = 49, loss = {{90000,24000000}}},
	[50] = {point = 50, loss = {{90000,26000000}}}
}