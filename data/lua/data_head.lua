DataHead = DataHead or {}

DataHead.data_res_config_length = 106
DataHead.data_res_config={}
DataHead.res_configData={}
DataHead.res_configGetFunc={
	["2_10000"]=[[{2,10000,1,"01",0,0,"10000",0,9,"",0,0,{},""}]],
	["2_10001"]=[[{2,10001,1,"02",0,0,"10001",0,16,"",0,0,{},""}]],
	["2_10002"]=[[{2,10002,1,"03",0,0,"10002",0,16,"",0,0,{},""}]],
	["2_10003"]=[[{2,10003,1,"04",0,0,"10003",0,16,"",0,0,{},""}]],
	["2_10004"]=[[{2,10004,1,"05",0,0,"10004",0,16,"",0,0,{},""}]],
	["2_10005"]=[[{2,10005,1,"06",0,0,"10005",0,9,"",0,0,{},""}]],
	["2_10006"]=[[{2,10006,1,"07",0,0,"10006",0,9,"",0,0,{},""}]],
	["2_10007"]=[[{2,10007,1,"08",0,0,"10007",0,16,"",0,0,{},""}]],
	["2_10008"]=[[{2,10008,1,"09",0,1001,"10008",0,0,"",0,0,{},""}]],
	["2_10009"]=[[{2,10009,1,"10",0,1001,"10009",0,0,"",0,0,{},""}]],
	["2_10010"]=[[{2,10010,1,"11",0,1001,"10010",0,9,"",0,0,{},""}]],
	["2_10011"]=[[{2,10011,1,"12",0,1002,"10011",0,8,"",0,0,{},""}]],
	["2_10012"]=[[{2,10012,1,"13",0,1002,"10012",0,8,"",0,0,{},""}]],
	["2_10013"]=[[{2,10013,1,"14",0,1002,"10013",0,8,"",0,0,{},""}]],
	["2_11000"]=[[{2,11000,0,"01",0,0,"11000",0,0,"",0,0,{},""}]],
	["2_11001"]=[[{2,11001,0,"02",0,0,"11001",0,0,"",0,0,{},""}]],
	["2_11002"]=[[{2,11002,0,"03",0,0,"11002",0,0,"",0,0,{},""}]],
	["2_11003"]=[[{2,11003,0,"04",0,0,"11003",0,0,"",0,0,{},""}]],
	["2_11004"]=[[{2,11004,0,"05",0,0,"11004",0,0,"",0,0,{},""}]],
	["2_11005"]=[[{2,11005,0,"06",0,0,"11005",0,0,"",0,0,{},""}]],
	["2_11006"]=[[{2,11006,0,"07",0,0,"11006",0,0,"",0,0,{},""}]],
	["2_11007"]=[[{2,11007,0,"08",0,1001,"11007",0,4,"",0,0,{},""}]],
	["2_11008"]=[[{2,11008,0,"09",0,1001,"11008",0,4,"",0,0,{},""}]],
	["2_11009"]=[[{2,11009,0,"10",0,1001,"11009",7,4,"",0,0,{},""}]],
	["2_11010"]=[[{2,11010,0,"11",0,1002,"11010",0,3,"",0,0,{},""}]],
	["2_11011"]=[[{2,11011,0,"12",0,1002,"11011",0,3,"",0,0,{},""}]],
	["2_11012"]=[[{2,11012,0,"13",0,1002,"11012",0,3,"",0,0,{},""}]],
	["1_20000"]=[[{1,20000,1,"01",0,0,"20000",34,0,"",0,0,{},""}]],
	["1_20001"]=[[{1,20001,1,"02",0,0,"20001",41,0,"",0,0,{},""}]],
	["1_20002"]=[[{1,20002,1,"03",0,0,"20002",16,7,"",0,0,{},""}]],
	["1_20003"]=[[{1,20003,1,"04",0,0,"20003",16,7,"",0,0,{},""}]],
	["1_20004"]=[[{1,20004,1,"05",0,0,"20004",34,0,"",0,0,{},""}]],
	["1_20005"]=[[{1,20005,1,"06",0,0,"20005",29,0,"",0,0,{},""}]],
	["1_20006"]=[[{1,20006,1,"07",0,0,"20006",45,0,"",0,0,{},""}]],
	["1_20007"]=[[{1,20007,1,"08",0,0,"20007",45,0,"",0,0,{},""}]],
	["1_20008"]=[[{1,20008,1,"09",0,0,"20008",32,0,"",0,0,{},""}]],
	["1_20009"]=[[{1,20009,1,"10",0,0,"20009",32,0,"",0,0,{},""}]],
	["1_20010"]=[[{1,20010,1,"11",0,0,"20010",23,8,"",0,0,{},""}]],
	["1_20011"]=[[{1,20011,1,"12",0,1001,"20011",17,3,"",0,0,{},""}]],
	["1_20012"]=[[{1,20012,1,"13",0,1001,"20012",22,4,"",0,0,{},""}]],
	["1_20013"]=[[{1,20013,1,"14",0,1001,"20013",32,0,"",0,0,{},""}]],
	["1_20014"]=[[{1,20014,1,"15",0,1002,"20014",23,0,"",0,0,{},""}]],
	["1_20015"]=[[{1,20015,1,"16",0,1002,"20015",23,0,"",0,0,{},""}]],
	["1_20016"]=[[{1,20016,1,"17",0,1002,"20016",23,6,"",0,0,{},""}]],
	["1_21000"]=[[{1,21000,0,"01",0,0,"21000",33,0,"21500",21,17,{},""}]],
	["1_21001"]=[[{1,21001,0,"02",0,0,"21001",22,0,"21501",52,88,{},""}]],
	["1_21002"]=[[{1,21002,0,"03",0,0,"21002",20,0,"21502",129,0,{},""}]],
	["1_21003"]=[[{1,21003,0,"04",0,0,"21003",25,0,"21503",55,64,{},""}]],
	["1_21004"]=[[{1,21004,0,"05",0,0,"21004",33,0,"21504",120,99,{},""}]],
	["1_21005"]=[[{1,21005,0,"06",0,0,"21005",34,0,"21505",47,71,{},""}]],
	["1_21006"]=[[{1,21006,0,"07",0,0,"21006",20,0,"21506",54,46,{},""}]],
	["1_21007"]=[[{1,21007,0,"08",0,0,"21007",24,0,"21507",61,64,{},""}]],
	["1_21008"]=[[{1,21008,0,"09",0,1001,"21008",35,0,"21508",120,97,{},""}]],
	["1_21009"]=[[{1,21009,0,"10",0,1001,"21009",32,2,"21509",33,81,{},""}]],
	["1_21010"]=[[{1,21010,0,"11",0,1001,"21010",34,3,"21510",43,50,{},""}]],
	["1_21011"]=[[{1,21011,0,"12",0,1002,"21011",9,0,"",0,0,{},""}]],
	["1_21012"]=[[{1,21012,0,"13",0,1002,"21012",28,0,"",0,0,{},""}]],
	["1_21013"]=[[{1,21013,0,"14",0,1002,"21013",27,0,"21511",122,104,{},""}]],
	["4_30000"]=[[{4,30000,1,"01",100,0,"30000",52,71,"",0,0,{},""}]],
	["4_30001"]=[[{4,30001,1,"02",100,0,"30001",52,71,"",0,0,{},""}]],
	["4_30002"]=[[{4,30002,1,"03",200,0,"30002",0,95,"",0,0,{},""}]],
	["4_30003"]=[[{4,30003,1,"04",100,0,"30003",57,73,"",0,0,{},""}]],
	["4_30004"]=[[{4,30004,1,"05",0,0,"30004",78,95,"",0,0,{},""}]],
	["4_30005"]=[[{4,30005,1,"06",200,0,"30005",51,102,"",0,0,{},""}]],
	["4_30006"]=[[{4,30006,1,"07",0,0,"30006",86,122,"",0,0,{},""}]],
	["4_30007"]=[[{4,30007,1,"08",200,0,"30007",14,4,"",0,0,{},""}]],
	["4_30008"]=[[{4,30008,1,"09",200,1001,"30008",19,58,"",0,0,{},""}]],
	["4_30009"]=[[{4,30009,1,"10",200,1001,"30009",33,0,"",0,0,{},""}]],
	["4_30010"]=[[{4,30010,1,"11",200,1001,"30010",44,129,"",0,0,{},""}]],
	["4_30011"]=[[{4,30011,1,"12",100,1001,"30011",80,115,"",0,0,{},""}]],
	["4_30012"]=[[{4,30012,1,"13",100,1002,"30012",22,0,"",0,0,{},""}]],
	["4_30013"]=[[{4,30013,1,"14",100,1002,"30013",40,66,"",0,0,{},""}]],
	["4_30014"]=[[{4,30014,1,"15",100,1002,"30014",44,27,"",0,0,{},""}]],
	["4_31000"]=[[{4,31000,0,"01",200,0,"31000",20,0,"",0,0,{},""}]],
	["4_31001"]=[[{4,31001,0,"02",200,0,"31001",20,0,"",0,0,{},""}]],
	["4_31002"]=[[{4,31002,0,"03",200,0,"31002",0,0,"",0,0,{},""}]],
	["4_31003"]=[[{4,31003,0,"04",0,0,"31003",101,11,"",0,0,{},""}]],
	["4_31004"]=[[{4,31004,0,"05",0,0,"31004",23,0,"",0,0,{},""}]],
	["4_31005"]=[[{4,31005,0,"06",100,0,"31005",23,0,"",0,0,{},""}]],
	["4_31006"]=[[{4,31006,0,"07",100,0,"31006",44,80,"",0,0,{},""}]],
	["4_31007"]=[[{4,31007,0,"08",100,0,"31007",44,80,"",0,0,{},""}]],
	["4_31008"]=[[{4,31008,0,"09",200,1001,"31008",15,0,"",0,0,{},""}]],
	["4_31009"]=[[{4,31009,0,"10",100,1001,"31009",31,0,"",0,0,{},""}]],
	["4_31010"]=[[{4,31010,0,"11",200,1001,"31010",35,0,"",0,0,{},""}]],
	["4_31011"]=[[{4,31011,0,"12",200,1001,"31011",75,0,"",0,0,{},""}]],
	["4_31012"]=[[{4,31012,0,"13",100,1002,"31012",5,132,"",0,0,{},""}]],
	["4_31013"]=[[{4,31013,0,"14",100,1002,"31013",32,21,"",0,0,{},""}]],
	["4_31014"]=[[{4,31014,0,"15",100,1002,"31014",40,1,"",0,0,{},""}]],
	["4_31015"]=[[{4,31015,0,"16",100,1002,"31015",44,72,"",0,0,{},""}]],
	["4_31016"]=[[{4,31016,0,"17",100,1002,"31016",128,59,"31500",0,0,{},""}]],
	["3_40000"]=[[{3,40000,2,"01",0,0,"40000",0,0,"",0,0,{},""}]],
	["3_40001"]=[[{3,40001,2,"02",0,0,"40001",0,0,"",0,0,{},""}]],
	["3_40002"]=[[{3,40002,2,"03",0,0,"40002",0,0,"",0,0,{},""}]],
	["3_40003"]=[[{3,40003,2,"04",0,0,"40003",0,0,"",0,0,{},""}]],
	["3_40004"]=[[{3,40004,2,"05",0,0,"40004",0,0,"",0,0,{},""}]],
	["3_40005"]=[[{3,40005,2,"06",0,0,"40005",0,0,"",0,0,{},""}]],
	["3_40006"]=[[{3,40006,2,"07",0,0,"40006",0,0,"",0,0,{},""}]],
	["3_40007"]=[[{3,40007,2,"08",0,0,"40007",0,0,"",0,0,{},""}]],
	["3_40008"]=[[{3,40008,2,"09",0,0,"40008",0,0,"",0,0,{},""}]],
	["3_40009"]=[[{3,40009,2,"10",0,0,"40009",0,0,"",0,0,{},""}]],
	["3_40010"]=[[{3,40010,2,"11",0,0,"40010",0,0,"",0,0,{},""}]],
	["3_40011"]=[[{3,40011,2,"12",0,1001,"40011",0,0,"",0,0,{},""}]],
	["3_40012"]=[[{3,40012,2,"13",0,1001,"40012",0,0,"",0,0,{},""}]],
	["3_40013"]=[[{3,40013,2,"14",0,1001,"40013",0,0,"",0,0,{},""}]],
	["3_40014"]=[[{3,40014,2,"15",0,1002,"40014",0,0,"",0,0,{},""}]],
	["3_40015"]=[[{3,40015,2,"16",0,1002,"40015",0,0,"",0,0,{},""}]],}
