DataEscort = DataEscort or {}

DataEscort.data_set_length = 4
DataEscort.data_set = {
	[32000] = {quest_id = 32000, desc = "", image_zoom = 100, max_answer = 3},
	[32001] = {quest_id = 32001, desc = "", image_zoom = 100, max_answer = 3},
	[32002] = {quest_id = 32002, desc = "", image_zoom = 100, max_answer = 3},
	[32003] = {quest_id = 32003, desc = "", image_zoom = 100, max_answer = 3}
}

DataEscort.data_reward_length = 16
DataEscort.data_reward = {
	["32000_0"] = {quest_id = 32000, min_lev = 0, max_lev = 34, gain = 15000},
	["32000_35"] = {quest_id = 32000, min_lev = 35, max_lev = 54, gain = 22500},
	["32000_55"] = {quest_id = 32000, min_lev = 55, max_lev = 64, gain = 45000},
	["32000_65"] = {quest_id = 32000, min_lev = 65, max_lev = 99, gain = 75000},
	["32001_0"] = {quest_id = 32001, min_lev = 0, max_lev = 34, gain = 45000},
	["32001_35"] = {quest_id = 32001, min_lev = 35, max_lev = 54, gain = 75000},
	["32001_55"] = {quest_id = 32001, min_lev = 55, max_lev = 64, gain = 150000},
	["32001_65"] = {quest_id = 32001, min_lev = 65, max_lev = 99, gain = 225000},
	["32002_0"] = {quest_id = 32002, min_lev = 0, max_lev = 34, gain = 150000},
	["32002_35"] = {quest_id = 32002, min_lev = 35, max_lev = 54, gain = 195000},
	["32002_55"] = {quest_id = 32002, min_lev = 55, max_lev = 64, gain = 225000},
	["32002_65"] = {quest_id = 32002, min_lev = 65, max_lev = 99, gain = 450000},
	["32003_0"] = {quest_id = 32003, min_lev = 0, max_lev = 34, gain = 300000},
	["32003_35"] = {quest_id = 32003, min_lev = 35, max_lev = 54, gain = 375000},
	["32003_55"] = {quest_id = 32003, min_lev = 55, max_lev = 64, gain = 450000},
	["32003_65"] = {quest_id = 32003, min_lev = 65, max_lev = 99, gain = 600000}
}

DataEscort.data_rollreward_length = 6
DataEscort.data_rollreward = {
	{reward_type = 1, num = 20020, icon = 1, desc = "移动速度+5%"},
	{reward_type = 1, num = 20021, icon = 2, desc = "移动速度+10%"},
	{reward_type = 2, num = 22504, icon = 3, desc = "银宝箱"},
	{reward_type = 2, num = 22505, icon = 4, desc = "金宝箱"},
	{reward_type = 3, num = 2, icon = 5, desc = "货物血量+2"},
	{reward_type = 3, num = 4, icon = 6, desc = "货物血量+4"}
}

