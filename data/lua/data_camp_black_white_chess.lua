DataCampBlackWhiteChess = DataCampBlackWhiteChess or {}

DataCampBlackWhiteChess.data_grade_length = 30
DataCampBlackWhiteChess.data_grade={}
DataCampBlackWhiteChess.gradeData={}
DataCampBlackWhiteChess.gradeGetFunc={
	[1]=[[{1,"一星龙蛋",100,50,5,0,30,15,20}]],
	[2]=[[{2,"二星龙蛋",100,50,5,0,30,15,20}]],
	[3]=[[{3,"三星龙蛋",100,50,5,0,30,15,20}]],
	[4]=[[{4,"一星雏龙",100,40,5,0,30,15,20}]],
	[5]=[[{5,"二星雏龙",100,40,5,0,30,15,20}]],
	[6]=[[{6,"三星雏龙",100,40,5,0,30,15,20}]],
	[7]=[[{7,"一星幼龙",100,45,5,0,30,15,20}]],
	[8]=[[{8,"二星幼龙",100,45,5,0,30,15,20}]],
	[9]=[[{9,"三星幼龙",100,45,5,0,30,15,20}]],
	[10]=[[{10,"一星速龙",100,30,5,0,30,15,20}]],
	[11]=[[{11,"二星速龙",100,30,5,0,30,15,20}]],
	[12]=[[{12,"三星速龙",100,30,5,0,30,15,20}]],
	[13]=[[{13,"一星雷龙",100,25,5,0,30,15,20}]],
	[14]=[[{14,"二星雷龙",100,25,5,0,30,15,20}]],
	[15]=[[{15,"三星雷龙",100,25,5,0,30,15,20}]],
	[16]=[[{16,"一星剑龙",100,20,5,0,30,15,20}]],
	[17]=[[{17,"二星剑龙",100,20,5,0,30,15,20}]],
	[18]=[[{18,"三星剑龙",100,20,5,0,30,15,20}]],
	[19]=[[{19,"一星蛟龙",100,15,5,0,30,15,20}]],
	[20]=[[{20,"二星蛟龙",100,15,5,0,30,15,20}]],
	[21]=[[{21,"三星蛟龙",100,15,5,0,30,15,20}]],
	[22]=[[{22,"一星青龙",100,10,5,0,30,15,20}]],
	[23]=[[{23,"二星青龙",100,10,5,0,30,15,20}]],
	[24]=[[{24,"三星青龙",100,10,5,0,30,15,20}]],
	[25]=[[{25,"一星烛龙",200,10,5,0,30,15,20}]],
	[26]=[[{26,"二星烛龙",200,10,5,0,30,15,20}]],
	[27]=[[{27,"三星烛龙",200,10,5,0,30,15,20}]],
	[28]=[[{28,"星辰应龙",300,10,5,0,30,15,20}]],
	[29]=[[{29,"星辰神龙",300,10,5,0,30,15,20}]],
	[30]=[[{30,"星辰天龙",300,10,5,0,30,15,20}]],}
local mt = {}
	mt.__index = function(_table, index)
	if DataCampBlackWhiteChess.gradeData[index] then return DataCampBlackWhiteChess.gradeData[index] end
	local base = loadstring(string.format('return %s',DataCampBlackWhiteChess.gradeGetFunc[index]))() if not base then return end
	DataCampBlackWhiteChess.gradeData[index]={
		grade=base[1],
		name=base[2],
		next_grade=base[3],
		win=base[4],
		loss=base[5],
		draw=base[6],
		win_flower=base[7],
		loss_flower=base[8],
		draw_flower=base[9]
	}
	return DataCampBlackWhiteChess.gradeData[index]
end
setmetatable(DataCampBlackWhiteChess.data_grade, mt)

DataCampBlackWhiteChess.data_get_msg_length = 6
DataCampBlackWhiteChess.data_get_msg={}
DataCampBlackWhiteChess.get_msgData={}
DataCampBlackWhiteChess.get_msgGetFunc={
	[1]=[[{"催促一下{face_1,7}"}]],
	[2]=[[{"不好意思{face_1,21}"}]],
	[3]=[[{"为你点赞{face_1,56}"}]],
	[4]=[[{"吃了个鲸{face_1,108}"}]],
	[5]=[[{"偷偷求饶{face_1,11}"}]],
	[6]=[[{"霸气炫耀{face_1,25}"}]],}
local mt = {}
	mt.__index = function(_table, index)
	if DataCampBlackWhiteChess.get_msgData[index] then return DataCampBlackWhiteChess.get_msgData[index] end
	local base = loadstring(string.format('return %s',DataCampBlackWhiteChess.get_msgGetFunc[index]))() if not base then return end
	DataCampBlackWhiteChess.get_msgData[index]={
		message=base[1]
	}
	return DataCampBlackWhiteChess.get_msgData[index]
end
setmetatable(DataCampBlackWhiteChess.data_get_msg, mt)
