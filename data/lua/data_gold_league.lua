DataGoldLeague = DataGoldLeague or {}

DataGoldLeague.data_group_length = 4
DataGoldLeague.data_group={}
DataGoldLeague.groupData={}
DataGoldLeague.groupGetFunc={
	[1]=[[{1,"英雄组",95,130,59}]],
	[2]=[[{2,"勇武组",90,100,58}]],
	[3]=[[{3,"精锐组",70,89,57}]],
	[4]=[[{4,"新秀组",50,69,56}]],}
local mt = {}
	mt.__index = function(_table, index)
	if DataGoldLeague.groupData[index] then return DataGoldLeague.groupData[index] end
	local base = loadstring(string.format('return %s',DataGoldLeague.groupGetFunc[index]))() if not base then return end
	DataGoldLeague.groupData[index]={
		id=base[1],
		name=base[2],
		min_lev=base[3],
		max_lev=base[4],
		rank_type=base[5]
	}
	return DataGoldLeague.groupData[index]
end
setmetatable(DataGoldLeague.data_group, mt)

DataGoldLeague.data_grade_length = 3
DataGoldLeague.data_grade = {
	[1] = {grade = 1, gold = 10, type = 90026, cacl_type = 90026, max_gold = 30},
	[2] = {grade = 2, gold = 20, type = 90026, cacl_type = 90026, max_gold = 50},
	[3] = {grade = 3, gold = 30, type = 90026, cacl_type = 90026, max_gold = 60}
}

DataGoldLeague.data_rank_reward_length = 0
DataGoldLeague.data_rank_reward = {

}

DataGoldLeague.data_battle_reward_length = 18
DataGoldLeague.data_battle_reward = {
	["1_1"] = {type = 1, result = 1, base_id = 90026, num = 800},
	["1_0"] = {type = 1, result = 0, base_id = 90026, num = 500},
	["2_1"] = {type = 2, result = 1, base_id = 90026, num = 400},
	["2_0"] = {type = 2, result = 0, base_id = 90026, num = 200},
	["3_1"] = {type = 3, result = 1, base_id = 90026, num = 300},
	["3_0"] = {type = 3, result = 0, base_id = 90026, num = 150},
	["4_1"] = {type = 4, result = 1, base_id = 90026, num = 200},
	["4_0"] = {type = 4, result = 0, base_id = 90026, num = 100},
	["5_1"] = {type = 5, result = 1, base_id = 90026, num = 150},
	["5_0"] = {type = 5, result = 0, base_id = 90026, num = 75},
	["6_1"] = {type = 6, result = 1, base_id = 90026, num = 100},
	["6_0"] = {type = 6, result = 0, base_id = 90026, num = 65},
	["7_1"] = {type = 7, result = 1, base_id = 90026, num = 80},
	["7_0"] = {type = 7, result = 0, base_id = 90026, num = 60},
	["8_1"] = {type = 8, result = 1, base_id = 90026, num = 60},
	["8_0"] = {type = 8, result = 0, base_id = 90026, num = 50},
	["9_1"] = {type = 9, result = 1, base_id = 90026, num = 50},
	["9_0"] = {type = 9, result = 0, base_id = 90026, num = 45}
}

DataGoldLeague.data_drug_length = 10
DataGoldLeague.data_drug = {
	{id = 96105, times_min = 1, times_max = 1, price = 2500, type = 90003},
	{id = 96105, times_min = 2, times_max = 2, price = 5000, type = 90003},
	{id = 96105, times_min = 3, times_max = 3, price = 20, type = 90002},
	{id = 96105, times_min = 4, times_max = 4, price = 30, type = 90002},
	{id = 96105, times_min = 5, times_max = 99999, price = 50, type = 90002},
	{id = 96110, times_min = 1, times_max = 1, price = 2500, type = 90003},
	{id = 96110, times_min = 2, times_max = 2, price = 5000, type = 90003},
	{id = 96110, times_min = 3, times_max = 3, price = 20, type = 90002},
	{id = 96110, times_min = 4, times_max = 4, price = 30, type = 90002},
	{id = 96110, times_min = 5, times_max = 99999, price = 50, type = 90002}
}

DataGoldLeague.data_stat_reward_length = 8
DataGoldLeague.data_stat_reward = {
	{type = "决赛", win_reward = {{90026,800}}, total_reward = {{90026,1840}}},
	{type = "半决赛", win_reward = {{90026,300}}, total_reward = {{90026,1040}}},
	{type = "8进4", win_reward = {{90026,200}}, total_reward = {{90026,740}}},
	{type = "16进8", win_reward = {{90026,150}}, total_reward = {{90026,540}}},
	{type = "32进16", win_reward = {{90026,100}}, total_reward = {{90026,390}}},
	{type = "64进32", win_reward = {{90026,80}}, total_reward = {{90026,290}}},
	{type = "128进64", win_reward = {{90026,60}}, total_reward = {{90026,210}}},
	{type = "预选赛×3场", win_reward = {{90026,50}}, total_reward = {{90026,150}}}
}

DataGoldLeague.data_honor_length = 20
DataGoldLeague.data_honor={}
DataGoldLeague.honorData={}
DataGoldLeague.honorGetFunc={
	["59_1"]=[[{11401}]],
	["59_2"]=[[{11402}]],
	["59_3"]=[[{11403}]],
	["59_4"]=[[{11404}]],
	["59_5"]=[[{11405}]],
	["58_1"]=[[{11406}]],
	["58_2"]=[[{11407}]],
	["58_3"]=[[{11408}]],
	["58_4"]=[[{11409}]],
	["58_5"]=[[{11410}]],
	["57_1"]=[[{11411}]],
	["57_2"]=[[{11412}]],
	["57_3"]=[[{11413}]],
	["57_4"]=[[{11414}]],
	["57_5"]=[[{11415}]],
	["56_1"]=[[{11416}]],
	["56_2"]=[[{11417}]],
	["56_3"]=[[{11418}]],
	["56_4"]=[[{11419}]],
	["56_5"]=[[{11420}]],}
local mt = {}
	mt.__index = function(_table, index)
	if DataGoldLeague.honorData[index] then return DataGoldLeague.honorData[index] end
	local base = loadstring(string.format('return %s',DataGoldLeague.honorGetFunc[index]))() if not base then return end
	DataGoldLeague.honorData[index]={
		honor_id=base[1]
	}
	return DataGoldLeague.honorData[index]
end
setmetatable(DataGoldLeague.data_honor, mt)
