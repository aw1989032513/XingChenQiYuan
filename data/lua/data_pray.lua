DataPray = DataPray or {}

--基础数据
DataPray.data_pray_prop_length = 5
DataPray.data_pray_prop = {
	[1] = {id = 1, name = "疾风", upratio = 0, ratio = 1000, model = 10001, icon = 10001, buff_lv = 1, min_cnt = 0, max_cnt = 0},
	[2] = {id = 2, name = "秘林", upratio = 1000, ratio = 1000, model = 10003, icon = 10003, buff_lv = 2, min_cnt = 0, max_cnt = 0},
	[3] = {id = 3, name = "天火", upratio = 400, ratio = 1000, model = 10015, icon = 10015, buff_lv = 3, min_cnt = 1, max_cnt = 1},
	[4] = {id = 4, name = "山岳", upratio = 180, ratio = 1000, model = 10019, icon = 10019, buff_lv = 4, min_cnt = 1, max_cnt = 1},
	[5] = {id = 5, name = "星魂", upratio = 120, ratio = 1000, model = 20001, icon = 20001, buff_lv = 5, min_cnt = 1, max_cnt = 1}
}
DataPray.data_pray_cost_length = 7
DataPray.data_pray_cost = {
	[1] = {min_cnt = 1, max_cnt = 1, assets_type = "coin", cost = 20000},
	[2] = {min_cnt = 2, max_cnt = 2, assets_type = "coin", cost = 30000},
	[3] = {min_cnt = 3, max_cnt = 3, assets_type = "gold_bind", cost = 500},
	[4] = {min_cnt = 4, max_cnt = 4, assets_type = "gold_bind", cost = 600},
	[5] = {min_cnt = 5, max_cnt = 5, assets_type = "gold", cost = 20},
	[6] = {min_cnt = 6, max_cnt = 6, assets_type = "gold", cost = 40},
	[7] = {min_cnt = 7, max_cnt = 100000, assets_type = "gold", cost = 80}
}
DataPray.data_pray_reward_length = 14
DataPray.data_pray_reward = {
	{item_id = 21220, is_bind = 0, count = 1, ratio = 500, classes = 0, level_limit = 1, is_hearsay = 0},
	{item_id = 20005, is_bind = 0, count = 1, ratio = 200, classes = 0, level_limit = 1, is_hearsay = 0},
	{item_id = 29143, is_bind = 0, count = 1, ratio = 100, classes = 0, level_limit = 1, is_hearsay = 0},
	{item_id = 20025, is_bind = 0, count = 1, ratio = 100, classes = 0, level_limit = 1, is_hearsay = 0},
	{item_id = 20020, is_bind = 0, count = 1, ratio = 100, classes = 0, level_limit = 1, is_hearsay = 0},
	{item_id = 20054, is_bind = 0, count = 1, ratio = 245, classes = 0, level_limit = 1, is_hearsay = 1},
	{item_id = 20055, is_bind = 0, count = 1, ratio = 245, classes = 0, level_limit = 1, is_hearsay = 1},
	{item_id = 20056, is_bind = 0, count = 1, ratio = 245, classes = 0, level_limit = 1, is_hearsay = 1},
	{item_id = 20057, is_bind = 0, count = 1, ratio = 245, classes = 0, level_limit = 1, is_hearsay = 1},
	{item_id = 20616, is_bind = 0, count = 1, ratio = 20, classes = 0, level_limit = 1, is_hearsay = 1},
	{item_id = 20616, is_bind = 0, count = 1, ratio = 350, classes = 0, level_limit = 1, is_hearsay = 1},
	{item_id = 20617, is_bind = 0, count = 1, ratio = 60, classes = 0, level_limit = 1, is_hearsay = 1},
	{item_id = 20095, is_bind = 0, count = 1, ratio = 290, classes = 0, level_limit = 1, is_hearsay = 1},
	{item_id = 20053, is_bind = 0, count = 1, ratio = 300, classes = 0, level_limit = 1, is_hearsay = 1}
}
DataPray.data_pray_buff_length = 36
DataPray.data_pray_buff={}
DataPray.pray_buffData={}
DataPray.pray_buffGetFunc={
	[12000]=[[{12000,2,"悬赏达人","","<color='#ffff00'>悬赏任务</color>角色经验额外加成<color='#ffff00'>15%</color>，持续<color='#ffff00'>120分钟</color>",50,7200,0,1}]],
	[12010]=[[{12010,2,"职业达人","","<color='#ffff00'>职业任务</color>角色经验额外加成<color='#ffff00'>15%</color>，持续<color='#ffff00'>120分钟</color>",50,7200,0,1}]],
	[12030]=[[{12030,2,"生命增益","","角色生命上限增加<color='#ffff00'>3%</color>，持续<color='#ffff00'>120分钟</color>",10,7200,0,5}]],
	[12040]=[[{12040,2,"物防护盾","","角色物防增加<color='#ffff00'>3%</color>，持续<color='#ffff00'>120分钟</color>",10,7200,0,5}]],
	[12050]=[[{12050,2,"魔法护盾","","角色魔防增加<color='#ffff00'>3%</color>，持续<color='#ffff00'>120分钟</color>",10,7200,0,5}]],
	[12060]=[[{12060,2,"公会栋梁","","<color='#ffff00'>公会任务</color>额外获得<color='#ffff00'>50%</color>公会贡献加成，持续<color='#ffff00'>120分钟</color>",50,7200,0,2}]],
	[12070]=[[{12070,2,"驯兽大师","","宠物洗髓有<color='#ffff00'>5%</color>几率额外增加一定资质，持续<color='#ffff00'>120分钟</color>",50,7200,0,2}]],
	[12201]=[[{12201,2,"缝纫精通","","缝纫技巧有一定几率获得双份，效果持续<color='#ffff00'>120分钟</color>",50,7200,0,2}]],
	[12211]=[[{12211,2,"打造精通","","打造工艺有一定几率获得双份，效果持续<color='#ffff00'>120分钟</color>",50,7200,0,2}]],
	[12020]=[[{12020,3,"摸金校尉","","挖宝一定概率获得双倍奖励（最多可获得<color='#ffff00'>2</color>次），持续<color='#ffff00'>120分钟</color>",50,7200,0,3}]],
	[12031]=[[{12031,3,"生命增益II","","角色生命上限增加<color='#ffff00'>5%</color>，持续<color='#ffff00'>120分钟</color>",15,7200,0,6}]],
	[12041]=[[{12041,3,"物防护盾II","","角色物防增加<color='#ffff00'>5%</color>，持续<color='#ffff00'>120分钟</color>",15,7200,0,6}]],
	[12051]=[[{12051,3,"魔法护盾II","","角色魔防增加<color='#ffff00'>5%</color>，持续<color='#ffff00'>120分钟</color>",15,7200,0,6}]],
	[12061]=[[{12061,3,"公会栋梁II","","<color='#ffff00'>公会任务</color>额外获得<color='#ffff00'>100%</color>公会贡献加成，持续<color='#ffff00'>120分钟</color>",50,7200,0,3}]],
	[12080]=[[{12080,3,"赏金副本","","完成<color='#ffff00'>普通副本</color>可获得双倍道具结算奖励（最多可获得<color='#ffff00'>2</color>次），持续<color='#ffff00'>120分钟</color>",0,7200,0,6}]],
	[12090]=[[{12090,3,"历练加成","","<color='#ffff00'>历练任务</color>额外获得<color='#ffff00'>8%</color>经验加成，持续<color='#ffff00'>120分钟</color>",50,7200,0,3}]],
	[12110]=[[{12110,3,"封妖大师","","<color='#ffff00'>上古妖魔</color>额外获得<color='#ffff00'>10%</color>经验加成，持续<color='#ffff00'>120分钟</color>",50,7200,0,6}]],
	[12130]=[[{12130,3,"竞技高手","","前<color='#ffff00'>3</color>场竞技场额外获得<color='#ffff00'>50%</color>积分，持续<color='#ffff00'>120分钟</color>",50,7200,0,2}]],
	[12140]=[[{12140,3,"极寒王者","","<color='#ffff00'>极寒试炼</color>额外获得<color='#ffff00'>20%</color>银币，持续<color='#ffff00'>120分钟</color>",50,7200,0,3}]],
	[12150]=[[{12150,3,"炼金术师","","<color='#ffff00'>魔法炼化</color>消耗下降为原来的<color='#ffff00'>60%</color>，持续<color='#ffff00'>120分钟</color>",50,7200,0,4}]],
	[12171]=[[{12171,3,"魔药精通","","魔药研制有一定几率获得双份，效果持续<color='#ffff00'>120分钟</color>",50,7200,0,3}]],
	[12181]=[[{12181,3,"栽培精通","","栽培之术有一定几率获得双份，效果持续<color='#ffff00'>120分钟</color>",50,7200,0,3}]],
	[12191]=[[{12191,3,"雕文精通","","雕文制作有一定几率获得双份，效果持续<color='#ffff00'>120分钟</color>",50,7200,0,3}]],
	[12001]=[[{12001,4,"悬赏达人II","","<color='#ffff00'>悬赏任务</color>角色经验额外加成<color='#ffff00'>30%</color>，持续<color='#ffff00'>120分钟</color>",50,7200,0,4}]],
	[12011]=[[{12011,4,"职业达人II","","<color='#ffff00'>职业任务</color>角色经验额外加成<color='#ffff00'>30%</color>，持续<color='#ffff00'>120分钟</color>",50,7200,0,4}]],
	[12071]=[[{12071,4,"驯兽大师II","","宠物洗髓有<color='#ffff00'>8%</color>几率额外增加一定资质，持续<color='#ffff00'>120分钟</color>",50,7200,0,3}]],
	[12111]=[[{12111,4,"封妖大师II","","<color='#ffff00'>上古妖魔</color>额外获得<color='#ffff00'>15%</color>经验加成，持续<color='#ffff00'>120分钟</color>",50,7200,0,7}]],
	[12120]=[[{12120,4,"远航恩赐","","<color='#ffff00'>远航商人</color>任务完成后额外获得<color='#ffff00'>1</color>本冒险笔记，持续<color='#ffff00'>120分钟</color>",50,7200,0,8}]],
	[12131]=[[{12131,4,"竞技高手II","","前<color='#ffff00'>3</color>场竞技场额外获得<color='#ffff00'>80%</color>积分，持续<color='#ffff00'>120分钟</color>",50,7200,0,3}]],
	[12230]=[[{12230,4,"新人导师","","带新人可额外获得<color='#ffff00'>50%</color>人品值，持续<color='#ffff00'>120分钟</color>",50,7200,0,7}]],
	[12021]=[[{12021,5,"摸金校尉II","","挖宝较大概率获得双倍奖励（最多可获得<color='#ffff00'>3</color>次），持续<color='#ffff00'>120分钟</color>",50,7200,0,4}]],
	[12091]=[[{12091,5,"历练加成II","","<color='#ffff00'>历练任务</color>额外获得<color='#ffff00'>12%</color>经验加成，持续<color='#ffff00'>120分钟</color>",50,7200,0,4}]],
	[12112]=[[{12112,5,"封妖大师III","","<color='#ffff00'>上古妖魔</color>额外获得<color='#ffff00'>20%</color>经验加成，持续<color='#ffff00'>120分钟</color>",50,7200,0,8}]],
	[12132]=[[{12132,5,"竞技高手III","","前<color='#ffff00'>3</color>场竞技场额外获得<color='#ffff00'>100%</color>积分，持续<color='#ffff00'>120分钟</color>",50,7200,0,4}]],
	[12141]=[[{12141,5,"极寒王者II","","<color='#ffff00'>极寒试炼</color>额外获得<color='#ffff00'>30%</color>银币，持续<color='#ffff00'>120分钟</color>",50,7200,0,4}]],
	[12220]=[[{12220,5,"天降情缘","","完成<color='#ffff00'>情缘任务</color>可额外获得<color='#ffff00'>1</color>个同心宝藏，持续<color='#ffff00'>120分钟</color>",50,7200,0,8}]],}
