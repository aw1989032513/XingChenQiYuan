DataCampCake = DataCampCake or {}

--开启时间
DataCampCake.data_base_time_length = 4
DataCampCake.data_base_time = {
	[1] = {id = 1, st = {{2016,10,1,9,0,0}}, et = {{2016,10,1,23,30,0}}},
	[2] = {id = 2, st = {{2016,10,3,9,0,0}}, et = {{2016,10,3,23,30,0}}},
	[3] = {id = 3, st = {{2016,10,5,9,0,0}}, et = {{2016,10,5,23,30,0}}},
	[4] = {id = 4, st = {{2016,10,7,9,0,0}}, et = {{2016,10,7,23,30,0}}}
}

--任务列表
DataCampCake.data_quest_list_length = 3
DataCampCake.data_quest_list = {
	[1] = {round = 1, buff = {{30004,1000,1}}},
	[2] = {round = 2, buff = {}},
	[3] = {round = 3, buff = {}}
}

--问题列表
DataCampCake.data_question_list_length = 36
DataCampCake.data_question_list = {
	[10001] = {id = 10001, question = "何处拾贝壳（打一中国电视剧名）", option_a = "上海滩", option_b = "定军山", option_c = "智取威虎山", option_d = "重庆森林"},
	[10002] = {id = 10002, question = "拍一个巴掌（打一地名）", option_a = "火焰山", option_b = "五指山", option_c = "泰山", option_d = "长白山"},
	[10003] = {id = 10003, question = "十五的月亮（打一成语）", option_a = "正大光明", option_b = "喜出望外", option_c = "明月清风", option_d = "日涨盈亏"},
	[10004] = {id = 10004, question = "开门日正中（打一字）", option_a = "闹", option_b = "间", option_c = "问", option_d = "闪"},
	[10005] = {id = 10005, question = "海上升明月，天涯共此时（打一山西地名）", option_a = "太原", option_b = "大同", option_c = "临汾", option_d = "长治"},
	[10006] = {id = 10006, question = "中秋佳节大团圆（打一电影名）", option_a = "勇敢的心", option_b = "东成西就", option_c = "喜相逢", option_d = "英雄"},
	[10007] = {id = 10007, question = "下列我国哪个古迹被誉为“世界八大奇迹”：", option_a = "万里长城", option_b = "乐山大佛", option_c = "秦始皇兵马俑", option_d = "敦煌"},
	[10008] = {id = 10008, question = "中秋赏菊（打一成语）", option_a = "国色天香", option_b = "金玉良缘", option_c = "雾里看花", option_d = "花好月圆"},
	[10009] = {id = 10009, question = "中秋佳节结良缘（打一我国城市名）", option_a = "重庆", option_b = "北京", option_c = "杭州", option_d = "青岛"},
	[10010] = {id = 10010, question = "火车连续发出两声长鸣，这表示：", option_a = "前进", option_b = "停留", option_c = "倒退", option_d = "故障"},
	[10011] = {id = 10011, question = "世界最高的塔是哪一座？", option_a = "埃菲尔铁塔", option_b = "多伦多塔", option_c = "东柏林塔", option_d = "莫斯科塔"},
	[10012] = {id = 10012, question = "下列世界奇迹哪个位于伊拉克？", option_a = "金字塔", option_b = "空中花园", option_c = "宙斯神像", option_d = "太阳神像"},
	[10013] = {id = 10013, question = "下列哪个尊称是对古代太子的尊称：", option_a = "陛下", option_b = "阁下", option_c = "殿下", option_d = "私下"},
	[10014] = {id = 10014, question = "下列古都哪个被称为“六朝古都”：", option_a = "洛阳", option_b = "西安", option_c = "南京", option_d = "北京"},
	[10015] = {id = 10015, question = "下列古代四大美女哪位是西汉时期的？", option_a = "西施", option_b = "王昭君", option_c = "貂婵", option_d = "杨贵妃"},
	[10016] = {id = 10016, question = "世界上使用人数最多的语言是：", option_a = "英语", option_b = "汉语", option_c = "西班牙语", option_d = "世界语"},
	[10017] = {id = 10017, question = "我国古代著名书院白鹿洞书院位于：", option_a = "江西庐山", option_b = "湖南长沙", option_c = "湖南衡阳", option_d = "河南商丘"},
	[10018] = {id = 10018, question = "下列鲁迅作品中哪部不是杂文集：", option_a = "《热风》", option_b = "《坟》", option_c = "《呐喊》", option_d = "《二心集》"},
	[10019] = {id = 10019, question = "我国古代历史上谁写诗最多，达三万多道：", option_a = "陆游", option_b = "乾隆", option_c = "李白", option_d = "杜甫"},
	[10020] = {id = 10020, question = "古典小说《水浒传》的作者是：", option_a = "罗贯中", option_b = "施耐庵", option_c = "吴承恩", option_d = "曹雪芹"},
	[10021] = {id = 10021, question = "“丘比特”是西方传说中哪种神的别称？", option_a = "天神", option_b = "爱神", option_c = "智慧之神", option_d = "战神"},
	[10022] = {id = 10022, question = "著名喜剧电影艺术家卓别林是哪国人？", option_a = "英国", option_b = "法国", option_c = "德国", option_d = "美国"},
	[10023] = {id = 10023, question = "供给人的机体热能的最主要营养物质是：", option_a = "蛋白质", option_b = "脂肪", option_c = "糖", option_d = "维生素"},
	[10024] = {id = 10024, question = "咖啡的故乡是哪里？", option_a = "亚洲", option_b = "美洲", option_c = "大洋洲", option_d = "非洲"},
	[10025] = {id = 10025, question = "泼水节是我国哪个少数民族的传统节日？", option_a = "彝族", option_b = "回族", option_c = "壮族", option_d = "傣族"},
	[10026] = {id = 10026, question = "“史家之绝唱，无韵之离骚”是谁对《史记》的赞语？", option_a = "茅盾", option_b = "郭沫若", option_c = "鲁迅", option_d = "叶圣陶"},
	[10027] = {id = 10027, question = "一生写了600多首歌曲的“歌曲之王”是谁？", option_a = "肖邦", option_b = "舒伯特", option_c = "莫扎特", option_d = "贝多芬"},
	[10028] = {id = 10028, question = "世界时装中心之首是位于哪一个城市？", option_a = "巴黎", option_b = "米兰", option_c = "伦敦", option_d = "东京"},
	[10029] = {id = 10029, question = "奔驰汽车原产于哪一个国家？", option_a = "美国", option_b = "日本", option_c = "德国", option_d = "英国"},
	[10030] = {id = 10030, question = "体育运动篮球最早起源于：", option_a = "美国", option_b = "中国", option_c = "英国", option_d = "法国"},
	[10031] = {id = 10031, question = "世界上最大的宫殿是：", option_a = "故宫", option_b = "白宫", option_c = "爱丽舍宫", option_d = "克里姆林宫"},
	[10032] = {id = 10032, question = "贫血主要原因是人体内缺少哪一种元素？", option_a = "钙", option_b = "铁", option_c = "碘", option_d = "氯化纳"},
	[10033] = {id = 10033, question = "人体最先老化的是哪一部位？", option_a = "牙齿", option_b = "心脏", option_c = "眼睛", option_d = "大脑"},
	[10034] = {id = 10034, question = "下列哪种花不属于并称的“花中四君子”之一？", option_a = "梅花", option_b = "兰花", option_c = "荷花", option_d = "菊花"},
	[10035] = {id = 10035, question = "世界四大洋中面积最小的是：", option_a = "太平洋", option_b = "大西洋", option_c = "印度洋", option_d = "北冰洋"},
	[10036] = {id = 10036, question = "下列海洋中哪一个是我国最大的海？", option_a = "南海", option_b = "东海", option_c = "黄海", option_d = "渤海"}
}

--跟随NPC
DataCampCake.data_follow_unit_length = 1
DataCampCake.data_follow_unit = {
	[74134] = {base_id = 74134, following_words = "这蛋糕太香了，肯定会有人来抢，要小心啊！|好东西当然要分享给大家，独乐了不如众乐乐~|哎，走慢些，老头子我可不是什么年轻人呐！|累死我了，看来必须得减肥了！"}
}