DataEscort.data_question_length = 45
DataEscort.data_question = {
	[1] = {id = 1, question = "游戏内武器使用“爪类”的职业是什么？", option_a = "秘言", option_b = "蜘蛛侠", option_c = "兽灵", option_d = "超人"},
	[2] = {id = 2, question = "悬赏任务寻找哪个NPC可以领取？", option_a = "不祥之刃", option_b = "时间刺客", option_c = "无双剑姬", option_d = "赏金猎人"},
	[3] = {id = 3, question = "战斗中决定出手顺序的是什么", option_a = "人品", option_b = "拼爹", option_c = "看脸", option_d = "攻速"},
	[4] = {id = 4, question = "游戏内武器使用“剑类”的职业是什么？", option_a = "秘言", option_b = "蜘蛛侠", option_c = "兽灵", option_d = "狂剑"},
	[5] = {id = 5, question = "以辅助治疗控制见长的职业是以下哪个职业？", option_a = "狂剑", option_b = "兽灵", option_c = "秘言", option_d = "魔导"},
	[6] = {id = 6, question = "从圣心城可以直接通过传送阵前往以下哪个地方？", option_a = "飞瀑村", option_b = "月痕海岸", option_c = "精灵之森", option_d = "极北之域"},
	[7] = {id = 7, question = "宠物人鱼精灵需要人物多少级可携带？", option_a = "35", option_b = "45", option_c = "55", option_d = "65"},
	[8] = {id = 8, question = "制作时装需要消耗什么材料？", option_a = "棉布、丝绸", option_b = "有毛的皮革", option_c = "彩虹果、月光绒", option_d = "蜡染、太空棉"},
	[9] = {id = 9, question = "双倍时间在哪领取？", option_a = "找GM", option_b = "挂机面板右下角", option_c = "默念我要双倍", option_d = "以上都对"},
	[10] = {id = 10, question = "雪狐分布在哪个地图？", option_a = "深蓝之洲二", option_b = "冰霜神殿二", option_c = "迷梦树界二", option_d = "圣心城"},
	[11] = {id = 11, question = "宠物狼需要人物多少级可携带？", option_a = "35", option_b = "45", option_c = "55", option_d = "65"},
	[12] = {id = 12, question = "在战斗中使用保护功能，可以替被保护方减少多少伤害？", option_a = "10%", option_b = "30%", option_c = "50%", option_d = "100%"},
	[13] = {id = 13, question = "战斗中使用防御功能可以减少多少伤害？", option_a = "30%", option_b = "50%", option_c = "70%", option_d = "100%"},
	[14] = {id = 14, question = "人物达到多少级可以接取悬赏任务？", option_a = "15", option_b = "20", option_c = "25", option_d = "30"},
	[15] = {id = 15, question = "人物达到多少级可以接取职业任务？", option_a = "15", option_b = "20", option_c = "25", option_d = "30"},
	[16] = {id = 16, question = "每天可以参与竞技场多少次？", option_a = "5", option_b = "8", option_c = "10", option_d = "15"},
	[17] = {id = 17, question = "人物达到多少级可以参与天空之塔？", option_a = "35", option_b = "30", option_c = "25", option_d = "40"},
	[18] = {id = 18, question = "远航商人玩法触发紧急供应事件，多久内完成可获得额外奖励？", option_a = "30分钟", option_b = "60分钟", option_c = "120分钟", option_d = "180分钟"},
	[19] = {id = 19, question = "人物达到多少级可以创建、加入公会？", option_a = "15", option_b = "20", option_c = "25", option_d = "28"},
	[20] = {id = 20, question = "锻造装备的核心材料“星辰石”在哪里可以获得？", option_a = "极寒试炼", option_b = "宝图任务", option_c = "天空之塔", option_d = "竞技场"},
	[21] = {id = 21, question = "护送任务最多有多少种品质的任务可能刷出？", option_a = "3种", option_b = "4种", option_c = "5种", option_d = "6种"},
	[22] = {id = 22, question = "下列哪一个道具可以增加宠物的快乐值？", option_a = "资质丹", option_b = "洗髓丹", option_c = "开心果", option_d = "宠物技能书"},
	[23] = {id = 23, question = "人物达到多少级会开启翅膀系统？", option_a = "15", option_b = "12", option_c = "30", option_d = "25"},
	[24] = {id = 24, question = "藏宝图任务每天最多可以获得多少张藏宝图？", option_a = "10", option_b = "12", option_c = "5", option_d = "15"},
	[25] = {id = 25, question = "以下哪个不是兑换高级藏宝图的四宝之一？", option_a = "火凤之羽", option_b = "魔狼爪", option_c = "巨龙骨", option_d = "中庭蛇牙"},
	[26] = {id = 26, question = "护送任务每天可以完成多少次？", option_a = "1", option_b = "2", option_c = "3", option_d = "4"},
	[27] = {id = 27, question = "游戏里可以在哪里使用星辰积分兑换道具？", option_a = "积分商店", option_b = "金币市场", option_c = "银币市场", option_d = "宠物商店"},
	[28] = {id = 28, question = "下列哪个方法不能获得积分？", option_a = "带新人做悬赏", option_b = "协助玩家打副本", option_c = "参加竞技场", option_d = "帮新人护送"},
	[29] = {id = 29, question = "以下哪个技能不是玩家能学习的生活技能？", option_a = "栽培之术", option_b = "魔药研制", option_c = "打工赚钱", option_d = "工艺设计"},
	[30] = {id = 30, question = "玩家想要飞行，需要翅膀升级到几阶？", option_a = "一阶", option_b = "二阶", option_c = "三阶", option_d = "四阶"},
	[31] = {id = 31, question = "一颗3级的宝石，在镶嵌到装备上之后摘除下来，会变成？", option_a = "1颗3级宝石", option_b = "2颗2级宝石", option_c = "4颗1级宝石", option_d = "5颗1级宝石"},
	[32] = {id = 32, question = "人物经验书每天最多能使用多少本？", option_a = "10本", option_b = "20本", option_c = "30本", option_d = "15本"},
	[33] = {id = 33, question = "冒险笔记每天最多能使用多少本？", option_a = "10本", option_b = "20本", option_c = "30本", option_d = "15本"},
	[34] = {id = 34, question = "远航商人玩法多少级触发双倍大号订单奖励？", option_a = "30级", option_b = "40级", option_c = "50级", option_d = "60级"},
	[35] = {id = 35, question = "以下哪个分类不是银币市场的分类？", option_a = "药品", option_b = "工艺", option_c = "栽培", option_d = "装备"},
	[36] = {id = 36, question = "下列哪个道具可以增加公会贡献？", option_a = "荣誉徽章", option_b = "资质丹", option_c = "巨龙骨", option_d = "七彩织锦"},
	[37] = {id = 37, question = "宠物想要进阶除了需要满足符石穿戴齐全，还需要什么道具？", option_a = "资质丹", option_b = "开心果", option_c = "灵犀", option_d = "星辰精华"},
	[38] = {id = 38, question = "宠物在战斗中可以使用药品吗？", option_a = "能", option_b = "不能", option_c = "", option_d = ""},
	[39] = {id = 39, question = "魔导的元素重生技能和秘言的回魂祷言能复活死亡的宠物吗？", option_a = "能", option_b = "不能", option_c = "", option_d = ""},
	[40] = {id = 40, question = "宠物击杀目标触发“追击”时，发生了暴击。此时会触发“狂暴追击”吗？", option_a = "能", option_b = "不能", option_c = "", option_d = ""},
	[41] = {id = 41, question = "神兽可以洗髓吗？", option_a = "能", option_b = "不能", option_c = "", option_d = ""},
	[42] = {id = 42, question = "玩家技能中最后的进阶效果，通过什么方式获得？", option_a = "强化装备", option_b = "洗练装备", option_c = "镶嵌技能宝石", option_d = ""},
	[43] = {id = 43, question = "将宝宝洗成变异后，再洗髓一定会变回宝宝吗？", option_a = "一定会", option_b = "不一定会", option_c = "", option_d = ""},
	[44] = {id = 44, question = "护送任务在哪个NPC里领取？", option_a = "赏金猎人", option_b = "小月学姐", option_c = "露露", option_d = "军需官科尔"},
	[45] = {id = 45, question = "宠物技能“神佑”和“鬼魂术”共存时，谁会生效？", option_a = "神佑", option_b = "鬼魂术", option_c = "都生效", option_d = "都不生效"}
}

