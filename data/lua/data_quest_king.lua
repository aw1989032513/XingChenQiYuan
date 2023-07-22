DataQuestKing = DataQuestKing or {}

DataQuestKing.data_stage_length = 4
DataQuestKing.data_stage = {
	[1] = {stage = 1, stage_name = "入门", count = 5, lock_count = 4, item_reward = {{90041,0,50,0},{20087,0,1,0},{20006,0,10,0}}, reward_title = "完成<color='#00ff00'>4个</color>“山”任务", quest_desc = "<color='#00ff00'>惊喜宝藏</color>祝您好运", word = "山", effect_item = "90041,20087"},
	[2] = {stage = 2, stage_name = "初级", count = 4, lock_count = 3, item_reward = {{90041,0,100,0},{20046,0,1,0},{20006,0,20,0}}, reward_title = "完成<color='#00ff00'>3个</color>“如”任务", quest_desc = "<color='#00ff00'>暖心礼券</color>倾情相赠", word = "如", effect_item = "90041,20046"},
	[3] = {stage = 3, stage_name = "中级", count = 3, lock_count = 2, item_reward = {{90041,0,200,0},{90026,0,300,0},{22300,0,1,0},{20006,0,30,0}}, reward_title = "完成<color='#00ff00'>2个</color>“爱”任务", quest_desc = "<color='#00ff00'>大量红钻</color>惊喜来袭", word = "爱", effect_item = "90041,90026,22300"},
	[4] = {stage = 4, stage_name = "高级", count = 2, lock_count = 2, item_reward = {{90041,0,500,0},{29732,0,1,1},{29733,0,1,2},{29734,0,1,3},{29735,0,1,4},{29736,0,1,5},{29737,0,1,6},{22617,0,1,0},{20006,0,50,0}}, reward_title = "完成<color='#00ff00'>2个</color>“父”任务", quest_desc = "<color='#00ff00'>珍贵武饰</color>闪耀星辰", word = "父", effect_item = "90041,29732,29733,29734,29735,29736,29737,22617"}
}

DataQuestKing.data_envelop_length = 4
DataQuestKing.data_envelop = {
	[4] = {13, 14},
	[3] = {10, 11, 12},
	[2] = {6, 7, 8, 9},
	[1] = {1, 2, 3, 4, 5}
}

DataQuestKing.data_refresh_cost_length = 16
DataQuestKing.data_refresh_cost = {
	{stage = 1, min_times = 0, max_times = 0, cost = {}},
	{stage = 1, min_times = 1, max_times = 1, cost = {{90003,1000}}},
	{stage = 1, min_times = 2, max_times = 2, cost = {{90003,2000}}},
	{stage = 1, min_times = 3, max_times = 999, cost = {{90003,3000}}},
	{stage = 2, min_times = 0, max_times = 0, cost = {}},
	{stage = 2, min_times = 1, max_times = 1, cost = {{90003,2000}}},
	{stage = 2, min_times = 2, max_times = 2, cost = {{90003,4000}}},
	{stage = 2, min_times = 3, max_times = 999, cost = {{90003,6000}}},
	{stage = 3, min_times = 0, max_times = 0, cost = {}},
	{stage = 3, min_times = 1, max_times = 1, cost = {{90002,10}}},
	{stage = 3, min_times = 2, max_times = 2, cost = {{90002,20}}},
	{stage = 3, min_times = 3, max_times = 999, cost = {{90002,30}}},
	{stage = 4, min_times = 0, max_times = 0, cost = {}},
	{stage = 4, min_times = 1, max_times = 1, cost = {{90002,20}}},
	{stage = 4, min_times = 2, max_times = 2, cost = {{90002,40}}},
	{stage = 4, min_times = 3, max_times = 999, cost = {{90002,60}}}
}

DataQuestKing.data_path_length = 2
DataQuestKing.data_path = {
	[83419] = {id = 83419, map_base_id = 10001, points = {{1643,2725},{2040,2428},{562,1229},{734,1780},{520,2430},{836,2803},{2587,2717},{2436,3591},{3304,3100}}},
	[83420] = {id = 83420, map_base_id = 10003, points = {{1751,860},{1304,1310},{2126,1529},{224,709},{827,241},{1984,322},{2579,458},{1757,816}}}
}

