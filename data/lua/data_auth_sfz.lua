DataAuthSfz = DataAuthSfz or {}

DataAuthSfz.data_reward_length = 1
DataAuthSfz.data_reward={}
DataAuthSfz.rewardData={}
DataAuthSfz.rewardGetFunc={
	[1]=[[{{{22692,0,1}}}]],}
local mt = {}
	mt.__index = function(_table, index)
	if DataAuthSfz.rewardData[index] then return DataAuthSfz.rewardData[index] end
	local base = loadstring(string.format('return %s',DataAuthSfz.rewardGetFunc[index]))() if not base then return end
	DataAuthSfz.rewardData[index]={
		reward=base[1]
	}
	return DataAuthSfz.rewardData[index]
end
setmetatable(DataAuthSfz.data_reward, mt)