DataEscort.data_box_reward_length = 160
DataEscort.data_box_reward = {
	["32000_0_1"] = {quest_id = 32000, box_hp = 1, min_lev = 0, max_lev = 34, reward = {{90000,1650,100}}},
	["32000_35_1"] = {quest_id = 32000, box_hp = 1, min_lev = 35, max_lev = 54, reward = {{90000,2400,100}}},
	["32000_55_1"] = {quest_id = 32000, box_hp = 1, min_lev = 55, max_lev = 64, reward = {{90000,2850,100}}},
	["32000_65_1"] = {quest_id = 32000, box_hp = 1, min_lev = 65, max_lev = 99, reward = {{90000,4200,100}}},
	["32000_0_2"] = {quest_id = 32000, box_hp = 2, min_lev = 0, max_lev = 34, reward = {{90000,1950,100}}},
	["32000_35_2"] = {quest_id = 32000, box_hp = 2, min_lev = 35, max_lev = 54, reward = {{90000,2700,100}}},
	["32000_55_2"] = {quest_id = 32000, box_hp = 2, min_lev = 55, max_lev = 64, reward = {{90000,3000,100}}},
	["32000_65_2"] = {quest_id = 32000, box_hp = 2, min_lev = 65, max_lev = 99, reward = {{90000,4350,100}}},
	["32000_0_3"] = {quest_id = 32000, box_hp = 3, min_lev = 0, max_lev = 34, reward = {{90000,2250,100}}},
	["32000_35_3"] = {quest_id = 32000, box_hp = 3, min_lev = 35, max_lev = 54, reward = {{90000,3000,100}}},
	["32000_55_3"] = {quest_id = 32000, box_hp = 3, min_lev = 55, max_lev = 64, reward = {{90000,3450,100}}},
	["32000_65_3"] = {quest_id = 32000, box_hp = 3, min_lev = 65, max_lev = 99, reward = {{90000,4800,100}}},
	["32000_0_4"] = {quest_id = 32000, box_hp = 4, min_lev = 0, max_lev = 34, reward = {{90000,2850,100}}},
	["32000_35_4"] = {quest_id = 32000, box_hp = 4, min_lev = 35, max_lev = 54, reward = {{90000,3600,100}}},
	["32000_55_4"] = {quest_id = 32000, box_hp = 4, min_lev = 55, max_lev = 64, reward = {{90000,3900,100}}},
	["32000_65_4"] = {quest_id = 32000, box_hp = 4, min_lev = 65, max_lev = 99, reward = {{90000,5250,100}}},
	["32000_0_5"] = {quest_id = 32000, box_hp = 5, min_lev = 0, max_lev = 34, reward = {{90000,3450,100}}},
	["32000_35_5"] = {quest_id = 32000, box_hp = 5, min_lev = 35, max_lev = 54, reward = {{90000,4200,100}}},
	["32000_55_5"] = {quest_id = 32000, box_hp = 5, min_lev = 55, max_lev = 64, reward = {{90000,4650,100}}},
	["32000_65_5"] = {quest_id = 32000, box_hp = 5, min_lev = 65, max_lev = 99, reward = {{90000,6000,100}}},
	["32000_0_6"] = {quest_id = 32000, box_hp = 6, min_lev = 0, max_lev = 34, reward = {{90000,4350,100}}},
	["32000_35_6"] = {quest_id = 32000, box_hp = 6, min_lev = 35, max_lev = 54, reward = {{90000,5100,100}}},
	["32000_55_6"] = {quest_id = 32000, box_hp = 6, min_lev = 55, max_lev = 64, reward = {{90000,5400,100}}},
	["32000_65_6"] = {quest_id = 32000, box_hp = 6, min_lev = 65, max_lev = 99, reward = {{90000,6750,100}}},
	["32000_0_7"] = {quest_id = 32000, box_hp = 7, min_lev = 0, max_lev = 34, reward = {{90000,5250,100}}},
	["32000_35_7"] = {quest_id = 32000, box_hp = 7, min_lev = 35, max_lev = 54, reward = {{90000,6000,100}}},
	["32000_55_7"] = {quest_id = 32000, box_hp = 7, min_lev = 55, max_lev = 64, reward = {{90000,6450,100}}},
	["32000_65_7"] = {quest_id = 32000, box_hp = 7, min_lev = 65, max_lev = 99, reward = {{90000,7800,100}}},
	["32000_0_8"] = {quest_id = 32000, box_hp = 8, min_lev = 0, max_lev = 34, reward = {{90000,6450,100}}},
	["32000_35_8"] = {quest_id = 32000, box_hp = 8, min_lev = 35, max_lev = 54, reward = {{90000,7200,100}}},
	["32000_55_8"] = {quest_id = 32000, box_hp = 8, min_lev = 55, max_lev = 64, reward = {{90000,7500,100}}},
	["32000_65_8"] = {quest_id = 32000, box_hp = 8, min_lev = 65, max_lev = 99, reward = {{90000,8850,100}}},
	["32000_0_9"] = {quest_id = 32000, box_hp = 9, min_lev = 0, max_lev = 34, reward = {{90000,7650,100}}},
	["32000_35_9"] = {quest_id = 32000, box_hp = 9, min_lev = 35, max_lev = 54, reward = {{90000,8400,100}}},
	["32000_55_9"] = {quest_id = 32000, box_hp = 9, min_lev = 55, max_lev = 64, reward = {{90000,8850,100}}},
	["32000_65_9"] = {quest_id = 32000, box_hp = 9, min_lev = 65, max_lev = 99, reward = {{90000,10200,100}}},
	["32000_0_10"] = {quest_id = 32000, box_hp = 10, min_lev = 0, max_lev = 34, reward = {{90000,9150,100}}},
	["32000_35_10"] = {quest_id = 32000, box_hp = 10, min_lev = 35, max_lev = 54, reward = {{90000,9900,100}}},
	["32000_55_10"] = {quest_id = 32000, box_hp = 10, min_lev = 55, max_lev = 64, reward = {{90000,10200,100}}},
	["32000_65_10"] = {quest_id = 32000, box_hp = 10, min_lev = 65, max_lev = 99, reward = {{90000,11550,100}}},
	["32001_0_1"] = {quest_id = 32001, box_hp = 1, min_lev = 0, max_lev = 34, reward = {{90000,2100,100}}},
	["32001_35_1"] = {quest_id = 32001, box_hp = 1, min_lev = 35, max_lev = 54, reward = {{90000,2850,100}}},
	["32001_55_1"] = {quest_id = 32001, box_hp = 1, min_lev = 55, max_lev = 64, reward = {{90000,3300,100}}},
	["32001_65_1"] = {quest_id = 32001, box_hp = 1, min_lev = 65, max_lev = 99, reward = {{90000,4650,100}}},
	["32001_0_2"] = {quest_id = 32001, box_hp = 2, min_lev = 0, max_lev = 34, reward = {{90000,2400,100}}},
	["32001_35_2"] = {quest_id = 32001, box_hp = 2, min_lev = 35, max_lev = 54, reward = {{90000,3150,100}}},
	["32001_55_2"] = {quest_id = 32001, box_hp = 2, min_lev = 55, max_lev = 64, reward = {{90000,3600,100}}},
	["32001_65_2"] = {quest_id = 32001, box_hp = 2, min_lev = 65, max_lev = 99, reward = {{90000,4950,100}}},
	["32001_0_3"] = {quest_id = 32001, box_hp = 3, min_lev = 0, max_lev = 34, reward = {{90000,3000,100}}},
	["32001_35_3"] = {quest_id = 32001, box_hp = 3, min_lev = 35, max_lev = 54, reward = {{90000,3750,100}}},
	["32001_55_3"] = {quest_id = 32001, box_hp = 3, min_lev = 55, max_lev = 64, reward = {{90000,4200,100}}},
	["32001_65_3"] = {quest_id = 32001, box_hp = 3, min_lev = 65, max_lev = 99, reward = {{90000,5550,100}}},
	["32001_0_4"] = {quest_id = 32001, box_hp = 4, min_lev = 0, max_lev = 34, reward = {{90000,3900,100}}},
	["32001_35_4"] = {quest_id = 32001, box_hp = 4, min_lev = 35, max_lev = 54, reward = {{90000,4650,100}}},
	["32001_55_4"] = {quest_id = 32001, box_hp = 4, min_lev = 55, max_lev = 64, reward = {{90000,5100,100}}},
	["32001_65_4"] = {quest_id = 32001, box_hp = 4, min_lev = 65, max_lev = 99, reward = {{90000,6300,100}}},
	["32001_0_5"] = {quest_id = 32001, box_hp = 5, min_lev = 0, max_lev = 34, reward = {{90000,5100,100}}},
	["32001_35_5"] = {quest_id = 32001, box_hp = 5, min_lev = 35, max_lev = 54, reward = {{90000,5850,100}}},
	["32001_55_5"] = {quest_id = 32001, box_hp = 5, min_lev = 55, max_lev = 64, reward = {{90000,6300,100}}},
	["32001_65_5"] = {quest_id = 32001, box_hp = 5, min_lev = 65, max_lev = 99, reward = {{90000,7650,100}}},
	["32001_0_6"] = {quest_id = 32001, box_hp = 6, min_lev = 0, max_lev = 34, reward = {{90000,6750,100}}},
	["32001_35_6"] = {quest_id = 32001, box_hp = 6, min_lev = 35, max_lev = 54, reward = {{90000,7500,100}}},
	["32001_55_6"] = {quest_id = 32001, box_hp = 6, min_lev = 55, max_lev = 64, reward = {{90000,7800,100}}},
	["32001_65_6"] = {quest_id = 32001, box_hp = 6, min_lev = 65, max_lev = 99, reward = {{90000,9150,100}}},
	["32001_0_7"] = {quest_id = 32001, box_hp = 7, min_lev = 0, max_lev = 34, reward = {{90000,8700,100}}},
	["32001_35_7"] = {quest_id = 32001, box_hp = 7, min_lev = 35, max_lev = 54, reward = {{90000,9450,100}}},
	["32001_55_7"] = {quest_id = 32001, box_hp = 7, min_lev = 55, max_lev = 64, reward = {{90000,9750,100}}},
	["32001_65_7"] = {quest_id = 32001, box_hp = 7, min_lev = 65, max_lev = 99, reward = {{90000,11100,100}}},
	["32001_0_8"] = {quest_id = 32001, box_hp = 8, min_lev = 0, max_lev = 34, reward = {{90000,11100,100}}},
	["32001_35_8"] = {quest_id = 32001, box_hp = 8, min_lev = 35, max_lev = 54, reward = {{90000,11850,100}}},
	["32001_55_8"] = {quest_id = 32001, box_hp = 8, min_lev = 55, max_lev = 64, reward = {{90000,12150,100}}},
	["32001_65_8"] = {quest_id = 32001, box_hp = 8, min_lev = 65, max_lev = 99, reward = {{90000,13500,100}}},
	["32001_0_9"] = {quest_id = 32001, box_hp = 9, min_lev = 0, max_lev = 34, reward = {{90000,13800,100}}},
	["32001_35_9"] = {quest_id = 32001, box_hp = 9, min_lev = 35, max_lev = 54, reward = {{90000,14550,100}}},
	["32001_55_9"] = {quest_id = 32001, box_hp = 9, min_lev = 55, max_lev = 64, reward = {{90000,15000,100}}},
	["32001_65_9"] = {quest_id = 32001, box_hp = 9, min_lev = 65, max_lev = 99, reward = {{90000,16350,100}}},
	["32001_0_10"] = {quest_id = 32001, box_hp = 10, min_lev = 0, max_lev = 34, reward = {{90000,17100,100}}},
	["32001_35_10"] = {quest_id = 32001, box_hp = 10, min_lev = 35, max_lev = 54, reward = {{90000,17850,100}}},
	["32001_55_10"] = {quest_id = 32001, box_hp = 10, min_lev = 55, max_lev = 64, reward = {{90000,18150,100}}},
	["32001_65_10"] = {quest_id = 32001, box_hp = 10, min_lev = 65, max_lev = 99, reward = {{90000,19500,100}}},
	["32002_0_1"] = {quest_id = 32002, box_hp = 1, min_lev = 0, max_lev = 34, reward = {{90000,2550,100}}},
	["32002_35_1"] = {quest_id = 32002, box_hp = 1, min_lev = 35, max_lev = 54, reward = {{90000,3300,100}}},
	["32002_55_1"] = {quest_id = 32002, box_hp = 1, min_lev = 55, max_lev = 64, reward = {{90000,3750,100}}},
	["32002_65_1"] = {quest_id = 32002, box_hp = 1, min_lev = 65, max_lev = 99, reward = {{90000,5100,100}}},
	["32002_0_2"] = {quest_id = 32002, box_hp = 2, min_lev = 0, max_lev = 34, reward = {{90000,3000,100}}},
	["32002_35_2"] = {quest_id = 32002, box_hp = 2, min_lev = 35, max_lev = 54, reward = {{90000,3750,100}}},
	["32002_55_2"] = {quest_id = 32002, box_hp = 2, min_lev = 55, max_lev = 64, reward = {{90000,4050,100}}},
	["32002_65_2"] = {quest_id = 32002, box_hp = 2, min_lev = 65, max_lev = 99, reward = {{90000,5400,100}}},
	["32002_0_3"] = {quest_id = 32002, box_hp = 3, min_lev = 0, max_lev = 34, reward = {{90000,3750,100}}},
	["32002_35_3"] = {quest_id = 32002, box_hp = 3, min_lev = 35, max_lev = 54, reward = {{90000,4500,100}}},
	["32002_55_3"] = {quest_id = 32002, box_hp = 3, min_lev = 55, max_lev = 64, reward = {{90000,4800,100}}},
	["32002_65_3"] = {quest_id = 32002, box_hp = 3, min_lev = 65, max_lev = 99, reward = {{90000,6150,100}}},
	["32002_0_4"] = {quest_id = 32002, box_hp = 4, min_lev = 0, max_lev = 34, reward = {{90000,4950,100}}},
	["32002_35_4"] = {quest_id = 32002, box_hp = 4, min_lev = 35, max_lev = 54, reward = {{90000,5700,100}}},
	["32002_55_4"] = {quest_id = 32002, box_hp = 4, min_lev = 55, max_lev = 64, reward = {{90000,6000,100}}},
	["32002_65_4"] = {quest_id = 32002, box_hp = 4, min_lev = 65, max_lev = 99, reward = {{90000,7350,100}}},
	["32002_0_5"] = {quest_id = 32002, box_hp = 5, min_lev = 0, max_lev = 34, reward = {{90000,6750,100}}},
	["32002_35_5"] = {quest_id = 32002, box_hp = 5, min_lev = 35, max_lev = 54, reward = {{90000,7500,100}}},
	["32002_55_5"] = {quest_id = 32002, box_hp = 5, min_lev = 55, max_lev = 64, reward = {{90000,7800,100}}},
	["32002_65_5"] = {quest_id = 32002, box_hp = 5, min_lev = 65, max_lev = 99, reward = {{90000,9150,100}}},
	["32002_0_6"] = {quest_id = 32002, box_hp = 6, min_lev = 0, max_lev = 34, reward = {{90000,9150,100}}},
	["32002_35_6"] = {quest_id = 32002, box_hp = 6, min_lev = 35, max_lev = 54, reward = {{90000,9900,100}}},
	["32002_55_6"] = {quest_id = 32002, box_hp = 6, min_lev = 55, max_lev = 64, reward = {{90000,10350,100}}},
	["32002_65_6"] = {quest_id = 32002, box_hp = 6, min_lev = 65, max_lev = 99, reward = {{90000,11550,100}}},
	["32002_0_7"] = {quest_id = 32002, box_hp = 7, min_lev = 0, max_lev = 34, reward = {{90000,12300,100}}},
	["32002_35_7"] = {quest_id = 32002, box_hp = 7, min_lev = 35, max_lev = 54, reward = {{90000,13050,100}}},
	["32002_55_7"] = {quest_id = 32002, box_hp = 7, min_lev = 55, max_lev = 64, reward = {{90000,13350,100}}},
	["32002_65_7"] = {quest_id = 32002, box_hp = 7, min_lev = 65, max_lev = 99, reward = {{90000,14700,100}}},
	["32002_0_8"] = {quest_id = 32002, box_hp = 8, min_lev = 0, max_lev = 34, reward = {{90000,16200,100}}},
	["32002_35_8"] = {quest_id = 32002, box_hp = 8, min_lev = 35, max_lev = 54, reward = {{90000,16950,100}}},
	["32002_55_8"] = {quest_id = 32002, box_hp = 8, min_lev = 55, max_lev = 64, reward = {{90000,17250,100}}},
	["32002_65_8"] = {quest_id = 32002, box_hp = 8, min_lev = 65, max_lev = 99, reward = {{90000,18600,100}}},
	["32002_0_9"] = {quest_id = 32002, box_hp = 9, min_lev = 0, max_lev = 34, reward = {{90000,20700,100}}},
	["32002_35_9"] = {quest_id = 32002, box_hp = 9, min_lev = 35, max_lev = 54, reward = {{90000,21450,100}}},
	["32002_55_9"] = {quest_id = 32002, box_hp = 9, min_lev = 55, max_lev = 64, reward = {{90000,21900,100}}},
	["32002_65_9"] = {quest_id = 32002, box_hp = 9, min_lev = 65, max_lev = 99, reward = {{90000,23250,100}}},
	["32002_0_10"] = {quest_id = 32002, box_hp = 10, min_lev = 0, max_lev = 34, reward = {{90000,26250,100}}},
	["32002_35_10"] = {quest_id = 32002, box_hp = 10, min_lev = 35, max_lev = 54, reward = {{90000,27000,100}}},
	["32002_55_10"] = {quest_id = 32002, box_hp = 10, min_lev = 55, max_lev = 64, reward = {{90000,27450,100}}},
	["32002_65_10"] = {quest_id = 32002, box_hp = 10, min_lev = 65, max_lev = 99, reward = {{90000,28650,100}}},
	["32003_0_1"] = {quest_id = 32003, box_hp = 1, min_lev = 0, max_lev = 34, reward = {{90000,2850,100}}},
	["32003_35_1"] = {quest_id = 32003, box_hp = 1, min_lev = 35, max_lev = 54, reward = {{90000,3600,100}}},
	["32003_55_1"] = {quest_id = 32003, box_hp = 1, min_lev = 55, max_lev = 64, reward = {{90000,4050,100}}},
	["32003_65_1"] = {quest_id = 32003, box_hp = 1, min_lev = 65, max_lev = 99, reward = {{90000,5400,100}}},
	["32003_0_2"] = {quest_id = 32003, box_hp = 2, min_lev = 0, max_lev = 34, reward = {{90000,3300,100}}},
	["32003_35_2"] = {quest_id = 32003, box_hp = 2, min_lev = 35, max_lev = 54, reward = {{90000,4050,100}}},
	["32003_55_2"] = {quest_id = 32003, box_hp = 2, min_lev = 55, max_lev = 64, reward = {{90000,4350,100}}},
	["32003_65_2"] = {quest_id = 32003, box_hp = 2, min_lev = 65, max_lev = 99, reward = {{90000,5700,100}}},
	["32003_0_3"] = {quest_id = 32003, box_hp = 3, min_lev = 0, max_lev = 34, reward = {{90000,4050,100}}},
	["32003_35_3"] = {quest_id = 32003, box_hp = 3, min_lev = 35, max_lev = 54, reward = {{90000,4800,100}}},
	["32003_55_3"] = {quest_id = 32003, box_hp = 3, min_lev = 55, max_lev = 64, reward = {{90000,5100,100}}},
	["32003_65_3"] = {quest_id = 32003, box_hp = 3, min_lev = 65, max_lev = 99, reward = {{90000,6450,100}}},
	["32003_0_4"] = {quest_id = 32003, box_hp = 4, min_lev = 0, max_lev = 34, reward = {{90000,5250,100}}},
	["32003_35_4"] = {quest_id = 32003, box_hp = 4, min_lev = 35, max_lev = 54, reward = {{90000,6000,100}}},
	["32003_55_4"] = {quest_id = 32003, box_hp = 4, min_lev = 55, max_lev = 64, reward = {{90000,6300,100}}},
	["32003_65_4"] = {quest_id = 32003, box_hp = 4, min_lev = 65, max_lev = 99, reward = {{90000,7650,100}}},
	["32003_0_5"] = {quest_id = 32003, box_hp = 5, min_lev = 0, max_lev = 34, reward = {{90000,7050,100}}},
	["32003_35_5"] = {quest_id = 32003, box_hp = 5, min_lev = 35, max_lev = 54, reward = {{90000,7800,100}}},
	["32003_55_5"] = {quest_id = 32003, box_hp = 5, min_lev = 55, max_lev = 64, reward = {{90000,8100,100}}},
	["32003_65_5"] = {quest_id = 32003, box_hp = 5, min_lev = 65, max_lev = 99, reward = {{90000,9450,100}}},
	["32003_0_6"] = {quest_id = 32003, box_hp = 6, min_lev = 0, max_lev = 34, reward = {{90000,9450,100}}},
	["32003_35_6"] = {quest_id = 32003, box_hp = 6, min_lev = 35, max_lev = 54, reward = {{90000,10200,100}}},
	["32003_55_6"] = {quest_id = 32003, box_hp = 6, min_lev = 55, max_lev = 64, reward = {{90000,10650,100}}},
	["32003_65_6"] = {quest_id = 32003, box_hp = 6, min_lev = 65, max_lev = 99, reward = {{90000,11850,100}}},
	["32003_0_7"] = {quest_id = 32003, box_hp = 7, min_lev = 0, max_lev = 34, reward = {{90000,12600,100}}},
	["32003_35_7"] = {quest_id = 32003, box_hp = 7, min_lev = 35, max_lev = 54, reward = {{90000,13350,100}}},
	["32003_55_7"] = {quest_id = 32003, box_hp = 7, min_lev = 55, max_lev = 64, reward = {{90000,13650,100}}},
	["32003_65_7"] = {quest_id = 32003, box_hp = 7, min_lev = 65, max_lev = 99, reward = {{90000,15000,100}}},
	["32003_0_8"] = {quest_id = 32003, box_hp = 8, min_lev = 0, max_lev = 34, reward = {{90000,16500,100}}},
	["32003_35_8"] = {quest_id = 32003, box_hp = 8, min_lev = 35, max_lev = 54, reward = {{90000,17250,100}}},
	["32003_55_8"] = {quest_id = 32003, box_hp = 8, min_lev = 55, max_lev = 64, reward = {{90000,17550,100}}},
	["32003_65_8"] = {quest_id = 32003, box_hp = 8, min_lev = 65, max_lev = 99, reward = {{90000,18900,100}}},
	["32003_0_9"] = {quest_id = 32003, box_hp = 9, min_lev = 0, max_lev = 34, reward = {{90000,21000,100}}},
	["32003_35_9"] = {quest_id = 32003, box_hp = 9, min_lev = 35, max_lev = 54, reward = {{90000,21750,100}}},
	["32003_55_9"] = {quest_id = 32003, box_hp = 9, min_lev = 55, max_lev = 64, reward = {{90000,22200,100}}},
	["32003_65_9"] = {quest_id = 32003, box_hp = 9, min_lev = 65, max_lev = 99, reward = {{90000,23550,100}}},
	["32003_0_10"] = {quest_id = 32003, box_hp = 10, min_lev = 0, max_lev = 34, reward = {{90000,26550,100}}},
	["32003_35_10"] = {quest_id = 32003, box_hp = 10, min_lev = 35, max_lev = 54, reward = {{90000,27300,100}}},
	["32003_55_10"] = {quest_id = 32003, box_hp = 10, min_lev = 55, max_lev = 64, reward = {{90000,27750,100}}},
	["32003_65_10"] = {quest_id = 32003, box_hp = 10, min_lev = 65, max_lev = 99, reward = {{90000,28950,100}}}
}