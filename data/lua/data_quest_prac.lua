--历练任务配置
DataQuestPrac = DataQuestPrac or {}

--任务
DataQuestPrac.data_task_length = 290
DataQuestPrac.data_task={}
DataQuestPrac.taskData={}
DataQuestPrac.taskGetFunc={
	["1_2_1"]=[[{10316}]],
	["1_2_2"]=[[{10320}]],
	["1_2_3"]=[[{10350}]],
	["1_2_4"]=[[{10360}]],
	["1_2_5"]=[[{10362}]],
	["1_2_6"]=[[{10364}]],
	["1_2_7"]=[[{10370}]],
	["1_2_8"]=[[{10374}]],
	["1_3_1"]=[[{10380}]],
	["1_3_2"]=[[{10384}]],
	["1_3_3"]=[[{10390}]],
	["1_3_4"]=[[{10394}]],
	["1_3_5"]=[[{10400}]],
	["1_3_6"]=[[{10402}]],
	["1_3_7"]=[[{10404}]],
	["1_3_8"]=[[{10410}]],
	["1_4_1"]=[[{10414}]],
	["1_4_2"]=[[{10420}]],
	["1_4_3"]=[[{10430}]],
	["1_4_4"]=[[{10432}]],
	["1_4_5"]=[[{10434}]],
	["1_4_6"]=[[{10436}]],
	["1_4_7"]=[[{10438}]],
	["1_4_8"]=[[{10440}]],
	["1_4_9"]=[[{10450}]],
	["1_4_10"]=[[{10455}]],
	["1_5_1"]=[[{10458}]],
	["1_5_2"]=[[{10460}]],
	["1_5_3"]=[[{10461}]],
	["1_5_4"]=[[{10462}]],
	["1_5_5"]=[[{10463}]],
	["1_5_6"]=[[{10464}]],
	["2_1_1"]=[[{10470}]],
	["2_1_2"]=[[{10475}]],
	["2_1_3"]=[[{10480}]],
	["2_1_4"]=[[{10484}]],
	["2_1_5"]=[[{10486}]],
	["2_1_6"]=[[{10490}]],
	["2_1_7"]=[[{10494}]],
	["2_1_8"]=[[{10500}]],
	["2_1_9"]=[[{10510}]],
	["2_2_1"]=[[{10514}]],
	["2_2_2"]=[[{10520}]],
	["2_2_3"]=[[{10521}]],
	["2_2_4"]=[[{10522}]],
	["2_2_5"]=[[{10523}]],
	["2_2_6"]=[[{10524}]],
	["2_2_7"]=[[{10525}]],
	["2_2_8"]=[[{10526}]],
	["2_2_9"]=[[{10527}]],
	["2_2_10"]=[[{10528}]],
	["2_3_1"]=[[{10530}]],
	["2_3_2"]=[[{10532}]],
	["2_3_3"]=[[{10534}]],
	["2_3_4"]=[[{10540}]],
	["2_3_5"]=[[{10544}]],
	["2_3_6"]=[[{10550}]],
	["2_3_7"]=[[{10560}]],
	["2_3_8"]=[[{10564}]],
	["2_4_1"]=[[{10568}]],
	["2_4_2"]=[[{10570}]],
	["2_4_3"]=[[{10580}]],
	["2_4_4"]=[[{10582}]],
	["2_4_5"]=[[{10590}]],
	["2_4_6"]=[[{10600}]],
	["2_4_7"]=[[{10610}]],
	["2_4_8"]=[[{10620}]],
	["2_4_9"]=[[{10630}]],
	["2_4_10"]=[[{10640}]],
	["2_5_1"]=[[{10650}]],
	["2_5_2"]=[[{10660}]],
	["2_5_3"]=[[{10670}]],
	["2_5_4"]=[[{10680}]],
	["2_5_5"]=[[{10690}]],
	["2_5_6"]=[[{10700}]],
	["2_5_7"]=[[{10710}]],
	["2_5_8"]=[[{10720}]],
	["2_5_9"]=[[{10730}]],
	["3_1_1"]=[[{10740}]],
	["3_1_2"]=[[{10750}]],
	["3_1_3"]=[[{10760}]],
	["3_1_4"]=[[{10770}]],
	["3_1_5"]=[[{10780}]],
	["3_1_6"]=[[{10790}]],
	["3_1_7"]=[[{10800}]],
	["3_1_8"]=[[{10810}]],
	["3_1_9"]=[[{10820}]],
	["3_1_10"]=[[{10830}]],
	["3_1_11"]=[[{10840}]],
	["3_2_1"]=[[{10850}]],
	["3_2_2"]=[[{10860}]],
	["3_2_3"]=[[{10870}]],
	["3_2_4"]=[[{10880}]],
	["3_2_5"]=[[{10890}]],
	["3_2_6"]=[[{10900}]],
	["3_2_7"]=[[{10910}]],
	["3_2_8"]=[[{10920}]],
	["3_2_9"]=[[{10930}]],
	["3_2_10"]=[[{10940}]],
	["3_2_11"]=[[{10950}]],
	["3_3_1"]=[[{10960}]],
	["3_3_2"]=[[{10970}]],
	["3_3_3"]=[[{10980}]],
	["3_3_4"]=[[{10990}]],
	["3_3_5"]=[[{11000}]],
	["3_3_6"]=[[{11010}]],
	["3_3_7"]=[[{11020}]],
	["3_3_8"]=[[{11030}]],
	["3_3_9"]=[[{11040}]],
	["3_3_10"]=[[{11050}]],
	["3_3_11"]=[[{11060}]],
	["3_4_1"]=[[{11070}]],
	["3_4_2"]=[[{11080}]],
	["3_4_3"]=[[{11090}]],
	["3_4_4"]=[[{11100}]],
	["3_4_5"]=[[{11110}]],
	["3_4_6"]=[[{11120}]],
	["3_4_7"]=[[{11130}]],
	["3_4_8"]=[[{11140}]],
	["3_4_9"]=[[{11150}]],
	["3_4_10"]=[[{11160}]],
	["3_4_11"]=[[{11170}]],
	["3_5_1"]=[[{11180}]],
	["3_5_2"]=[[{11190}]],
	["3_5_3"]=[[{11200}]],
	["3_5_4"]=[[{11210}]],
	["3_5_5"]=[[{11220}]],
	["3_5_6"]=[[{11240}]],
	["3_5_7"]=[[{11250}]],
	["3_5_8"]=[[{11260}]],
	["3_5_9"]=[[{11270}]],
	["3_5_10"]=[[{11276}]],
	["3_5_11"]=[[{11280}]],
	["3_5_12"]=[[{11290}]],
	["4_1_1"]=[[{11300}]],
	["4_1_2"]=[[{11310}]],
	["4_1_3"]=[[{11320}]],
	["4_1_4"]=[[{11330}]],
	["4_1_5"]=[[{11340}]],
	["4_1_6"]=[[{11350}]],
	["4_1_7"]=[[{11360}]],
	["4_1_8"]=[[{11370}]],
	["4_1_9"]=[[{11380}]],
	["4_1_10"]=[[{11390}]],
	["4_1_11"]=[[{11400}]],
	["4_2_1"]=[[{11410}]],
	["4_2_2"]=[[{11420}]],
	["4_2_3"]=[[{11430}]],
	["4_2_4"]=[[{11440}]],
	["4_2_5"]=[[{11450}]],
	["4_2_6"]=[[{11460}]],
	["4_2_7"]=[[{11470}]],
	["4_2_8"]=[[{11480}]],
	["4_2_9"]=[[{11490}]],
	["4_2_10"]=[[{11500}]],
	["4_2_11"]=[[{11510}]],
	["4_2_12"]=[[{11520}]],
	["4_3_1"]=[[{11530}]],
	["4_3_2"]=[[{11540}]],
	["4_3_3"]=[[{11550}]],
	["4_3_4"]=[[{11560}]],
	["4_3_5"]=[[{11570}]],
	["4_3_6"]=[[{11580}]],
	["4_3_7"]=[[{11590}]],
	["4_3_8"]=[[{11600}]],
	["4_3_9"]=[[{11610}]],
	["4_3_10"]=[[{11620}]],
	["4_3_11"]=[[{11630}]],
	["4_3_12"]=[[{11640}]],
	["4_4_1"]=[[{11650}]],
	["4_4_2"]=[[{11660}]],
	["4_4_3"]=[[{11670}]],
	["4_4_4"]=[[{11680}]],
	["4_4_5"]=[[{11690}]],
	["4_4_6"]=[[{11700}]],
	["4_4_7"]=[[{11710}]],
	["4_4_8"]=[[{11720}]],
	["4_4_9"]=[[{11730}]],
	["4_4_10"]=[[{11740}]],
	["4_4_11"]=[[{11750}]],
	["4_4_12"]=[[{11760}]],
	["4_5_1"]=[[{11770}]],
	["4_5_2"]=[[{11780}]],
	["4_5_3"]=[[{11790}]],
	["4_5_4"]=[[{11800}]],
	["4_5_5"]=[[{11810}]],
	["4_5_6"]=[[{11820}]],
	["4_5_7"]=[[{11830}]],
	["4_5_8"]=[[{11840}]],
	["4_5_9"]=[[{11850}]],
	["4_5_10"]=[[{11860}]],
	["4_5_11"]=[[{11890}]],
	["4_5_12"]=[[{11900}]],
	["4_5_13"]=[[{11910}]],
	["5_1_1"]=[[{11920}]],
	["5_1_2"]=[[{11930}]],
	["5_1_3"]=[[{11940}]],
	["5_1_4"]=[[{11950}]],
	["5_1_5"]=[[{11960}]],
	["5_1_6"]=[[{11970}]],
	["5_1_7"]=[[{11980}]],
	["5_1_8"]=[[{11990}]],
	["5_1_9"]=[[{12000}]],
	["5_1_10"]=[[{12010}]],
	["5_1_11"]=[[{12020}]],
	["5_1_12"]=[[{12030}]],
	["5_1_13"]=[[{12040}]],
	["5_2_1"]=[[{12050}]],
	["5_2_2"]=[[{12060}]],
	["5_2_3"]=[[{12070}]],
	["5_2_4"]=[[{12080}]],
	["5_2_5"]=[[{12090}]],
	["5_2_6"]=[[{12100}]],
	["5_2_7"]=[[{12110}]],
	["5_2_8"]=[[{12120}]],
	["5_2_9"]=[[{12130}]],
	["5_2_10"]=[[{12140}]],
	["5_2_11"]=[[{12150}]],
	["5_2_12"]=[[{12160}]],
	["5_3_1"]=[[{12170}]],
	["5_3_2"]=[[{12180}]],
	["5_3_3"]=[[{12190}]],
	["5_3_4"]=[[{12200}]],
	["5_3_5"]=[[{12210}]],
	["5_3_6"]=[[{12220}]],
	["5_3_7"]=[[{12230}]],
	["5_3_8"]=[[{12240}]],
	["5_3_9"]=[[{12250}]],
	["5_3_10"]=[[{12260}]],
	["5_3_11"]=[[{12270}]],
	["5_4_1"]=[[{12280}]],
	["5_4_2"]=[[{12290}]],
	["5_4_3"]=[[{12300}]],
	["5_4_4"]=[[{12310}]],
	["5_4_5"]=[[{12320}]],
	["5_4_6"]=[[{12330}]],
	["5_4_7"]=[[{12340}]],
	["5_4_8"]=[[{12350}]],
	["5_4_9"]=[[{12360}]],
	["5_4_10"]=[[{12370}]],
	["5_4_11"]=[[{12380}]],
	["5_4_12"]=[[{12390}]],
	["5_5_1"]=[[{12400}]],
	["5_5_2"]=[[{12410}]],
	["5_5_3"]=[[{12420}]],
	["5_5_4"]=[[{12430}]],
	["5_5_5"]=[[{12440}]],
	["5_5_6"]=[[{12450}]],
	["5_5_7"]=[[{12460}]],
	["5_5_8"]=[[{12470}]],
	["5_5_9"]=[[{12480}]],
	["5_5_10"]=[[{12490}]],
	["5_5_11"]=[[{12500}]],
	["5_5_12"]=[[{12510}]],
	["6_1_1"]=[[{12520}]],
	["6_1_2"]=[[{12530}]],
	["6_1_3"]=[[{12540}]],
	["6_1_4"]=[[{12550}]],
	["6_1_5"]=[[{12560}]],
	["6_1_6"]=[[{12570}]],
	["6_1_7"]=[[{12580}]],
	["6_1_8"]=[[{12590}]],
	["6_1_9"]=[[{12600}]],
	["6_1_10"]=[[{12610}]],
	["6_1_11"]=[[{12620}]],
	["6_1_12"]=[[{12630}]],
	["6_2_1"]=[[{12640}]],
	["6_2_2"]=[[{12650}]],
	["6_2_3"]=[[{12660}]],
	["6_2_4"]=[[{12670}]],
	["6_2_5"]=[[{12680}]],
	["6_2_6"]=[[{12690}]],
	["6_2_7"]=[[{12700}]],
	["6_2_8"]=[[{12710}]],
	["6_2_9"]=[[{12720}]],
	["6_2_10"]=[[{12730}]],
	["6_2_11"]=[[{12740}]],
	["6_2_12"]=[[{12750}]],
	["6_3_1"]=[[{12760}]],
	["6_3_2"]=[[{12770}]],
	["6_3_3"]=[[{12780}]],
	["6_3_4"]=[[{12790}]],
	["6_3_5"]=[[{12800}]],
	["6_3_6"]=[[{12810}]],
	["6_3_7"]=[[{12820}]],
	["6_3_8"]=[[{12830}]],
	["6_3_9"]=[[{12840}]],
	["6_3_10"]=[[{12850}]],
	["6_3_11"]=[[{12860}]],
	["6_3_12"]=[[{12870}]],}