local mt = {}
	mt.__index = function(_table, index)
	if DataHead.res_configData[index] then return DataHead.res_configData[index] end
	local base = loadstring(string.format('return %s',DataHead.res_configGetFunc[index]))() if not base then return end
	DataHead.res_configData[index]={
		type=base[1],
		num=base[2],
		sex=base[3],
		name=base[4],
		price=base[5],
		specail=base[6],
		res=base[7],
		res_x=base[8],
		res_y=base[9],
		res_ext=base[10],
		res_ext_x=base[11],
		res_ext_y=base[12],
		excess=base[13],
		accessway=base[14]
	}
	return DataHead.res_configData[index]
end
setmetatable(DataHead.data_res_config, mt)

DataHead.data_sex_length = 3
DataHead.data_sex = {
	[0] = {{2, 11000}, {2, 11001}, {2, 11002}, {2, 11003}, {2, 11004}, {2, 11005}, {2, 11006}, {2, 11007}, {2, 11008}, {2, 11009}, {2, 11010}, {2, 11011}, {2, 11012}, {1, 21000}, {1, 21001}, {1, 21002}, {1, 21003}, {1, 21004}, {1, 21005}, {1, 21006}, {1, 21007}, {1, 21008}, {1, 21009}, {1, 21010}, {1, 21011}, {1, 21012}, {1, 21013}, {4, 31000}, {4, 31001}, {4, 31002}, {4, 31003}, {4, 31004}, {4, 31005}, {4, 31006}, {4, 31007}, {4, 31008}, {4, 31009}, {4, 31010}, {4, 31011}, {4, 31012}, {4, 31013}, {4, 31014}, {4, 31015}, {4, 31016}},
	[1] = {{2, 10000}, {2, 10001}, {2, 10002}, {2, 10003}, {2, 10004}, {2, 10005}, {2, 10006}, {2, 10007}, {2, 10008}, {2, 10009}, {2, 10010}, {2, 10011}, {2, 10012}, {2, 10013}, {1, 20000}, {1, 20001}, {1, 20002}, {1, 20003}, {1, 20004}, {1, 20005}, {1, 20006}, {1, 20007}, {1, 20008}, {1, 20009}, {1, 20010}, {1, 20011}, {1, 20012}, {1, 20013}, {1, 20014}, {1, 20015}, {1, 20016}, {4, 30000}, {4, 30001}, {4, 30002}, {4, 30003}, {4, 30004}, {4, 30005}, {4, 30006}, {4, 30007}, {4, 30008}, {4, 30009}, {4, 30010}, {4, 30011}, {4, 30012}, {4, 30013}, {4, 30014}},
	[2] = {{5, 50000}, {5, 50001}, {5, 50002}, {5, 50003}, {5, 50004}, {5, 50005}, {5, 50006}, {5, 50007}, {5, 50008}, {5, 50009}, {5, 50010}, {5, 50011}, {5, 50012}, {5, 50013}, {5, 50014}, {5, 50015}, {5, 50016}, {5, 50017}, {5, 50018}, {5, 50019}, {5, 50020}, {5, 50021}, {5, 50022}, {5, 50023}, {5, 50024}, {5, 50025}, {5, 50026}, {5, 50027}, {5, 50028}, {5, 50029}, {5, 50030}, {6, 55000}, {6, 55001}, {6, 55002}, {6, 55003}, {6, 55004}, {6, 55005}, {6, 55006}, {6, 55007}, {6, 55008}, {6, 55009}, {6, 55010}, {6, 55011}, {6, 55012}, {6, 55013}, {6, 55014}, {6, 55015}, {6, 55016}, {6, 55017}, {6, 55018}, {6, 55019}, {6, 55020}, {6, 55021}, {6, 55022}, {6, 55023}, {6, 55024}, {6, 55025}, {6, 55026}, {6, 55027}, {6, 55028}, {6, 55029}, {6, 55030}, {6, 55031}, {6, 55032}, {6, 55033}, {6, 55034}, {6, 55035}, {6, 55036}, {6, 55037}, {6, 55038}, {6, 55039}, {6, 55040}, {6, 55041}, {6, 55042}, {6, 55043}, {6, 55044}, {6, 55045}, {6, 55046}, {6, 55047}, {6, 55048}, {6, 55049}, {6, 55050}, {6, 55051}, {6, 55052}, {6, 55053}, {6, 55054}, {6, 55055}, {6, 55056}, {6, 55057}, {6, 55058}, {6, 55059}, {6, 55060}, {6, 55061}, {6, 55062}, {6, 55063}, {6, 55064}, {6, 55065}, {6, 55066}, {6, 55067}, {6, 55068}, {6, 55069}, {6, 55070}, {3, 40000}, {3, 40001}, {3, 40002}, {3, 40003}, {3, 40004}, {3, 40005}, {3, 40006}, {3, 40007}, {3, 40008}, {3, 40009}, {3, 40010}, {3, 40011}, {3, 40012}, {3, 40013}, {3, 40014}, {3, 40015}}
}

