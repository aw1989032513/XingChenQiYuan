DataShipping = DataShipping or {}

DataShipping.data_npctalk_length = 3
DataShipping.data_npctalk = {
	[1] = {id = 20011, type = 1, dialog1 = {{key = "又是新的一天，赶紧准备起航吧！"},{key = "完成5次提交后可求助喔"},{key = "今天天气很适合航行"},{key = "船长波比的威名无人不知！"}}, dialog2 = {{key = "金箱子有双倍的奖励！"}}, dialog3 = {{key = "准备好就提交吧~"},{key = "有货物可提交？"}}, dialog4 = {{key = "水手们，杨帆起航！"}}},
	[2] = {id = 20002, type = 2, dialog1 = {{key = "物价飞涨，趁早起航肯定能大赚一笔！"},{key = "1小时内完成我的订单，给你额外报酬！"}}, dialog2 = {{key = "提交金箱子的货物，我出双倍报酬。"}}, dialog3 = {{key = "我赶时间，快提交吧"}}, dialog4 = {{key = "我已经迫不及待起航了！"}}},
	[3] = {id = 20021, type = 3, dialog1 = {{key = "我给你带来了大号订单！"},{key = "我们需要更多的货物"},{key = "双倍的订单，翻倍的奖励！"},{key = "完成5次提交后可求助公会"}}, dialog2 = {{key = "金箱子有双倍的奖励！"}}, dialog3 = {{key = "公平交易，快提交吧。"},{key = "很高兴与你合作"}}, dialog4 = {{key = "时间就是金钱，伙计们起航啦！"}}}
}

DataShipping.data_quest_length = 4
DataShipping.data_quest = {
	[81110] = {type = 1, ring = 1, max_ring = 4},
	[81120] = {type = 1, ring = 2, max_ring = 4},
	[81130] = {type = 1, ring = 3, max_ring = 4},
	[81140] = {type = 1, ring = 4, max_ring = 4}
}

DataShipping.data_quest_end_length = 3
DataShipping.data_quest_end = {
	[7] = {id = 1001, classify = 7, qname = "天堂圣果", desc = "上古神树结出的<color='#ffff00'>天堂圣果</color>珍稀无比，波比船长派你去找<color='#01C1F1'>吹牛大王</color>探听虚实，完成任务将获得丰厚{assets_2,90013}", fdesc = "经历一番波折，终于得到了<color='#ffff00'>天堂圣果</color>，<color='#01C1F1'>波芘船长</color>满意的给予你奖励！", ftitle2 = "波芘奖励", args = {{num = 2,desc = "额外获得1个圣果"},{num = 3,desc = "额外获得2个圣果"},{num = 4,desc = "额外获得3个圣果"},{num = 5,desc = "额外获得4个圣果"}}},
	[8] = {id = 1002, classify = 8, qname = "冒险秘境", desc = "嘘！返航时发现了一个<color='#ffff00'>冒险秘境</color>，可获得大量冒险经验{assets_2,90013}，快<color='#ffff00'>组队</color>出发吧！", fdesc = "冒险秘境名不虚传，收集的<color='#ffff00'>神秘雕像</color>提交给<color='#01C1F1'>波芘船长</color>，获得了大量<color='#F056EE'>冒险经验</color>！秘境虽然关闭了，但仍然残留了一些<color='#ffff00'>冒险宝箱</color>！", ftitle2 = "秘境奖励", args = {}},
	[9] = {id = 1003, classify = 9, qname = "狙击海盗", desc = "<color='#01C1F1'>小虎船长海盗团</color>劫掠物资后正在逃跑，赶紧联合小伙伴狙击他！波芘船长将予以{assets_2,90013}作为报酬。", fdesc = "<color='#01C1F1'>小虎船长海盗团</color>落荒而逃，被抢夺的物资也全部夺回。波芘船长由衷感谢，并给予你<color='#F056EE'>冒险经验</color>奖励！", ftitle2 = "波芘奖励", args = {}}
}

DataShipping.data_box_length = 15
DataShipping.data_box = {
	{id = 1, item_id = 90013, num = 20},
	{id = 2, item_id = 90013, num = 30},
	{id = 3, item_id = 90013, num = 40},
	{id = 4, item_id = 90013, num = 50},
	{id = 5, item_id = 90013, num = 60},
	{id = 6, item_id = 90013, num = 70},
	{id = 7, item_id = 90013, num = 80},
	{id = 8, item_id = 90013, num = 120},
	{id = 9, item_id = 90013, num = 150},
	{id = 10, item_id = 90013, num = 180},
	{id = 11, item_id = 90013, num = 300},
	{id = 12, item_id = 90013, num = 30},
	{id = 13, item_id = 90013, num = 40},
	{id = 14, item_id = 90013, num = 50},
	{id = 15, item_id = 90013, num = 60}
}
