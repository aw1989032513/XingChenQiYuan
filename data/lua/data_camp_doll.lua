DataCampDoll = DataCampDoll or {}

--套娃提示语
DataCampDoll.data_dolls_talk_list_length = 3
DataCampDoll.data_dolls_talk_list = {
	[1] = {talk_id = 1, talk_str = "我这么可爱能给你带来好运"},
	[2] = {talk_id = 2, talk_str = "好多宝贝肚子快撑破啦{face_1,3}"},
	[3] = {talk_id = 3, talk_str = "好怕怕，居然被发现了{face_1,7}"}
}
--套娃展示物品
DataCampDoll.data_dolls_reward_list_length = 38
DataCampDoll.data_dolls_reward_list = {
	[1] = {id = 1, item_id = 22205},
	[2] = {id = 2, item_id = 22444},
	[3] = {id = 3, item_id = 23771},
	[4] = {id = 4, item_id = 20638},
	[5] = {id = 5, item_id = 20639},
	[6] = {id = 6, item_id = 70656},
	[7] = {id = 7, item_id = 70660},
	[8] = {id = 8, item_id = 20617},
	[9] = {id = 9, item_id = 29041},
	[10] = {id = 10, item_id = 70362},
	[11] = {id = 11, item_id = 21256},
	[12] = {id = 12, item_id = 70673},
	[13] = {id = 13, item_id = 23740},
	[14] = {id = 14, item_id = 22445},
	[30] = {id = 30, item_id = 22205},
	[31] = {id = 31, item_id = 22444},
	[32] = {id = 32, item_id = 70656},
	[33] = {id = 33, item_id = 70660},
	[34] = {id = 34, item_id = 29101},
	[35] = {id = 35, item_id = 20616},
	[36] = {id = 36, item_id = 20075},
	[37] = {id = 37, item_id = 20076},
	[38] = {id = 38, item_id = 23740},
	[39] = {id = 39, item_id = 22445},
	[40] = {id = 40, item_id = 20014},
	[41] = {id = 41, item_id = 70673},
	[42] = {id = 42, item_id = 20087},
	[55] = {id = 55, item_id = 20046},
	[56] = {id = 56, item_id = 20002},
	[43] = {id = 43, item_id = 20000},
	[44] = {id = 44, item_id = 20006},
	[45] = {id = 45, item_id = 22595},
	[46] = {id = 46, item_id = 21322},
	[47] = {id = 47, item_id = 22396},
	[48] = {id = 48, item_id = 21098},
	[49] = {id = 49, item_id = 29046},
	[50] = {id = 50, item_id = 20022},
	[51] = {id = 51, item_id = 22307}
}
--套娃其他配置，如：开放时间段
DataCampDoll.data_dolls_other_list_length = 1
DataCampDoll.data_dolls_other_list = {
	{time = {{19, 0, 0, 23, 00, 00}}}
}