DataQuestKing.data_quest_length = 33
DataQuestKing.data_quest = {
	["1_83600"] = {envelop = 1, quest_id = 83600, desc = "赶走大烟枪"},
	["1_83601"] = {envelop = 1, quest_id = 83601, desc = "组队完成<color='#00ccff'>10环悬赏</color>"},
	["1_83602"] = {envelop = 1, quest_id = 83602, desc = "击败<color='#00ccff'>5次上古妖魔</color>"},
	["2_83603"] = {envelop = 2, quest_id = 83603, desc = "发布<color='#00ccff'>1次朋友圈</color>"},
	["2_83604"] = {envelop = 2, quest_id = 83604, desc = "在朋友圈<color='#00ccff'>上传或更改</color>1次<color='#00ccff'>头像</color>"},
	["3_83605"] = {envelop = 3, quest_id = 83605, desc = "通关<color='#00ccff'>任意副本</color>1次（每天前5次通关有效）"},
	["3_83606"] = {envelop = 3, quest_id = 83606, desc = "在<color='#00ccff'>宝藏迷城</color>中挖掘<color='#00ccff'>10块</color>地砖"},
	["4_83607"] = {envelop = 4, quest_id = 83607, desc = "帮助公会成员<color='#00ccff'>浇水3次</color>"},
	["4_83608"] = {envelop = 4, quest_id = 83608, desc = "击退<color='#00ccff'>3</color>环<color='#00ccff'>公会强盗</color>"},
	["5_83609"] = {envelop = 5, quest_id = 83609, desc = "通过<color='#00ccff'>生活技能</color>制造10件商品"},
	["5_83610"] = {envelop = 5, quest_id = 83610, desc = "累计消费<color='#00ccff'>100</color>钻石"},
	["5_83611"] = {envelop = 5, quest_id = 83611, desc = "使用1张<color='#00ccff'>远古藏宝图</color>"},
	["6_83612"] = {envelop = 6, quest_id = 83612, desc = "消灭<color='#00ccff'>应酬老怪</color>(建议组队）"},
	["7_83613"] = {envelop = 7, quest_id = 83613, desc = "<color='#00ccff'>累计充值</color>60钻石"},
	["7_83614"] = {envelop = 7, quest_id = 83614, desc = "在<color='#00ccff'>商城购买</color>任意道具"},
	["7_83615"] = {envelop = 7, quest_id = 83615, desc = "在<color='#00ccff'>金币市场花费</color>50000金币"},
	["8_83616"] = {envelop = 8, quest_id = 83616, desc = "参与3场<color='#00ccff'>竞技场</color>"},
	["8_83617"] = {envelop = 8, quest_id = 83617, desc = "<color='#00ccff'>武道大会</color>胜利1次"},
	["9_83618"] = {envelop = 9, quest_id = 83618, desc = "组队完成100环<color='#00ccff'>悬赏</color>"},
	["9_83619"] = {envelop = 9, quest_id = 83619, desc = "在<color='#00ccff'>宝藏迷城</color>中挖掘<color='#00ccff'>30</color>块地砖"},
	["9_83620"] = {envelop = 9, quest_id = 83620, desc = "通关<color='#00ccff'>任意副本</color>5次（每天前5次通关有效）"},
	["10_83621"] = {envelop = 10, quest_id = 83621, desc = "组队完成200环<color='#00ccff'>悬赏</color>"},
	["10_83622"] = {envelop = 10, quest_id = 83622, desc = "击败<color='#00ccff'>100次上古妖魔</color>"},
	["10_83628"] = {envelop = 10, quest_id = 83628, desc = "累计充值<color='#00ccff'>500</color>钻石"},
	["11_83623"] = {envelop = 11, quest_id = 83623, desc = "累计充值<color='#00ccff'>800</color>钻石"},
	["11_83624"] = {envelop = 11, quest_id = 83624, desc = "累计消费<color='#00ccff'>1000</color>钻石"},
	["11_83625"] = {envelop = 11, quest_id = 83625, desc = "在<color='#00ccff'>金币市场</color>花费<color='#00ccff'>100000</color>金币"},
	["12_83626"] = {envelop = 12, quest_id = 83626, desc = "<color='#00ccff'>武道大会</color>胜利<color='#00ccff'>3次</color>"},
	["12_83627"] = {envelop = 12, quest_id = 83627, desc = "参与5场<color='#00ccff'>竞技场</color>"},
	["13_83629"] = {envelop = 13, quest_id = 83629, desc = "累计充值<color='#00ccff'>6000</color>钻石"},
	["13_83630"] = {envelop = 13, quest_id = 83630, desc = "累计消费<color='#00ccff'>8000</color>钻石"},
	["14_83631"] = {envelop = 14, quest_id = 83631, desc = "在<color='#00ccff'>金币市场</color>花费<color='#00ccff'>300000</color>金币"},
	["14_83632"] = {envelop = 14, quest_id = 83632, desc = "向任意好友<color='#00ccff'>赠送</color>8束<color='#00ccff'>999朵玫瑰</color>"}
}

DataQuestKing.data_envelop_info_length = 14
DataQuestKing.data_envelop_info={}
DataQuestKing.envelop_infoData={}
DataQuestKing.envelop_infoGetFunc={
	[1]=[[{1,1}]],
	[2]=[[{2,1}]],
	[3]=[[{3,1}]],
	[4]=[[{4,1}]],
	[5]=[[{5,1}]],
	[6]=[[{6,2}]],
	[7]=[[{7,2}]],
	[8]=[[{8,2}]],
	[9]=[[{9,2}]],
	[10]=[[{10,3}]],
	[11]=[[{11,3}]],
	[12]=[[{12,3}]],
	[13]=[[{13,4}]],
	[14]=[[{14,4}]],}
local mt = {}
	mt.__index = function(_table, index)
	if DataQuestKing.envelop_infoData[index] then return DataQuestKing.envelop_infoData[index] end
	local base = loadstring(string.format('return %s',DataQuestKing.envelop_infoGetFunc[index]))() if not base then return end
	DataQuestKing.envelop_infoData[index]={
		envelop=base[1],
		stage=base[2]
	}
	return DataQuestKing.envelop_infoData[index]
end
setmetatable(DataQuestKing.data_envelop_info, mt)
