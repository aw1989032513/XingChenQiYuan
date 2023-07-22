-- 翻牌活动
DataCampaignCard = DataCampaignCard or {}

DataCampaignCard.data_times_length = 8
DataCampaignCard.data_times = {
	[1] = {need_lev = 40, need_activity = 0, loss = {}, rewards = {{20000,0,1}}, effect = 0},
	[2] = {need_lev = 0, need_activity = 50, loss = {}, rewards = {{90026,0,30}}, effect = 0},
	[3] = {need_lev = 0, need_activity = 80, loss = {}, rewards = {{90026,0,50}}, effect = 0},
	[4] = {need_lev = 0, need_activity = 0, loss = {{90002,30}}, rewards = {{20505,0,1}}, effect = 1},
	[5] = {need_lev = 0, need_activity = 0, loss = {{90002,80}}, rewards = {{21100,0,1}}, effect = 1},
	[6] = {need_lev = 0, need_activity = 0, loss = {{90002,150}}, rewards = {{20038,0,1}}, effect = 1},
	[7] = {need_lev = 0, need_activity = 0, loss = {{90002,300}}, rewards = {{22300,0,1}}, effect = 1},
	[8] = {need_lev = 0, need_activity = 0, loss = {{90002,500}}, rewards = {{20617,0,1}}, effect = 1}
}