DataHead.data_photoframe_length = 102
DataHead.data_photoframe={}
DataHead.photoframeData={}
DataHead.photoframeGetFunc={
	["5_50000"]=[[{5,50000,2,"彩虹",{{22428,1}},0,"50006",0,0,"",0,0,30,{55000,55001},"<color='#ffff00'>彩虹冒险</color>",4,1}]],
	["5_50001"]=[[{5,50001,2,"玫瑰",{{22423,1}},0,"50001",0,0,"",0,0,30,{55002,55003},"<color='#ffff00'>各类活动</color>",0,0}]],
	["5_50002"]=[[{5,50002,2,"笑脸",{{22423,1}},0,"50002",0,0,"",0,0,30,{55004,55005},"<color='#ffff00'>各类活动</color>",0,0}]],
	["5_50003"]=[[{5,50003,2,"狗狗",{{22423,1}},0,"50003",0,0,"",0,0,30,{55006,55007,55008},"<color='#ffff00'>各类活动</color>",0,0}]],
	["5_50004"]=[[{5,50004,2,"萌主",{{22425,1}},0,"50004",0,0,"",0,0,30,{55009,55023},"<color='#ffff00'>星光乐园</color>",1,1}]],
	["5_50005"]=[[{5,50005,2,"小草",{{22426,1}},0,"50005",0,0,"",0,0,30,{55010,55024,55025},"<color='#ffff00'>智慧闯关</color>",2,1}]],
	["5_50006"]=[[{5,50006,2,"猫耳朵",{{22427,1}},0,"50006",0,0,"",0,0,30,{55011,55026},"<color='#ffff00'>精灵幻境</color>",3,1}]],
	["5_50007"]=[[{5,50007,2,"单身狗",{{22423,1}},0,"50004",0,0,"",0,0,30,{55012},"<color='#ffff00'>各类活动</color>",0,0}]],
	["5_50008"]=[[{5,50008,2,"单身喵",{{22423,1}},0,"50007",0,0,"",0,0,30,{55013},"<color='#ffff00'>各类活动</color>",0,0}]],
	["5_50009"]=[[{5,50009,2,"男神",{{22423,1}},0,"50006",0,0,"",0,0,30,{55014,55015},"<color='#ffff00'>各类活动</color>",0,0}]],
	["5_50010"]=[[{5,50010,2,"女神",{{22423,1}},0,"50007",0,0,"",0,0,30,{55016,55017},"<color='#ffff00'>各类活动</color>",0,0}]],
	["5_50011"]=[[{5,50011,2,"求妹子",{{22423,1}},0,"50007",0,0,"",0,0,30,{55018,55019},"<color='#ffff00'>各类活动</color>",0,0}]],
	["5_50012"]=[[{5,50012,2,"撒狗粮",{{22423,1}},0,"50005",0,0,"",0,0,30,{55020,55021},"<color='#ffff00'>各类活动</color>",0,0}]],
	["5_50013"]=[[{5,50013,2,"蛋壳",{{22424,1}},0,"50002",0,0,"",0,0,30,{55022},"<color='#ffff00'>幸运孵蛋</color>",5,1}]],
	["5_50014"]=[[{5,50014,2,"熊喵",{{22429,1}},0,"50008",0,0,"",0,0,30,{55027,55028},"<color='#ffff00'>各类活动</color>",6,1}]],
	["5_50015"]=[[{5,50015,2,"雪娃",{{22433,1}},0,"50005",0,0,"",0,0,30,{55029,55030,55031},"<color='#ffff00'>各类活动</color>",7,1}]],
	["5_50016"]=[[{5,50016,2,"吉祥如意",{{22434,1}},0,"50001",0,0,"",0,0,30,{55032,55033,55034},"<color='#ffff00'>各类活动</color>",8,1}]],
	["5_50017"]=[[{5,50017,2,"深海魔鲸",{{22436,1}},0,"50006",0,0,"",0,0,30,{55035,55036,55037},"<color='#ffff00'>各类活动</color>",9,1}]],
	["5_50018"]=[[{5,50018,2,"心心相印",{{70288,1}},0,"50009",0,0,"",0,0,30,{55038,55039,55040},"<color='#ffff00'>各类活动</color>",10,1}]],
	["5_50019"]=[[{5,50019,2,"红星照耀",{{70377,1}},0,"50010",0,0,"",0,0,30,{55041,55042,55043},"<color='#ffff00'>各类活动</color>",11,1}]],
	["5_50020"]=[[{5,50020,2,"璀璨水晶",{{70486,1}},0,"50011",0,0,"",0,0,90,{55044,55045,55046},"<color='#ffff00'>各类活动</color>",12,1}]],
	["5_50021"]=[[{5,50021,2,"圆蛋超人",{{70558,1}},0,"50012",0,0,"",0,0,30,{55047,55048,55049},"<color='#ffff00'>各类活动</color>",13,1}]],
	["5_50022"]=[[{5,50022,2,"金猪宝宝",{{70630,1}},0,"50013",0,0,"",0,0,30,{55050,55051,55052},"<color='#ffff00'>各类活动</color>",14,1}]],
	["5_50023"]=[[{5,50023,2,"绿树林荫",{{70896,1}},0,"50014",0,0,"",0,0,30,{55053,55054,55055},"<color='#ffff00'>各类活动</color>",15,1}]],
	["5_50024"]=[[{5,50024,2,"奋笔疾书",{{70944,1}},0,"50015",0,0,"",0,0,30,{55056,55057},"<color='#ffff00'>各类活动</color>",16,1}]],
	["5_50025"]=[[{5,50025,2,"余音袅袅",{{71064,1}},0,"50016",0,0,"",0,0,30,{55058},"<color='#ffff00'>各类活动</color>",17,1}]],
	["5_50026"]=[[{5,50026,2,"欢天喜地",{{71144,1}},0,"50017",0,0,"",0,0,30,{55059,55060},"<color='#ffff00'>各类活动</color>",18,1}]],
	["5_50027"]=[[{5,50027,2,"冰蓝之心",{{71254,1}},0,"50018",0,0,"",0,0,30,{55063,55064},"<color='#ffff00'>各类活动</color>",19,1}]],
	["5_50028"]=[[{5,50028,2,"小恶魔",{{71254,1}},0,"50019",0,0,"",0,0,30,{55061,55062},"<color='#ffff00'>各类活动</color>",20,1}]],
	["5_50029"]=[[{5,50029,2,"小兔纸",{{71335,1}},0,"50020",0,0,"",0,0,30,{55065,55066,55067},"<color='#ffff00'>各类活动</color>",21,1}]],
	["5_50030"]=[[{5,50030,2,"金鼠迎春",{{71392,1}},0,"50021",0,0,"",0,0,30,{55068,55069,55070},"<color='#ffff00'>各类活动</color>",22,1}]],
	["6_55000"]=[[{6,55000,2,"这是头像框",{},0,"55000",7,9,"",0,0,0,{},"",0,0}]],
	["6_55001"]=[[{6,55001,2,"这是头像框",{},0,"55001",82,96,"",0,0,0,{},"",0,0}]],
	["6_55002"]=[[{6,55002,2,"这是头像框",{},0,"55002",15,75,"",0,0,0,{},"",0,0}]],
	["6_55003"]=[[{6,55003,2,"这是头像框",{},0,"55003",72,10,"",0,0,0,{},"",0,0}]],
	["6_55004"]=[[{6,55004,2,"这是头像框",{},0,"55004",69,9,"",0,0,0,{},"",0,0}]],
	["6_55005"]=[[{6,55005,2,"这是头像框",{},0,"55005",12,78,"",0,0,0,{},"",0,0}]],
	["6_55006"]=[[{6,55006,2,"这是头像框",{},0,"55006",76,84,"",0,0,0,{},"",0,0}]],
	["6_55007"]=[[{6,55007,2,"这是头像框",{},0,"55007",26,88,"",0,0,0,{},"",0,0}]],
	["6_55008"]=[[{6,55008,2,"这是头像框",{},0,"55008",24,7,"",0,0,0,{},"",0,0}]],
	["6_55009"]=[[{6,55009,2,"这是头像框",{},0,"55009",79,9,"",0,0,0,{},"",0,0}]],
	["6_55010"]=[[{6,55010,2,"这是头像框",{},0,"55010",54,25,"",0,0,0,{},"",0,0}]],
	["6_55011"]=[[{6,55011,2,"这是头像框",{},0,"55011",73,0,"",0,0,0,{},"",0,0}]],
	["6_55012"]=[[{6,55012,2,"这是头像框",{},0,"55012",27,2,"",0,0,0,{},"",0,0}]],
	["6_55013"]=[[{6,55013,2,"这是头像框",{},0,"55013",27,1,"",0,0,0,{},"",0,0}]],
	["6_55014"]=[[{6,55014,2,"这是头像框",{},0,"55014",12,70,"",0,0,0,{},"",0,0}]],
	["6_55015"]=[[{6,55015,2,"这是头像框",{},0,"55015",72,11,"",0,0,0,{},"",0,0}]],
	["6_55016"]=[[{6,55016,2,"这是头像框",{},0,"55016",13,63,"",0,0,0,{},"",0,0}]],
	["6_55017"]=[[{6,55017,2,"这是头像框",{},0,"55017",77,10,"",0,0,0,{},"",0,0}]],
	["6_55018"]=[[{6,55018,2,"这是头像框",{},0,"55018",29,8,"",0,0,0,{},"",0,0}]],
	["6_55019"]=[[{6,55019,2,"这是头像框",{},0,"55019",72,71,"",0,0,0,{},"",0,0}]],
	["6_55020"]=[[{6,55020,2,"这是头像框",{},0,"55020",27,6,"",0,0,0,{},"",0,0}]],
	["6_55021"]=[[{6,55021,2,"这是头像框",{},0,"55021",86,78,"",0,0,0,{},"",0,0}]],
	["6_55022"]=[[{6,55022,2,"这是头像框",{},0,"55022",18,6,"",0,0,0,{},"",0,0}]],
	["6_55023"]=[[{6,55023,2,"这是头像框",{},0,"55023",31,9,"",0,0,0,{},"",0,0}]],
	["6_55024"]=[[{6,55024,2,"这是头像框",{},0,"55024",30,7,"",0,0,0,{},"",0,0}]],
	["6_55025"]=[[{6,55025,2,"这是头像框",{},0,"55025",84,7,"",0,0,0,{},"",0,0}]],
	["6_55026"]=[[{6,55026,2,"这是头像框",{},0,"55026",28,0,"",0,0,0,{},"",0,0}]],
	["6_55027"]=[[{6,55027,2,"这是头像框",{},0,"55027",11,73,"",0,0,0,{},"",0,0}]],
	["6_55028"]=[[{6,55028,2,"这是头像框",{},0,"55028",21,6,"",0,0,0,{},"",0,0}]],
	["6_55029"]=[[{6,55029,2,"这是头像框",{},0,"55029",14,38,"",0,0,0,{},"",0,0}]],
	["6_55030"]=[[{6,55030,2,"这是头像框",{},0,"55030",93,11,"",0,0,0,{},"",0,0}]],
	["6_55031"]=[[{6,55031,2,"这是头像框",{},0,"55031",11,55,"",0,0,0,{},"",0,0}]],
	["6_55032"]=[[{6,55032,2,"这是头像框",{},0,"55032",91,79,"",0,0,0,{},"",0,0}]],
	["6_55033"]=[[{6,55033,2,"这是头像框",{},0,"55033",15,74,"",0,0,0,{},"",0,0}]],
	["6_55034"]=[[{6,55034,2,"这是头像框",{},0,"55034",91,6,"",0,0,0,{},"",0,0}]],
	["6_55035"]=[[{6,55035,2,"这是头像框",{},0,"55035",18,15,"",0,0,0,{},"",0,0}]],
	["6_55036"]=[[{6,55036,2,"这是头像框",{},0,"55036",90,15,"",0,0,0,{},"",0,0}]],
	["6_55037"]=[[{6,55037,2,"这是头像框",{},0,"55037",3,73,"",0,0,0,{},"",0,0}]],
	["6_55038"]=[[{6,55038,2,"这是头像框",{},0,"55038",82,38,"",0,0,0,{},"",0,0}]],
	["6_55039"]=[[{6,55039,2,"这是头像框",{},0,"55039",83,11,"",0,0,0,{},"",0,0}]],
	["6_55040"]=[[{6,55040,2,"这是头像框",{},0,"55040",3,36,"",0,0,0,{},"",0,0}]],
	["6_55041"]=[[{6,55041,2,"这是头像框",{},0,"55041",8,81,"",0,0,0,{},"",0,0}]],
	["6_55042"]=[[{6,55042,2,"这是头像框",{},0,"55042",84,13,"",0,0,0,{},"",0,0}]],
	["6_55043"]=[[{6,55043,2,"这是头像框",{},0,"55043",65,73,"",0,0,0,{},"",0,0}]],
	["6_55044"]=[[{6,55044,2,"这是头像框",{},0,"55044",5,83,"",0,0,0,{},"",0,0}]],
	["6_55045"]=[[{6,55045,2,"这是头像框",{},0,"55045",91,91,"",0,0,0,{},"",0,0}]],
	["6_55046"]=[[{6,55046,2,"这是头像框",{},0,"55046",12,0,"",0,0,0,{},"",0,0}]],
	["6_55047"]=[[{6,55047,2,"这是头像框",{},0,"55047",26,104,"",0,0,0,{},"",0,0}]],
	["6_55048"]=[[{6,55048,2,"这是头像框",{},0,"55048",68,97,"",0,0,0,{},"",0,0}]],
	["6_55049"]=[[{6,55049,2,"这是头像框",{},0,"55049",20,3,"",0,0,0,{},"",0,0}]],
	["6_55050"]=[[{6,55050,2,"这是头像框",{},0,"55050",20,83,"",0,0,0,{},"",0,0}]],
	["6_55051"]=[[{6,55051,2,"这是头像框",{},0,"55051",91,90,"",0,0,0,{},"",0,0}]],
	["6_55052"]=[[{6,55052,2,"这是头像框",{},0,"55052",7,5,"",0,0,0,{},"",0,0}]],
	["6_55053"]=[[{6,55053,2,"这是头像框",{},0,"55053",3,83,"",0,0,0,{},"",0,0}]],
	["6_55054"]=[[{6,55054,2,"这是头像框",{},0,"55054",75,89,"",0,0,0,{},"",0,0}]],
	["6_55055"]=[[{6,55055,2,"这是头像框",{},0,"55055",8,5,"",0,0,0,{},"",0,0}]],
	["6_55056"]=[[{6,55056,2,"这是头像框",{},0,"55056",75,75,"",0,0,0,{},"",0,0}]],
	["6_55057"]=[[{6,55057,2,"这是头像框",{},0,"55057",12,15,"",0,0,0,{},"",0,0}]],
	["6_55058"]=[[{6,55058,2,"这是头像框",{},0,"55058",4,10,"",0,0,0,{},"",0,0}]],
	["6_55059"]=[[{6,55059,2,"这是头像框",{},0,"55059",68,65,"",0,0,0,{},"",0,0}]],
	["6_55060"]=[[{6,55060,2,"这是头像框",{},0,"55060",10,0,"",0,0,0,{},"",0,0}]],
	["6_55061"]=[[{6,55061,2,"这是头像框",{},0,"55061",8,2,"",0,0,0,{},"",0,0}]],
	["6_55062"]=[[{6,55062,2,"这是头像框",{},0,"55062",12,85,"",0,0,0,{},"",0,0}]],
	["6_55063"]=[[{6,55063,2,"这是头像框",{},0,"55063",15,48,"",0,0,0,{},"",0,0}]],
	["6_55064"]=[[{6,55064,2,"这是头像框",{},0,"55064",25,15,"",0,0,0,{},"",0,0}]],
	["6_55065"]=[[{6,55065,2,"这是头像框",{},0,"55065",15,0,"",0,0,0,{},"",0,0}]],
	["6_55066"]=[[{6,55066,2,"这是头像框",{},0,"55066",12,93,"",0,0,0,{},"",0,0}]],
	["6_55067"]=[[{6,55067,2,"这是头像框",{},0,"55067",92,93,"",0,0,0,{},"",0,0}]],
	["6_55068"]=[[{6,55068,2,"这是头像框",{},0,"55068",10,14,"",0,0,0,{},"",0,0}]],
	["6_55069"]=[[{6,55069,2,"这是头像框",{},0,"55069",5,88,"",0,0,0,{},"",0,0}]],
	["6_55070"]=[[{6,55070,2,"这是头像框",{},0,"55070",85,88,"",0,0,0,{},"",0,0}]],}
local mt = {}
	mt.__index = function(_table, index)
	if DataHead.photoframeData[index] then return DataHead.photoframeData[index] end
	local base = loadstring(string.format('return %s',DataHead.photoframeGetFunc[index]))() if not base then return end
	DataHead.photoframeData[index]={
		type=base[1],
		num=base[2],
		sex=base[3],
		name=base[4],
		cost=base[5],
		specail=base[6],
		res=base[7],
		res_x=base[8],
		res_y=base[9],
		res_ext=base[10],
		res_ext_x=base[11],
		res_ext_y=base[12],
		end_time=base[13],
		excess=base[14],
		accessway=base[15],
		position=base[16],
		active=base[17]
	}
	return DataHead.photoframeData[index]
end
setmetatable(DataHead.data_photoframe, mt)
