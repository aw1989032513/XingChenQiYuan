DataGodsDuel = DataGodsDuel or {}

DataGodsDuel.data_desc_length = 5
DataGodsDuel.data_desc = {
	{id = 1, name = "报名", desc = "1.服务器等级达到<color='#b031d5'>75级</color>后，<color='#b031d5'>80级</color>以上玩家可报名参赛。\n2.战队最多由<color='#b031d5'>5</color>正式成员以及<color='#b031d5'>2</color>名替补成员组成，每次比赛可从中抽选<color='#b031d5'>5人</color>参战。\n3.按照报名截止时战队成员的<color='#b031d5'>最高等级</color>，分为<color='#fff000'>新星组</color><color='#b031d5'>（80-89级）</color>、<color='#fff000'>超凡组</color><color='#b031d5'>（90-99级）</color>、<color='#fff000'>绝尘组</color><color='#b031d5'>（100-突破99级）</color>、<color='#fff000'>登峰组</color><color='#b031d5'>（突破100-109级）</color>、<color='#fff000'>王者组</color><color='#b031d5'>（突破110级以上）</color>五个组别。\n4.报名期间，战队<color='#fff000'>最高等级</color>发生变化时，战队也会随之调整到对应等级分组。\n5.不论正式成员或替补成员、参战或未参战，最后根据战队成绩，所有成员均可获得丰厚奖励。\n"},
	{id = 2, name = "小组赛", desc = "1.小组赛开始后，为确保比赛公平公正，玩家等级不得超出组别<color='#fff000'>等级上限</color>，否则该队员将<color='#fff000'>失去参赛资格</color>，例如：新星组（80-89级），若队员等级≥90级时，该名队员将不得继续参战\n2.战队综合战力<color='#b031d5'>前五</color>的队员的<color='#b031d5'>综合战力之和</color>即是战队综合战力。\n3.每服<color='#fff000'>综合战力第一</color>的战队成为<color='#fff000'>种子队</color>，自动获得参赛资格。\n4.按全服<color='#fff000'>战队综合战力</color>排序，<color='#fff000'>由高到低</color>颁发参赛资格，每个等级组共取<color='#b031d5'>128</color>队（包含种子队）。\n5.128队共分<color='#b031d5'>32个</color>小组，小组内各对战<color='#b031d5'>3</color>场。\n"},
	{id = 3, name = "淘汰赛", desc = "1.小组赛积分前<color='#b031d5'>2</color>名可获得淘汰赛资格，共<color='#b031d5'>64</color>队可参与淘汰赛。\n2.淘汰赛中胜利则<color='#fff000'>晋级</color>，失败则失去继续参赛资格。\n3.进入淘汰赛的战队皆可获得丰厚奖励。\n"},
	{id = 4, name = "战斗", desc = "1.一场战斗中，每人最多使用<color='#b031d5'>10</color>个道具，且会有<color='#b031d5'>衰减</color>效果\n2.一场战斗中，每个角色最多可召唤<color='#b031d5'>4</color>只宠物出战（不包含初始宠物）。\n3.诸神之战中<color='#fff000'>没有平局</color>，小组赛每场战斗不超过<color='#b031d5'>30回合</color>，淘汰赛<color='#b031d5'>无回合限制</color>，但所有战斗皆<color='#fff000'>不可超过活动结束时间</color>。\n4.在达到<color='#fff000'>回合限制或活动结束时间</color>后，按照<color='#b031d5'>存活数以及存活单位血量</color>判定胜负。\n"},
	{id = 5, name = "有奖竞猜", desc = "1.8进4及以后比赛中，全服所有<color='#b031d5'>30级</color>以上玩家若在<color='#fff000'>比赛当天</color>（非比赛中）活跃度达到<color='#b031d5'>75</color>，即可免费获得<color='#b031d5'>一叠选票</color>。\n2.玩家可消耗选票对当天参赛的队伍进行投票支持。\n3.投票支持的战队<color='#fff000'>获胜</color>后，投票的玩家皆可获得丰厚奖励。\n4.玩家只能对同一场战斗中的某一队投票<color='#fff000'>1</color>次。\n"}
}

DataGodsDuel.data_gruop_length = 6
DataGodsDuel.data_gruop = {
	{group_id = 1, index = 1, name = "新星组(80-89级)", name_sample = "新星组", break_times = 0, lev_min = 80, lev_max = 89},
	{group_id = 2, index = 2, name = "超凡组(90-99级)", name_sample = "超凡组", break_times = 0, lev_min = 90, lev_max = 99},
	{group_id = 3, index = 3, name = "绝尘组(100-突破99)", name_sample = "绝尘组", break_times = 0, lev_min = 100, lev_max = 100},
	{group_id = 3, index = 3, name = "绝尘组(100-突破99)", name_sample = "绝尘组", break_times = 1, lev_min = 95, lev_max = 99},
	{group_id = 4, index = 4, name = "登峰组(突破100-109)", name_sample = "登峰组", break_times = 1, lev_min = 100, lev_max = 109},
	{group_id = 5, index = 5, name = "王者组(突破110+)", name_sample = "王者组", break_times = 1, lev_min = 110, lev_max = 130}
}

DataGodsDuel.data_name_length = 11
DataGodsDuel.data_name = {
	{jifen = 0, jifen_name = "初学乍练"},
	{jifen = 50, jifen_name = "明日之星"},
	{jifen = 120, jifen_name = "崭露头角"},
	{jifen = 220, jifen_name = "<color='#248813'>驾轻就熟</color>"},
	{jifen = 380, jifen_name = "<color='#248813'>骁勇善战</color>"},
	{jifen = 600, jifen_name = "<color='#225ee7'>技惊四座</color>"},
	{jifen = 900, jifen_name = "<color='#225ee7'>名动八方</color>"},
	{jifen = 1200, jifen_name = "<color='#b031d5'>傲视群雄</color>"},
	{jifen = 1600, jifen_name = "<color='#b031d5'>无与伦比</color>"},
	{jifen = 2000, jifen_name = "<color='#c3692c'>惊世骇俗</color>"},
	{jifen = 2500, jifen_name = "<color='#c3692c'>超凡入圣</color>"}
}