local mt = {}
	mt.__index = function(_table, index)
	if DataPray.pray_buffData[index] then return DataPray.pray_buffData[index] end
	local base = loadstring(string.format('return %s',DataPray.pray_buffGetFunc[index]))() if not base then return end
	DataPray.pray_buffData[index]={
		buff_id=base[1],
		buff_lv=base[2],
		name=base[3],
		effect=base[4],
		describe=base[5],
		ratio=base[6],
		lasttime=base[7],
		is_hearsay=base[8],
		show_icon=base[9]
	}
	return DataPray.pray_buffData[index]
end
setmetatable(DataPray.data_pray_buff, mt)
DataPray.data_pray_result_length = 14
DataPray.data_pray_result = {
	["1_0_0"] = {last_rt = 1, last_frt = 0, desc = "势如疾风，可免费提升一次（运势越高，奖励越好喔^_^）", free_desc = 0, content = "快[提升运势]吧{face_1,9}|气色不错，会有好运呢{face_1,22}", luck = "平运"},
	["1_1_1"] = {last_rt = 1, last_frt = 1, desc = "双风助力，好运降临", free_desc = 1, content = "别灰心，收下这个祝福效果吧", luck = "平运"},
	["2_1_0"] = {last_rt = 2, last_frt = 1, desc = "秘林疾风，霉运无踪，可再提升一次！|遇难呈祥，运开时泰，可再提升一次！|逢凶化吉，绝处逢生，可再提升一次！|顺风顺水，时来运转，可再提升一次！", free_desc = 0, content = "进阶成功，运势越高，祝福越好{face_1,10}|恭喜你进阶成功{face_1,10}", luck = "小吉"},
	["2_2_1"] = {last_rt = 2, last_frt = 2, desc = "双林相冲，破财挡灾|红光满面，绝路逢生|趋利避害，运转时来", free_desc = 1, content = "多扶老奶奶哦，给个祝福你压压惊{face_1,26}|别灰心，收下这个祝福效果吧{face_1,21}", luck = "小吉"},
	["3_2_0"] = {last_rt = 3, last_frt = 2, desc = "秘林天火，红红火火，捷运连连！|时来运转，吉人自有天相", free_desc = 0, content = "人定胜天，这个祝福效果貌似更强了{face_1,29}|又进阶成功了，还有提升机会哟{face_1,20}", luck = "吉"},
	["3_3_1"] = {last_rt = 3, last_frt = 3, desc = "双火相连，姻缘一线牵|红火天降，衣食丰足|鼓舞欢心，如沐春风", free_desc = 1, content = "与人为善，总是最萌哒{face_1,9}|获得了一个不错的祝福呢{face_1,2}", luck = "吉"},
	["4_3_0"] = {last_rt = 4, last_frt = 3, desc = "风林火山，气运通天，贵人相助|紫气东来，如日中天|容光焕发，财运亨通", free_desc = 0, content = "人漂亮运气都不会差{face_1,10}", luck = "大吉"},
	["4_4_1"] = {last_rt = 4, last_frt = 4, desc = "重山叠嶂，神清气爽|衣禄无忧，财禄常在|贵人助力，袋袋平安", free_desc = 1, content = "一步之遥，再攒攒人品吧{face_1,25}", luck = "大吉"},
	["5_4_0"] = {last_rt = 5, last_frt = 4, desc = "吉星高照，财运亨通|衣禄财帛，福寿绵长|夫妻和顺，公会和睦|称心如意，神采飞扬", free_desc = 0, content = "气运逆天，这个顶级祝福给你{face_1,25}|人品爆炸，这是你的奖励{face_1,20}", luck = "洪福齐天"},
	["5_5_1"] = {last_rt = 5, last_frt = 5, desc = "无", free_desc = 1, content = "无", luck = "洪福齐天"},
	["2_1_1"] = {last_rt = 2, last_frt = 1, desc = "秘林疾风，霉运无踪，可再免费提升一次！", free_desc = 1, content = "进阶成功，运势越高，祝福越好呢^_^", luck = "小吉"},
	["3_2_1"] = {last_rt = 3, last_frt = 2, desc = "秘林天火，红红火火，捷运连连！", free_desc = 1, content = "又进阶成功了，还有提升机会哟", luck = "吉"},
	["4_3_1"] = {last_rt = 4, last_frt = 3, desc = "风林火山，气运通天，贵人相助", free_desc = 1, content = "山岳天火1", luck = "大吉"},
	["5_4_1"] = {last_rt = 5, last_frt = 4, desc = "吉星高照，财运亨通", free_desc = 1, content = "恭喜你获得最高运势，这个顶级祝福给你O(∩_∩)O", luck = "洪福齐天"}
}