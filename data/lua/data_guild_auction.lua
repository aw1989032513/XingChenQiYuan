DataGuildAuction = DataGuildAuction or {}

DataGuildAuction.data_list_length = 120
DataGuildAuction.data_list={}
DataGuildAuction.listData={}
DataGuildAuction.listGetFunc={
	[60000]=[[{35,5,1,3,5,2,148}]],
	[60001]=[[{35,5,1,3,5,2,149}]],
	[60002]=[[{35,5,1,3,5,2,147}]],
	[60003]=[[{35,5,1,3,5,2,150}]],
	[60004]=[[{250,10,2,5,10,7,148}]],
	[60005]=[[{250,10,2,5,10,7,149}]],
	[60006]=[[{250,10,2,5,10,7,147}]],
	[60007]=[[{250,10,2,5,10,7,150}]],
	[60008]=[[{2500,100,2,5,10,8,148}]],
	[60009]=[[{2500,100,2,5,10,8,149}]],
	[60010]=[[{2500,100,2,5,10,8,147}]],
	[60011]=[[{2500,100,2,5,10,8,150}]],
	[60100]=[[{35,5,1,3,5,2,148}]],
	[60101]=[[{35,5,1,3,5,2,149}]],
	[60102]=[[{35,5,1,3,5,2,147}]],
	[60103]=[[{35,5,1,3,5,2,150}]],
	[60104]=[[{250,10,2,5,10,7,148}]],
	[60105]=[[{250,10,2,5,10,7,149}]],
	[60106]=[[{250,10,2,5,10,7,147}]],
	[60107]=[[{250,10,2,5,10,7,150}]],
	[60108]=[[{2500,100,2,5,10,8,148}]],
	[60109]=[[{2500,100,2,5,10,8,149}]],
	[60110]=[[{2500,100,2,5,10,8,147}]],
	[60111]=[[{2500,100,2,5,10,8,150}]],
	[60200]=[[{35,5,1,3,5,2,148}]],
	[60201]=[[{35,5,1,3,5,2,149}]],
	[60202]=[[{35,5,1,3,5,2,147}]],
	[60203]=[[{35,5,1,3,5,2,150}]],
	[60204]=[[{250,10,2,5,10,7,148}]],
	[60205]=[[{250,10,2,5,10,7,149}]],
	[60206]=[[{250,10,2,5,10,7,147}]],
	[60207]=[[{250,10,2,5,10,7,150}]],
	[60208]=[[{2500,100,2,5,10,8,148}]],
	[60209]=[[{2500,100,2,5,10,8,149}]],
	[60210]=[[{2500,100,2,5,10,8,147}]],
	[60211]=[[{2500,100,2,5,10,8,150}]],
	[60300]=[[{35,5,1,3,5,2,148}]],
	[60301]=[[{35,5,1,3,5,2,149}]],
	[60302]=[[{35,5,1,3,5,2,147}]],
	[60303]=[[{35,5,1,3,5,2,150}]],
	[60304]=[[{250,10,2,5,10,7,148}]],
	[60305]=[[{250,10,2,5,10,7,149}]],
	[60306]=[[{250,10,2,5,10,7,147}]],
	[60307]=[[{250,10,2,5,10,7,150}]],
	[60308]=[[{2500,100,2,5,10,8,148}]],
	[60309]=[[{2500,100,2,5,10,8,149}]],
	[60310]=[[{2500,100,2,5,10,8,147}]],
	[60311]=[[{2500,100,2,5,10,8,150}]],
	[60400]=[[{35,5,1,3,5,2,148}]],
	[60401]=[[{35,5,1,3,5,2,149}]],
	[60402]=[[{35,5,1,3,5,2,147}]],
	[60403]=[[{35,5,1,3,5,2,150}]],
	[60404]=[[{250,10,2,5,10,7,148}]],
	[60405]=[[{250,10,2,5,10,7,149}]],
	[60406]=[[{250,10,2,5,10,7,147}]],
	[60407]=[[{250,10,2,5,10,7,150}]],
	[60408]=[[{2500,100,2,5,10,8,148}]],
	[60409]=[[{2500,100,2,5,10,8,149}]],
	[60410]=[[{2500,100,2,5,10,8,147}]],
	[60411]=[[{2500,100,2,5,10,8,150}]],
	[60500]=[[{35,5,1,3,5,2,148}]],
	[60501]=[[{35,5,1,3,5,2,149}]],
	[60502]=[[{35,5,1,3,5,2,147}]],
	[60503]=[[{35,5,1,3,5,2,150}]],
	[60504]=[[{250,10,2,5,10,7,148}]],
	[60505]=[[{250,10,2,5,10,7,149}]],
	[60506]=[[{250,10,2,5,10,7,147}]],
	[60507]=[[{250,10,2,5,10,7,150}]],
	[60508]=[[{2500,100,2,5,10,8,148}]],
	[60509]=[[{2500,100,2,5,10,8,149}]],
	[60510]=[[{2500,100,2,5,10,8,147}]],
	[60511]=[[{2500,100,2,5,10,8,150}]],
	[60600]=[[{350,10,2,5,10,7,148}]],
	[60601]=[[{350,10,2,5,10,7,149}]],
	[60602]=[[{350,10,2,5,10,7,147}]],
	[60603]=[[{350,10,2,5,10,7,150}]],
	[60604]=[[{3000,100,2,5,10,8,148}]],
	[60605]=[[{3000,100,2,5,10,8,149}]],
	[60606]=[[{3000,100,2,5,10,8,147}]],
	[60607]=[[{3000,100,2,5,10,8,150}]],
	[60608]=[[{5000,100,2,5,10,9,148}]],
	[60609]=[[{5000,100,2,5,10,9,149}]],
	[60610]=[[{5000,100,2,5,10,9,147}]],
	[60611]=[[{5000,100,2,5,10,9,150}]],
	[60700]=[[{350,10,2,5,10,7,148}]],
	[60701]=[[{350,10,2,5,10,7,149}]],
	[60702]=[[{350,10,2,5,10,7,147}]],
	[60703]=[[{350,10,2,5,10,7,150}]],
	[60704]=[[{3000,100,2,5,10,8,148}]],
	[60705]=[[{3000,100,2,5,10,8,149}]],
	[60706]=[[{3000,100,2,5,10,8,147}]],
	[60707]=[[{3000,100,2,5,10,8,150}]],
	[60708]=[[{5000,100,2,5,10,9,148}]],
	[60709]=[[{5000,100,2,5,10,9,149}]],
	[60710]=[[{5000,100,2,5,10,9,147}]],
	[60711]=[[{5000,100,2,5,10,9,150}]],
	[60800]=[[{350,10,2,5,10,7,148}]],
	[60801]=[[{350,10,2,5,10,7,149}]],
	[60802]=[[{350,10,2,5,10,7,147}]],
	[60803]=[[{350,10,2,5,10,7,150}]],
	[60804]=[[{3000,100,2,5,10,8,148}]],
	[60805]=[[{3000,100,2,5,10,8,149}]],
	[60806]=[[{3000,100,2,5,10,8,147}]],
	[60807]=[[{3000,100,2,5,10,8,150}]],
	[60808]=[[{5000,100,2,5,10,9,148}]],
	[60809]=[[{5000,100,2,5,10,9,149}]],
	[60810]=[[{5000,100,2,5,10,9,147}]],
	[60811]=[[{5000,100,2,5,10,9,150}]],
	[60900]=[[{350,10,2,5,10,7,148}]],
	[60901]=[[{350,10,2,5,10,7,149}]],
	[60902]=[[{350,10,2,5,10,7,147}]],
	[60903]=[[{350,10,2,5,10,7,150}]],
	[60904]=[[{3000,100,2,5,10,8,148}]],
	[60905]=[[{3000,100,2,5,10,8,149}]],
	[60906]=[[{3000,100,2,5,10,8,147}]],
	[60907]=[[{3000,100,2,5,10,8,150}]],
	[60908]=[[{5000,100,2,5,10,9,148}]],
	[60909]=[[{5000,100,2,5,10,9,149}]],
	[60910]=[[{5000,100,2,5,10,9,147}]],
	[60911]=[[{5000,100,2,5,10,9,150}]],}
local mt = {}
	mt.__index = function(_table, index)
	if DataGuildAuction.listData[index] then return DataGuildAuction.listData[index] end
	local base = loadstring(string.format('return %s',DataGuildAuction.listGetFunc[index]))() if not base then return end
	DataGuildAuction.listData[index]={
		min_price=base[1],
		ascending_base=base[2],
		recommand_rate1=base[3],
		recommand_rate2=base[4],
		recommand_rate3=base[5],
		craft=base[6],
		item_type=base[7]
	}
	return DataGuildAuction.listData[index]
end
setmetatable(DataGuildAuction.data_list, mt)