local mt = {}
	mt.__index = function(_table, index)
	if DataQuestPrac.taskData[index] then return DataQuestPrac.taskData[index] end
	local base = loadstring(string.format('return %s',DataQuestPrac.taskGetFunc[index]))() if not base then return end
	DataQuestPrac.taskData[index]={
		quest_id=base[1]
	}
	return DataQuestPrac.taskData[index]
end
setmetatable(DataQuestPrac.data_task, mt)

--篇
DataQuestPrac.data_piece_length = 6
DataQuestPrac.data_piece={}
DataQuestPrac.pieceData={}
DataQuestPrac.pieceGetFunc={
	[1]=[[{1,"学院风云",5,""}]],
	[2]=[[{2,"摘星疑踪",5,""}]],
	[3]=[[{3,"魔影重重",5,""}]],
	[4]=[[{4,"真相难辨",5,""}]],
	[5]=[[{5,"引君入瓮",5,""}]],
	[6]=[[{6,"最终决战",5,""}]],}
local mt = {}
	mt.__index = function(_table, index)
	if DataQuestPrac.pieceData[index] then return DataQuestPrac.pieceData[index] end
	local base = loadstring(string.format('return %s',DataQuestPrac.pieceGetFunc[index]))() if not base then return end
	DataQuestPrac.pieceData[index]={
		part=base[1],
		name=base[2],
		chapters=base[3],
		desc=base[4]
	}
	return DataQuestPrac.pieceData[index]
