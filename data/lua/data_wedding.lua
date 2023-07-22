DataWedding = DataWedding or {}

DataWedding.data_wedding_reward_length = 4
DataWedding.data_wedding_reward = {
	["2_1"] = {type = 2, sex = 1, items_cli = {{29142,0,20},{90018,1,299},{29138,1,1}}},
	["2_0"] = {type = 2, sex = 0, items_cli = {{29142,0,20},{90018,1,299},{29138,1,1}}},
	["1_1"] = {type = 1, sex = 1, items_cli = {{29142,0,10},{90018,1,20}}},
	["1_0"] = {type = 1, sex = 0, items_cli = {{29142,0,10},{90018,1,20}}}
}
DataWedding.data_wedding_action_length = 14
DataWedding.data_wedding_action = {
	["1_2_1"] = {type = 2, free_num = 0, max_num = 5, cost = {{90002,100}}},
	["1_2_2"] = {type = 2, free_num = 0, max_num = 5, cost = {{90002,100}}},
	["2_2_1"] = {type = 2, free_num = 1, max_num = 20, cost = {{90000,50000}}},
	["2_2_2"] = {type = 2, free_num = 1, max_num = 20, cost = {{90000,50000}}},
	["2_2_3"] = {type = 2, free_num = 1, max_num = 30, cost = {{90000,9999}}},
	["5_2_3"] = {type = 2, free_num = 0, max_num = 10, cost = {{90002,50}}},
	["6_2_3"] = {type = 2, free_num = 1, max_num = 20, cost = {{90000,9999}}},
	["1_1_1"] = {type = 1, free_num = 0, max_num = 5, cost = {{90002,100}}},
	["1_1_2"] = {type = 1, free_num = 0, max_num = 5, cost = {{90002,100}}},
	["2_1_1"] = {type = 1, free_num = 1, max_num = 20, cost = {{90000,50000}}},
	["2_1_2"] = {type = 1, free_num = 1, max_num = 20, cost = {{90000,50000}}},
	["2_1_3"] = {type = 1, free_num = 1, max_num = 30, cost = {{90000,9999}}},
	["5_1_3"] = {type = 1, free_num = 0, max_num = 10, cost = {{90002,50}}},
	["6_1_3"] = {type = 1, free_num = 1, max_num = 20, cost = {{90000,9999}}}
}
DataWedding.data_atmosp_reward_length = 8
DataWedding.data_atmosp_reward = {
	["1_1"] = {type = 1, male_reward = {}, famale_reward = {}},
	["1_399"] = {type = 1, male_reward = {{90018,30},{29143,1}}, famale_reward = {{90018,30},{29143,1}}},
	["1_699"] = {type = 1, male_reward = {{90018,100},{29138,1}}, famale_reward = {{90018,100},{29138,1}}},
	["1_999"] = {type = 1, male_reward = {{90018,200},{20032,1}}, famale_reward = {{90018,200},{20032,1}}},
	["2_1"] = {type = 2, male_reward = {}, famale_reward = {}},
	["2_399"] = {type = 2, male_reward = {{90018,30},{29143,1}}, famale_reward = {{90018,30},{29143,1}}},
	["2_699"] = {type = 2, male_reward = {{90018,100},{29138,1}}, famale_reward = {{90018,100},{29138,1}}},
	["2_999"] = {type = 2, male_reward = {{90018,200},{20032,1}}, famale_reward = {{90018,200},{20032,1}}}
}
DataWedding.data_discount_price_length = 16
DataWedding.data_discount_price = {
	{type = 2, start_time = {{merge_time, 0, 0}}, end_time = {{merge_time, 6, 86399}}, label = "gold", discount_price = 920},
	{type = 1, start_time = {{merge_time, 0, 0}}, end_time = {{merge_time, 6, 86399}}, label = "coin", discount_price = 1314520},
	{type = 2, start_time = {{2017, 2, 14, 0, 0, 1}}, end_time = {{2017, 2, 14, 23, 59, 59}}, label = "gold", discount_price = 920},
	{type = 1, start_time = {{2017, 2, 14, 0, 0, 1}}, end_time = {{2017, 2, 14, 23, 59, 59}}, label = "coin", discount_price = 1314520},
	{type = 2, start_time = {{2017, 3, 13, 0, 0, 1}}, end_time = {{2017, 3, 15, 23, 59, 59}}, label = "gold", discount_price = 920},
	{type = 1, start_time = {{2017, 3, 13, 0, 0, 1}}, end_time = {{2017, 3, 15, 23, 59, 59}}, label = "coin", discount_price = 1314520},
	{type = 2, start_time = {{2017, 5, 20, 0, 0, 1}}, end_time = {{2017, 5, 22, 23, 59, 59}}, label = "gold", discount_price = 920},
	{type = 1, start_time = {{2017, 5, 20, 0, 0, 1}}, end_time = {{2017, 5, 22, 23, 59, 59}}, label = "coin", discount_price = 1314520},
	{type = 2, start_time = {{2017, 8, 28, 0, 0, 1}}, end_time = {{2017, 8, 30, 23, 59, 59}}, label = "gold", discount_price = 920},
	{type = 1, start_time = {{2017, 8, 28, 0, 0, 1}}, end_time = {{2017, 8, 30, 23, 59, 59}}, label = "coin", discount_price = 1314520},
	{type = 2, start_time = {{2018, 8, 17, 0, 00, 0}}, end_time = {{2018, 8, 19, 23, 59, 59}}, label = "gold", discount_price = 920},
	{type = 1, start_time = {{2018, 8, 17, 0, 00, 0}}, end_time = {{2018, 8, 19, 23, 59, 59}}, label = "coin", discount_price = 1314520},
	{type = 2, start_time = {{2019, 2, 13, 0, 00, 0}}, end_time = {{2019, 2, 15, 23, 59, 59}}, label = "gold", discount_price = 920},
	{type = 1, start_time = {{2019, 2, 13, 0, 00, 0}}, end_time = {{2019, 2, 15, 23, 59, 59}}, label = "coin", discount_price = 1314520},
	{type = 2, start_time = {{2019, 8, 7, 0, 00, 0}}, end_time = {{2019, 8, 9, 23, 59, 59}}, label = "gold", discount_price = 920},
	{type = 1, start_time = {{2019, 8, 7, 0, 00, 0}}, end_time = {{2019, 8, 9, 23, 59, 59}}, label = "coin", discount_price = 1314520}
}
DataWedding.data_marry_honor_length = 12
DataWedding.data_marry_honor = {
	[1] = {id = 1, male_id = 11224, female_id = 11225, name = "爱人", desc = "最朴实的称呼却最真挚的感情，从此就将过上普通的生活。但是可以去创造属于两人最特别的人生~", activate = {{90018,0}}, switch = {{90018,0}}},
	[2] = {id = 2, male_id = 11200, female_id = 11201, name = "哈尼哈尼", desc = "静静的夜里，想到的总是你；甜甜的梦里，梦见的又是你；甜蜜的爱里，永远只有你；哈尼~，你是我最美的天使！", activate = {{90018,900}}, switch = {{90018,300}}},
	[3] = {id = 3, male_id = 11202, female_id = 11203, name = "心肝宝贝", desc = "恋你恋的内心陶醉，想你想的难以入睡，爱你爱的贴心暖胃，我的心肝宝贝~", activate = {{90018,900}}, switch = {{90018,300}}},
	[4] = {id = 4, male_id = 11216, female_id = 11217, name = "杰克罗斯", desc = "赢得那张船票是我一生最幸运的事，它把你带到了我的身边，让我们相遇。", activate = {{90018,900}}, switch = {{90018,300}}},
	[5] = {id = 5, male_id = 11210, female_id = 11211, name = "亲亲乖乖", desc = "被思念是温馨的，被关怀是幸福的，被爱着是心动的，被宠着是美满的。而你就是被我思念着、关怀着、爱着、宠着的人！", activate = {{90018,1500}}, switch = {{90018,300}}},
	[6] = {id = 6, male_id = 11204, female_id = 11205, name = "夫君娘子", desc = "世有渊明，菊无憾也；世有白石，梅无憾也；世有嵇康，琴弦无憾也；世有余纯顺，穷山恶水无憾也；吾有汝，亦无憾。", activate = {{90018,1500}}, switch = {{90018,300}}},
	[7] = {id = 7, male_id = 11206, female_id = 11207, name = "哥哥妹妹", desc = "妹妹,你是哥哥手心里的宝；哥哥，你是妹妹最安心的依靠。让我们左手写你，右手写我，双手彼此紧握，永不分离！", activate = {{90018,1500}}, switch = {{90018,300}}},
	[8] = {id = 8, male_id = 11208, female_id = 11209, name = "呆瓜傻妞", desc = "傻妞你这辈子就呆我身边吧,放你走我不放心。呆瓜这辈子你就好好当个呆头鹅守护我们的家吧~", activate = {{90003,50000}}, switch = {{90018,300}}},
	[9] = {id = 9, male_id = 11212, female_id = 11213, name = "猪头笨蛋", desc = "叫笨蛋，因为在乎，叫傻瓜，因为关心；叫猪头，因为喜欢、因为爱，想要和你一生一世在一起。", activate = {{90003,50000}}, switch = {{90018,300}}},
	[10] = {id = 10, male_id = 11214, female_id = 11215, name = "罗密欧朱丽叶", desc = "这么多年来，我一直在寻找理想的爱情，但没有一个人能像你那样在最初的时刻打动了我，而且越来越深沉的打动。", activate = {{90002,399}}, switch = {{90018,300}}},
	[11] = {id = 11, male_id = 11218, female_id = 11219, name = "梁山伯祝英台", desc = "我们的爱，心心相印；我们的情，轮回不忘，生死不弃，白首不离。愿与你，天涯不变，朝暮在心。", activate = {{90002,399}}, switch = {{90018,300}}},
	[12] = {id = 12, male_id = 11220, female_id = 11221, name = "公主王子", desc = "几乎所有童话开端，都是从王子与公主，一场美丽的邂逅开始。而我俩正是新的童话的开始，创造属于我俩的童话！", activate = {{90002,666}}, switch = {{90018,300}}}
}
DataWedding.data_weddingday_length = 5
DataWedding.data_weddingday = {
	[1] = {id = 1, day = 0, name = "纸恋"},
	[2] = {id = 2, day = 15, name = "银恋"},
	[3] = {id = 3, day = 30, name = "水晶爱恋"},
	[4] = {id = 4, day = 180, name = "金色爱恋"},
	[5] = {id = 5, day = 365, name = "钻石爱恋"}
}
DataWedding.data_wedding_package_length = 4
DataWedding.data_wedding_package = {
	[1] = {id = 1, name = "比翼双飞", day = 30, item_id = 22316},
	[2] = {id = 2, name = "琴瑟和鸣", day = 90, item_id = 22317},
	[3] = {id = 3, name = "携手白头", day = 180, item_id = 22318},
	[4] = {id = 4, name = "天长地久", day = 365, item_id = 22319}
}
DataWedding.data_whiteday_length = 54
DataWedding.data_whiteday = {
	{type = 1, item_id = 20006, bind = 0, num = 15, sex = 2, odds = 550, add_odds = 0, title = "宠物乐园", rewardid = 22563},
	{type = 1, item_id = 20039, bind = 0, num = 1, sex = 2, odds = 225, add_odds = 0, title = "宠物乐园", rewardid = 22563},
	{type = 1, item_id = 20040, bind = 0, num = 1, sex = 2, odds = 20, add_odds = 0, title = "宠物乐园", rewardid = 22563},
	{type = 1, item_id = 20061, bind = 0, num = 1, sex = 2, odds = 170, add_odds = 0, title = "宠物乐园", rewardid = 22563},
	{type = 1, item_id = 20014, bind = 0, num = 1, sex = 2, odds = 20, add_odds = 0, title = "宠物乐园", rewardid = 22563},
	{type = 1, item_id = 29101, bind = 0, num = 1, sex = 2, odds = 10, add_odds = 0, title = "宠物乐园", rewardid = 22563},
	{type = 1, item_id = 29100, bind = 0, num = 1, sex = 2, odds = 5, add_odds = 0, title = "宠物乐园", rewardid = 22563},
	{type = 2, item_id = 20074, bind = 0, num = 1, sex = 2, odds = 600, add_odds = 0, title = "日月星辰", rewardid = 29062},
	{type = 2, item_id = 29102, bind = 0, num = 1, sex = 2, odds = 143, add_odds = 0, title = "日月星辰", rewardid = 29062},
	{type = 2, item_id = 20545, bind = 0, num = 1, sex = 2, odds = 130, add_odds = 0, title = "日月星辰", rewardid = 29062},
	{type = 2, item_id = 20616, bind = 0, num = 1, sex = 2, odds = 60, add_odds = 0, title = "日月星辰", rewardid = 29062},
	{type = 2, item_id = 20075, bind = 0, num = 1, sex = 2, odds = 60, add_odds = 0, title = "日月星辰", rewardid = 29062},
	{type = 2, item_id = 20076, bind = 0, num = 1, sex = 2, odds = 5, add_odds = 0, title = "日月星辰", rewardid = 29062},
	{type = 2, item_id = 20617, bind = 0, num = 1, sex = 2, odds = 2, add_odds = 0, title = "日月星辰", rewardid = 29062},
	{type = 3, item_id = 23831, bind = 0, num = 1, sex = 2, odds = 550, add_odds = 0, title = "欢乐时光", rewardid = 29051},
	{type = 3, item_id = 23819, bind = 0, num = 1, sex = 2, odds = 150, add_odds = 0, title = "欢乐时光", rewardid = 29051},
	{type = 3, item_id = 23821, bind = 0, num = 1, sex = 2, odds = 150, add_odds = 0, title = "欢乐时光", rewardid = 29051},
	{type = 3, item_id = 23822, bind = 0, num = 1, sex = 2, odds = 108, add_odds = 0, title = "欢乐时光", rewardid = 29051},
	{type = 3, item_id = 23859, bind = 0, num = 1, sex = 2, odds = 30, add_odds = 0, title = "欢乐时光", rewardid = 29051},
	{type = 3, item_id = 70056, bind = 0, num = 1, sex = 2, odds = 12, add_odds = 0, title = "欢乐时光", rewardid = 29051},
	{type = 4, item_id = 23733, bind = 0, num = 1, sex = 2, odds = 392, add_odds = 0, title = "宝物盛典", rewardid = 29048},
	{type = 4, item_id = 21243, bind = 0, num = 1, sex = 2, odds = 380, add_odds = 0, title = "宝物盛典", rewardid = 29048},
	{type = 4, item_id = 21243, bind = 0, num = 2, sex = 2, odds = 220, add_odds = 0, title = "宝物盛典", rewardid = 29048},
	{type = 4, item_id = 21244, bind = 0, num = 1, sex = 2, odds = 5, add_odds = 0, title = "宝物盛典", rewardid = 29048},
	{type = 4, item_id = 21246, bind = 0, num = 1, sex = 2, odds = 2, add_odds = 0, title = "宝物盛典", rewardid = 29048},
	{type = 4, item_id = 21245, bind = 0, num = 1, sex = 2, odds = 1, add_odds = 0, title = "宝物盛典", rewardid = 29048},
	{type = 5, item_id = 21420, bind = 0, num = 2, sex = 2, odds = 687, add_odds = 0, title = "图鉴宝箱", rewardid = 29026},
	{type = 5, item_id = 21421, bind = 0, num = 1, sex = 2, odds = 159, add_odds = 0, title = "图鉴宝箱", rewardid = 29026},
	{type = 5, item_id = 21422, bind = 0, num = 1, sex = 2, odds = 60, add_odds = 0, title = "图鉴宝箱", rewardid = 29026},
	{type = 5, item_id = 21423, bind = 0, num = 1, sex = 2, odds = 40, add_odds = 0, title = "图鉴宝箱", rewardid = 29026},
	{type = 5, item_id = 21424, bind = 0, num = 1, sex = 2, odds = 20, add_odds = 0, title = "图鉴宝箱", rewardid = 29026},
	{type = 5, item_id = 21425, bind = 0, num = 1, sex = 2, odds = 30, add_odds = 0, title = "图鉴宝箱", rewardid = 29026},
	{type = 5, item_id = 21426, bind = 0, num = 1, sex = 2, odds = 4, add_odds = 0, title = "图鉴宝箱", rewardid = 29026},
	{type = 6, item_id = 20088, bind = 0, num = 1, sex = 2, odds = 642, add_odds = 0, title = "符石献礼", rewardid = 23050},
	{type = 6, item_id = 20089, bind = 0, num = 1, sex = 2, odds = 343, add_odds = 0, title = "符石献礼", rewardid = 23050},
	{type = 6, item_id = 20090, bind = 0, num = 1, sex = 2, odds = 12, add_odds = 0, title = "符石献礼", rewardid = 23050},
	{type = 6, item_id = 23119, bind = 0, num = 1, sex = 2, odds = 3, add_odds = 0, title = "符石献礼", rewardid = 23050},
	{type = 7, item_id = 23556, bind = 0, num = 2, sex = 2, odds = 650, add_odds = 0, title = "奇幻坐骑", rewardid = 21716},
	{type = 7, item_id = 23554, bind = 0, num = 1, sex = 2, odds = 320, add_odds = 0, title = "奇幻坐骑", rewardid = 21716},
	{type = 7, item_id = 23550, bind = 0, num = 1, sex = 2, odds = 27, add_odds = 0, title = "奇幻坐骑", rewardid = 21716},
	{type = 7, item_id = 70559, bind = 0, num = 1, sex = 2, odds = 3, add_odds = 0, title = "奇幻坐骑", rewardid = 21716},
	{type = 8, item_id = 29669, bind = 0, num = 1, sex = 2, odds = 528, add_odds = 0, title = "酷炫外观", rewardid = 29029},
	{type = 8, item_id = 29670, bind = 0, num = 1, sex = 2, odds = 10, add_odds = 0, title = "酷炫外观", rewardid = 29029},
	{type = 8, item_id = 70755, bind = 0, num = 1, sex = 0, odds = 450, add_odds = 0, title = "酷炫外观", rewardid = 29029},
	{type = 8, item_id = 70759, bind = 0, num = 1, sex = 1, odds = 450, add_odds = 0, title = "酷炫外观", rewardid = 29029},
	{type = 8, item_id = 70756, bind = 0, num = 1, sex = 0, odds = 10, add_odds = 0, title = "酷炫外观", rewardid = 29029},
	{type = 8, item_id = 70760, bind = 0, num = 1, sex = 1, odds = 10, add_odds = 0, title = "酷炫外观", rewardid = 29029},
	{type = 8, item_id = 24022, bind = 0, num = 1, sex = 2, odds = 2, add_odds = 0, title = "酷炫外观", rewardid = 29029},
	{type = 9, item_id = 20087, bind = 0, num = 1, sex = 2, odds = 396, add_odds = 0, title = "璀璨珍宝", rewardid = 29045},
	{type = 9, item_id = 90026, bind = 0, num = 100, sex = 2, odds = 380, add_odds = 0, title = "璀璨珍宝", rewardid = 29045},
	{type = 9, item_id = 20046, bind = 0, num = 1, sex = 2, odds = 120, add_odds = 0, title = "璀璨珍宝", rewardid = 29045},
	{type = 9, item_id = 20095, bind = 0, num = 1, sex = 2, odds = 100, add_odds = 0, title = "璀璨珍宝", rewardid = 29045},
	{type = 9, item_id = 20038, bind = 0, num = 1, sex = 2, odds = 3, add_odds = 0, title = "璀璨珍宝", rewardid = 29045},
	{type = 9, item_id = 22205, bind = 0, num = 1, sex = 2, odds = 1, add_odds = 0, title = "璀璨珍宝", rewardid = 29045}
}
DataWedding.data_get_whiteday_votive_length = 2
DataWedding.data_get_whiteday_votive = {
	[1] = {cost = {{90000, 100000}}, reward = {{20002,0,2}}, rand_reward = {}},
	[2] = {cost = {{90002, 200}}, reward = {{90048,0,5},{23237,0,1}}, rand_reward = {}}
}
DataWedding.data_get_whiteday_possible_reward_length = 1
DataWedding.data_get_whiteday_possible_reward = {
	[1] = {reward = {{20087,0,1,120},{20046,0,1,100},{20095,0,1,60},{20038,0,1,48},{22205,0,1,2},{20075,0,1,60},{20039,0,1,120},{21130,0,1,120},{21100,0,1,120},{29101,0,1,20},{20076,0,1,10},{22585,0,1,80},{20089,0,1,80},{20090,0,1,30},{22212,0,1,30}}}
}