DataCampDoll.data_dolls_show_list_length = 51
DataCampDoll.data_dolls_show_list = {
	{day = 1, pos = 1, type = 1, item_id = 20638, name = "彩虹护符", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 0},
	{day = 1, pos = 2, type = 2, item_id = 23771, name = "精灵饰品", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 0},
	{day = 1, pos = 3, type = 2, item_id = 70673, name = "欢乐时光礼包", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 0},
	{day = 1, pos = 4, type = 2, item_id = 22205, name = "精灵珍魂", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 0},
	{day = 1, pos = 5, type = 2, item_id = 22444, name = "狮皇神魂", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 0},
	{day = 1, pos = 6, type = 2, item_id = 70656, name = "两小无猜·永久", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 0, classes = 0},
	{day = 1, pos = 6, type = 2, item_id = 70660, name = "两小无猜·永久", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 1, classes = 0},
	{day = 1, pos = 7, type = 1, item_id = 70675, name = "欢乐时光", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 1},
	{day = 1, pos = 7, type = 1, item_id = 70676, name = "欢乐时光", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 2},
	{day = 1, pos = 7, type = 1, item_id = 70677, name = "欢乐时光", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 3},
	{day = 1, pos = 7, type = 1, item_id = 70678, name = "欢乐时光", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 4},
	{day = 1, pos = 7, type = 1, item_id = 70679, name = "欢乐时光", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 5},
	{day = 1, pos = 7, type = 1, item_id = 70680, name = "欢乐时光", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 6},
	{day = 1, pos = 7, type = 1, item_id = 70681, name = "欢乐时光", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 7},
	{day = 1, pos = 8, type = 1, item_id = 21257, name = "至尊宝物箱子", bind = 0, num = 1, lev_min = 95, lev_max = 200, sex = 2, classes = 0},
	{day = 1, pos = 8, type = 1, item_id = 20617, name = "太阳护符", bind = 0, num = 1, lev_min = 1, lev_max = 94, sex = 2, classes = 0},
	{day = 1, pos = 9, type = 2, item_id = 22445, name = "狮皇神魂袋", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 0},
	{day = 2, pos = 1, type = 1, item_id = 20638, name = "彩虹护符", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 0},
	{day = 2, pos = 2, type = 2, item_id = 23771, name = "精灵饰品", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 0},
	{day = 2, pos = 3, type = 2, item_id = 70673, name = "欢乐时光礼包", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 0},
	{day = 2, pos = 4, type = 2, item_id = 22205, name = "精灵珍魂", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 0},
	{day = 2, pos = 5, type = 2, item_id = 22444, name = "狮皇神魂", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 0},
	{day = 2, pos = 6, type = 2, item_id = 70656, name = "两小无猜·永久", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 0, classes = 0},
	{day = 2, pos = 6, type = 2, item_id = 70660, name = "两小无猜·永久", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 1, classes = 0},
	{day = 2, pos = 7, type = 1, item_id = 70675, name = "欢乐时光", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 1},
	{day = 2, pos = 7, type = 1, item_id = 70676, name = "欢乐时光", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 2},
	{day = 2, pos = 7, type = 1, item_id = 70677, name = "欢乐时光", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 3},
	{day = 2, pos = 7, type = 1, item_id = 70678, name = "欢乐时光", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 4},
	{day = 2, pos = 7, type = 1, item_id = 70679, name = "欢乐时光", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 5},
	{day = 2, pos = 7, type = 1, item_id = 70680, name = "欢乐时光", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 6},
	{day = 2, pos = 7, type = 1, item_id = 70681, name = "欢乐时光", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 7},
	{day = 2, pos = 8, type = 1, item_id = 21257, name = "至尊宝物箱子", bind = 0, num = 1, lev_min = 95, lev_max = 200, sex = 2, classes = 0},
	{day = 2, pos = 8, type = 1, item_id = 20617, name = "太阳护符", bind = 0, num = 1, lev_min = 1, lev_max = 94, sex = 2, classes = 0},
	{day = 2, pos = 9, type = 2, item_id = 22445, name = "狮皇神魂袋", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 0},
	{day = 3, pos = 1, type = 1, item_id = 20638, name = "彩虹护符", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 0},
	{day = 3, pos = 2, type = 2, item_id = 23771, name = "精灵饰品", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 0},
	{day = 3, pos = 3, type = 2, item_id = 70673, name = "欢乐时光礼包", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 0},
	{day = 3, pos = 4, type = 2, item_id = 22205, name = "精灵珍魂", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 0},
	{day = 3, pos = 5, type = 2, item_id = 22444, name = "狮皇神魂", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 0},
	{day = 3, pos = 6, type = 2, item_id = 70656, name = "两小无猜·永久", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 0, classes = 0},
	{day = 3, pos = 6, type = 2, item_id = 70660, name = "两小无猜·永久", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 1, classes = 0},
	{day = 3, pos = 7, type = 1, item_id = 70675, name = "欢乐时光", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 1},
	{day = 3, pos = 7, type = 1, item_id = 70676, name = "欢乐时光", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 2},
	{day = 3, pos = 7, type = 1, item_id = 70677, name = "欢乐时光", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 3},
	{day = 3, pos = 7, type = 1, item_id = 70678, name = "欢乐时光", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 4},
	{day = 3, pos = 7, type = 1, item_id = 70679, name = "欢乐时光", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 5},
	{day = 3, pos = 7, type = 1, item_id = 70680, name = "欢乐时光", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 6},
	{day = 3, pos = 7, type = 1, item_id = 70681, name = "欢乐时光", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 7},
	{day = 3, pos = 8, type = 1, item_id = 21257, name = "至尊宝物箱子", bind = 0, num = 1, lev_min = 95, lev_max = 200, sex = 2, classes = 0},
	{day = 3, pos = 8, type = 1, item_id = 20617, name = "太阳护符", bind = 0, num = 1, lev_min = 1, lev_max = 94, sex = 2, classes = 0},
	{day = 3, pos = 9, type = 2, item_id = 22445, name = "狮皇神魂袋", bind = 0, num = 1, lev_min = 1, lev_max = 200, sex = 2, classes = 0}
}


