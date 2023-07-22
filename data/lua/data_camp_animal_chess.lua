DataCampAnimalChess = DataCampAnimalChess or {}

DataCampAnimalChess.data_grade_length = 30
DataCampAnimalChess.data_grade={}
DataCampAnimalChess.gradeData={}
DataCampAnimalChess.gradeGetFunc={
	[1]=[[{1,"一星波波",100,50,5,0,30,15,20}]],
	[2]=[[{2,"二星波波",100,50,5,0,30,15,20}]],
	[3]=[[{3,"三星波波",100,50,5,0,30,15,20}]],
	[4]=[[{4,"一星龙猫",100,40,5,0,30,15,20}]],
	[5]=[[{5,"二星龙猫",100,40,5,0,30,15,20}]],
	[6]=[[{6,"三星龙猫",100,40,5,0,30,15,20}]],
	[7]=[[{7,"一星雪狐",100,45,5,0,30,15,20}]],
	[8]=[[{8,"二星雪狐",100,45,5,0,30,15,20}]],
	[9]=[[{9,"三星雪狐",100,45,5,0,30,15,20}]],
	[10]=[[{10,"一星霜狼",100,30,5,0,30,15,20}]],
	[11]=[[{11,"二星霜狼",100,30,5,0,30,15,20}]],
	[12]=[[{12,"三星霜狼",100,30,5,0,30,15,20}]],
	[13]=[[{13,"一星老虎",100,25,5,0,30,15,20}]],
	[14]=[[{14,"二星老虎",100,25,5,0,30,15,20}]],
	[15]=[[{15,"三星老虎",100,25,5,0,30,15,20}]],
	[16]=[[{16,"一星剑灵",100,20,5,0,30,15,20}]],
	[17]=[[{17,"二星剑灵",100,20,5,0,30,15,20}]],
	[18]=[[{18,"三星剑灵",100,20,5,0,30,15,20}]],
	[19]=[[{19,"一星伯爵",100,15,5,0,30,15,20}]],
	[20]=[[{20,"二星伯爵",100,15,5,0,30,15,20}]],
	[21]=[[{21,"三星伯爵",100,15,5,0,30,15,20}]],
	[22]=[[{22,"一星骑士",100,10,5,0,30,15,20}]],
	[23]=[[{23,"二星骑士",100,10,5,0,30,15,20}]],
	[24]=[[{24,"三星骑士",100,10,5,0,30,15,20}]],
	[25]=[[{25,"一星龙魂",200,10,5,0,30,15,20}]],
	[26]=[[{26,"二星龙魂",200,10,5,0,30,15,20}]],
	[27]=[[{27,"三星龙魂",200,10,5,0,30,15,20}]],
	[28]=[[{28,"一星剑心",300,10,5,0,30,15,20}]],
	[29]=[[{29,"二星剑心",300,10,5,0,30,15,20}]],
	[30]=[[{30,"三星剑心",300,10,5,0,30,15,20}]],}
local mt = {}
	mt.__index = function(_table, index)
	if DataCampAnimalChess.gradeData[index] then return DataCampAnimalChess.gradeData[index] end
	local base = loadstring(string.format('return %s',DataCampAnimalChess.gradeGetFunc[index]))() if not base then return end
	DataCampAnimalChess.gradeData[index]={
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
	return DataCampAnimalChess.gradeData[index]
end
setmetatable(DataCampAnimalChess.data_grade, mt)