end
setmetatable(DataQuestPrac.data_piece, mt)

--章
DataQuestPrac.data_chapter_length = 28
DataQuestPrac.data_chapter={}
DataQuestPrac.chapterData={}
DataQuestPrac.chapterGetFunc={
	["1_1"]=[[{1,1,0,"月华之争","星辰石<color='#248813'>「月华」</color>现世，星辰学院天地分院争夺不休，在外游历后回归的我，救下了被欺负的学妹<color='#248813'>伊芙</color>，并在她的帮助下击败地院，夺得<color='#248813'>「月华」</color>！然而，虽然一直作对但依旧被我们当做同学的<color='#248813'>林雷</color>，竟然被毁灭军团麾下<color='#248813'>阴影领主附身</color>，已然堕落。",{22510,20006},40048}]],
	["1_2"]=[[{1,2,8,"谍影重重","潜伏在<color='#248813'>林雷戒指中的阴影领主分身</color>让学院警钟大响，并由此怀疑学院中仍潜伏着敌人，那么，内奸，或者间谍，到底是谁？在排除了葛朗台、杜维之后，令人吃惊的是，线索渐渐指向了地院的<color='#248813'>导师马丁</color>，希望为人师表的马丁不要让人失望。",{20000},40040}]],
	["1_3"]=[[{1,3,8,"真相大白","在此敏感时刻突然<color='#248813'>离开的马丁</color>让人不得不怀疑，我与伊芙一路沿着他留下的足迹追踪而去，终于在<color='#248813'>月痕海岸</color>追上了他，想不到他竟然<color='#248813'>亲口承认自己是毁灭军团的间谍</color>……遗憾的是，仍然让他逃走，不过，我绝对不会善罢甘休，一定要将他抓捕回学院！",{20002},40045}]],
	["1_4"]=[[{1,4,10,"天罗地网","<color='#248813'>内奸马丁</color>逃到了飞瀑村，然而精通<color='#248813'>隐身</color>的他让我的抓捕工作一筹莫展，还好有<color='#248813'>贤者福波斯</color>的存在，在贤者的指点下，我制作出了<color='#248813'>破隐之尘岸</color>，希望，能尽快破除马丁的隐身效果。",{20006,20034},40130}]],
	["1_5"]=[[{1,5,6,"最终审判","终于，<color='#248813'>马丁</color>在破隐之尘下<color='#248813'>现身</color>，一番激斗之后被我捉拿在手，然而在带他回学院的路上，竟然有一波又一波的敌人试图<color='#248813'>试图劫走马丁</color>，不知道什么时候开始，毁灭军团的人如此猖狂了。",{20000},40044}]],
	["2_1"]=[[{2,1,9,"梦中世界","教授在<color='#248813'>审问马丁</color>时却在他那坚强得变态的意志下败下阵来。在教授的拜托下，我前往了<color='#248813'>精灵之森</color>，经过一番战斗之后，请出了<color='#248813'>梦魇之王</color>，面对世界之敌，梦魇之王毫无推脱的帮助我们<color='#248813'>让马丁的意志具象化</color>，我终于<color='#248813'>击败了马丁的意志</color>，而马丁也开始吐露他心中那些肮脏的秘密。",{},40058}]],
	["2_2"]=[[{2,2,10,"密箱隐秘","撬开马丁的嘴后，我们知道了原来他隶属于毁灭军团麾下的<color='#248813'>「摘星者」</color>，而这个组织的首领就是阴影领主，同时也获得了他与上线联系的方法。可惜的是<color='#248813'>联络密箱与箱中密信</color>难以破解，不过在炼金师露露与贤者福波斯还有妖姬小姐的帮助下，我们终于破解了密箱中的秘密。",{},40220}]],
	["2_3"]=[[{2,3,8,"伪装潜入","从密箱中的密信得知，<color='#248813'>「摘星者」</color>最近正在运送一个<color='#248813'>神秘货物</color>，在药剂师安妮的帮助下，我制作了<color='#248813'>信任魔粉</color>，并在魔粉的作用下顺利<color='#248813'>混入「摘星者」内部</color>，并最终抢到了货物，而令人惊喜的是，这货物，竟然<color='#248813'>星辰石「耀阳」</color>！！！！",{20615,90010},40260}]],
	["2_4"]=[[{2,4,10,"雪域之行","还没从抢到星辰石<color='#248813'>「耀阳」</color>的兴奋中恢复过来，伊芙便告诉我她获得了关于「星辰石」的情报，邀我一同前往<color='#248813'>极北之域</color>，然而在极北之域我们却遇到了发狂的妖精，被袭的贝恩，以及<color='#248813'>被魔染的巨人一族</color>！",{},40300}]],
	["2_5"]=[[{2,5,9,"熔岩领主","有<color='#248813'>「摘星者」</color>背后操控的堕落巨人一族实力强大，为了击败他们，我设法击杀了冰雪妖精一族的世仇——<color='#248813'>邪梦女皇</color>，以之为投名状帮助牛头人部落与冰雪妖精一族<color='#248813'>结盟</color>，最后，一起联手击败了堕落的巨人们，并在妖精公主的帮助下，让巨人的首领<color='#248813'>佛格瑞特</color>清醒了过来。",{21100,90010},40340}]],
	["3_1"]=[[{3,1,11,"雪域惊变","在佛格瑞特的拜托下，我救出了他被魔染的子民，然而在我手佛格瑞特之托拜访利贝尔王国的阿瑞斯之时，却传来了<color='#248813'>伊芙被「摘星者」掳走</color>的噩耗，在盟友们的帮助下，我成功追上了掳走伊芙的「摘星者」，然而<color='#248813'>阴影领主</color>亲自出手，让我与伊芙失之交臂，最终，我也只是俘虏了<color='#248813'>阴影近卫</color>。",{20056,90010},40370}]],
	["3_2"]=[[{3,2,11,"偷梁换柱","正在我悔恨之时，教授将我召唤过去，告诉我有人愿意帮助我救回伊芙，原来是叮叮当的主人<color='#248813'>古德老爷</color>。在他与<color='#248813'>飞瀑村的隐者</color>的帮助下，我成功弄到变形药剂，在变成了阴影近卫后截下了他们购买的货物，然后变身<color='#248813'>黑市商人</color>将<color='#248813'>阴影近卫</color>一网打尽，还从中得知了伊芙的情报，然而由于实力过低，隐者建议我提升一下再去营救。",{20009,90010},40430}]],
	["3_3"]=[[{3,3,11,"生死追踪","在击败了<color='#248813'>学长阿尔法</color>后，我得到了教授的认可，允许我前去营救伊芙，拜访精灵大长老时却得知阴影近卫们已经转移，顺着他们留下的痕迹，我<color='#248813'>一路追逐</color>，终于，在飞瀑村的瀑布之上追上了他们，一番激斗之后<color='#248813'>救下伊芙</color>。然而，当他们将要说出一些关于教授的话时，却被<color='#248813'>神秘人</color>杀害。",{20616,90010},40440}]],
	["3_4"]=[[{3,4,11,"暮雪现世","平静的日子并没有过去多久，<color='#248813'>伊芙</color>突然神神秘秘的让我帮她取来<color='#248813'>寄存的货物</color>，然后为她找来<color='#248813'>地心钻探机</color>，最后来到精灵之森阴影近卫们曾经的临时营地，并从中挖掘出了<color='#248813'>星辰石「暮雪」</color>」……真是意外之喜~然而，令人疑惑的是，伊芙<color='#248813'>「并没有将星辰石交予教授</color>，并对我说起了她的<color='#248813'>怀疑</color>。",{20075,20053},40540}]],
	["3_5"]=[[{3,5,12,"教授疑云","由于教授懂得只有<color='#248813'>「摘星者」</color>二号首领才会的高级占星术，我们对他产生了<color='#248813'>怀疑</color>，在用<color='#248813'>洞察水晶</color>监视教授时发现了神秘人的踪影，跟踪后却发现了一宗交易，而货物却是之前我们交予教授的<color='#248813'>预言星盘</color>！",{20022,20010},40620}]],
	["4_1"]=[[{4,1,11,"院长之秘","虽然夺下了货物，但交易双方都已<color='#248813'>逃走</color>，在德林老师的建议下，我开始搜寻最了解教授人——<color='#248813'>院长普斯特</color>，他已失踪多年，通过他的侍女我拜访了福波斯与精灵长老，最终在<color='#248813'>「摘星者」</color>监狱的监狱长口中得知了院长的踪迹。",{20550,20014},40660}]],
	["4_2"]=[[{4,2,12,"陈年往事","院长的消息就此断绝，不过在<color='#248813'>德林老师</color>的帮助下，我开始寻找当年<color='#248813'>教授</color>与<color='#248813'>院长</color>一起前来学院的往事，最后，发现教授曾受伤并在<color='#248813'>极北之域</color>养伤，而他养伤的地点之后却出现了一群<color='#248813'>龙血剑灵</color>，真是蹊跷！",{21101,20053},40700}]],
	["4_3"]=[[{4,3,12,"寻根究底","从<color='#248813'>龙血剑灵</color>之上我们发现教授很可能是一条巨龙，为了探究他的真实身份，我开始涉法去捕获摘星者的高级情报官，并由此找出可能知晓教授真实身份的摘星者情报主官<color='#248813'>无面</color>",{20040,20017},40750}]],
	["4_4"]=[[{4,4,12,"克制之法","从<color='#248813'>无面</color>的口中，我们得到了一个惊天秘密，教授竟然是……无论真假，都必须将教授抓捕并审问，而他实力强大，我不得不去寻找<color='#248813'>克制巨龙</color>的道具，一番辛苦之后，终于让我准备好了<color='#248813'>龙诞香</color>。",{20010,20089},40810}]],
	["4_5"]=[[{4,5,13,"学院之殇","在德林老师的主持下，我用一封密信将教授约到了见面地点，在<color='#248813'>龙诞香</color>的帮助下，教授无法完全变身为巨龙，即便如此，他依旧想灭我的口，但……我终究还是胜利了……只是，看着死去的教授，为何我却觉得大陆的希望越发的渺茫呢？",{20354,20617},40850}]],
	["5_1"]=[[{5,1,13,"意外之喜","<color='#248813'>肖恩</color>伏诛后，为稳定士气，学院<color='#248813'>将此事隐瞒下来</color>，然而却有流浪商人四处打探<color='#248813'>肖恩消失的真相</color>，跟踪之时竟发现流浪商人是<color='#248813'>「摘星者」</color>密探，原来阴影领主准备与肖恩碰面，这是个好机会，决不能错过！老师篡改了密探劝谏延期的<color='#248813'>密信</color>，而我，则让那名流浪商人人间蒸发！",{20354,90010},40870}]],
	["5_2"]=[[{5,2,12,"位面通道","虽成功取信了阴影领主，但<color='#248813'>肖恩已死</color>，<color='#248813'>无人能假扮巨龙</color>，我只好向风之旅人求助，得到消息说<color='#248813'>王大可的家乡</color>有人能<color='#248813'>完美变身</color>为肖恩，为了前往中土世界，我不得不与<color='#248813'>王大可</color>以及被我吵醒的<color='#248813'>位面守望者</color>一战，然而，位面通道需要修复，我只能等待……",{22585,90010},40890}]],
	["5_3"]=[[{5,3,11,"异界之旅","帮助<color='#248813'>位面守望者</color>修复位面通道后，我到达<color='#248813'></color>位面中转站，击败占据这里的<color='#248813'>毁灭军团</color>后，成功到达花果山，然而由于自称是我朋友的<color='#248813'>月光女神</color>打伤猴子猴孙，我只得跟猴帅和<color='#248813'>二师兄</color>一战，之后方得知美猴王去了绯月大陆。",{20022,21102},40910}]],
	["5_4"]=[[{5,4,12,"大圣影踪","在风之旅人的帮助下，我终于找到隐居的<color='#248813'>月光女神</color>，激愤之下发生战斗，却发现竟是误会，应是别人冒充她引走美猴王，后经多方查证，终于在位面通道外找到痕迹，并追上大圣一行，然而美猴王为<color='#248813'>假月光女神</color>所控，欲为<color='#248813'>「摘星者」</color>效力，一番战斗，终于将美猴王救下，而美猴王也应我所请，<color='#248813'>变身为肖恩教授</color>。",{20022,20024},40930}]],
	["5_5"]=[[{5,5,12,"剑拔弩张","变身为<color='#248813'>肖恩教授的美猴王</color>发现有人暗中窥视于他，我便从露露处获得<color='#248813'>洞察水晶</color>帮助监视周围动静，后发现果然有人窥视，战斗后送与杰森队长，拷问后得知竟是「摘星者」密探头子，未免打草惊蛇，我伪装为肖恩手下，放走了血伯爵，没过多久，我与美猴王一起到月痕海岸会见皎月公爵，此次会面却是要求肖恩交出星辰石，发生争执，我赶走了皎月公爵，希望，下次会是阴影领主亲自前来。",{90010,20617},40950}]],
	["6_1"]=[[{6,1,12,"肖恩遗产","美猴王在肖恩的遗物中发现了一张<color='#248813'>神秘的地图</color>，在学院老师和同伴们的帮助下，我解开了地图上被<color='#248813'>隐藏的入口</color>谜题，然而其指向的，却是一个出人意料的地方。",{21098,23660},40980}]],
	["6_2"]=[[{6,2,12,"巨龙一族","我终于来到了<color='#248813'>失落神殿</color>，据守护这里的巨龙一族告知，这里竟然是远古万神殿的遗址，而<color='#248813'>巨龙一族</color>一直守护着这里，拜访了现今的<color='#248813'>守护巨龙巴尼</color>时，我竟阴差阳错的成为了<color='#248813'>肖恩教授</color>选定的守护星辰石之人，并从巴尼手上获得了肖恩掌握的所有<color='#248813'>星辰石</color>……肖恩既然是<color='#248813'>卧底</color>，为何又会把星辰石留给我？这个秘密真是令人头疼。",{23556,23550},41101}]],
	["6_3"]=[[{6,3,12,"暗流涌动","德林导师的调查终于有了眉目，在<color='#248813'>风之旅人</color>的帮助下，我调查了迷梦树界的最深处，原来竟是阴影领主手下的<color='#248813'>幽冥骑士</color>一族借助天赋能力相位移动在暗中窃取情报，这次借助风之旅人的力量彻底驱逐了他们！<color='#248813'>「摘星者」</color>手中的星辰石，我们势在必得！",{21256,20638},41114}]],}
local mt = {}
	mt.__index = function(_table, index)
	if DataQuestPrac.chapterData[index] then return DataQuestPrac.chapterData[index] end
	local base = loadstring(string.format('return %s',DataQuestPrac.chapterGetFunc[index]))() if not base then return end
	DataQuestPrac.chapterData[index]={
		part=base[1],
		chapter=base[2],
		sections=base[3],
		name=base[4],
		desc=base[5],
		treasure=base[6],
		unit_model=base[7]
	}
	return DataQuestPrac.chapterData[index]
end
setmetatable(DataQuestPrac.data_chapter, mt)