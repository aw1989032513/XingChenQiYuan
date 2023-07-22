--世界等级
DataWorldLev = DataWorldLev or {}

--经验加成
DataWorldLev.data_exp_length = 28
DataWorldLev.data_exp = {
	{lev_min = -100, lev_max = -20, exp_ratio = 2000, coin_ratio = 0},
	{lev_min = -19, lev_max = -19, exp_ratio = 1950, coin_ratio = 0},
	{lev_min = -18, lev_max = -18, exp_ratio = 1900, coin_ratio = 0},
	{lev_min = -17, lev_max = -17, exp_ratio = 1850, coin_ratio = 0},
	{lev_min = -16, lev_max = -16, exp_ratio = 1800, coin_ratio = 0},
	{lev_min = -15, lev_max = -15, exp_ratio = 1750, coin_ratio = 0},
	{lev_min = -14, lev_max = -14, exp_ratio = 1700, coin_ratio = 0},
	{lev_min = -13, lev_max = -13, exp_ratio = 1650, coin_ratio = 0},
	{lev_min = -12, lev_max = -12, exp_ratio = 1600, coin_ratio = 0},
	{lev_min = -11, lev_max = -11, exp_ratio = 1550, coin_ratio = 0},
	{lev_min = -10, lev_max = -10, exp_ratio = 1500, coin_ratio = 0},
	{lev_min = -9, lev_max = -9, exp_ratio = 1450, coin_ratio = 0},
	{lev_min = -8, lev_max = -8, exp_ratio = 1400, coin_ratio = 0},
	{lev_min = -7, lev_max = -7, exp_ratio = 1350, coin_ratio = 0},
	{lev_min = -6, lev_max = -6, exp_ratio = 1300, coin_ratio = 0},
	{lev_min = -5, lev_max = -5, exp_ratio = 1250, coin_ratio = 0},
	{lev_min = -4, lev_max = -4, exp_ratio = 1200, coin_ratio = 0},
	{lev_min = -3, lev_max = -3, exp_ratio = 1150, coin_ratio = 0},
	{lev_min = -2, lev_max = -2, exp_ratio = 1100, coin_ratio = 0},
	{lev_min = -1, lev_max = -1, exp_ratio = 1050, coin_ratio = 0},
	{lev_min = 0, lev_max = 1, exp_ratio = 920, coin_ratio = 0},
	{lev_min = 2, lev_max = 2, exp_ratio = 820, coin_ratio = 0},
	{lev_min = 3, lev_max = 3, exp_ratio = 720, coin_ratio = 0},
	{lev_min = 4, lev_max = 4, exp_ratio = 630, coin_ratio = 0},
	{lev_min = 5, lev_max = 5, exp_ratio = 540, coin_ratio = 0},
	{lev_min = 6, lev_max = 6, exp_ratio = 430, coin_ratio = 0},
	{lev_min = 7, lev_max = 7, exp_ratio = 370, coin_ratio = 0},
	{lev_min = 8, lev_max = 200, exp_ratio = 0, coin_ratio = 500}
}

--世界等级描述
DataWorldLev.data_desc_length = 19
DataWorldLev.data_desc = {
	[35] = {lev = 35, desc = "根据当前的世界等级，目前角色最高可升至<color='#ffff00'>43级</color>;下一世界等级<color='#ffff00'>（40级)</color>将开启：;1、角色等级可提升至<color='#ffff00'>48级</color>;2、秘宝锤可开出<color='#ffff00'>50级装备魂</color>;3、十二星座<color='#ffff00'>4星</color>将会出现绯月大陆"},
	[40] = {lev = 40, desc = "根据当前的世界等级，目前角色最高可升至<color='#ffff00'>48级</color>;下一世界等级<color='#ffff00'>（45级)</color>将开启：;1、角色等级可提升至<color='#ffff00'>53级</color>;2、秘宝锤可开出<color='#ffff00'>50级装备魂</color>;3、十二星座<color='#ffff00'>5星</color>将会出现绯月大陆"},
	[45] = {lev = 45, desc = "根据当前的世界等级，目前角色最高可升至<color='#ffff00'>53级</color>;下一世界等级<color='#ffff00'>（50级)</color>将开启：;1、角色等级可提升至<color='#ffff00'>58级</color>;2、秘宝锤可开出<color='#ffff00'>60级装备魂</color>;3、十二星座<color='#ffff00'>6星</color>将会出现绯月大陆"},
	[50] = {lev = 50, desc = "根据当前的世界等级，目前角色最高可升至<color='#ffff00'>58级</color>;下一世界等级<color='#ffff00'>（55级)</color>将开启：;1、角色等级可提升至<color='#ffff00'>63级</color>;2、秘宝锤可开出<color='#ffff00'>60级装备魂</color>;3、十二星座<color='#ffff00'>7星</color>将会出现绯月大陆"},
	[55] = {lev = 55, desc = "根据当前的世界等级，目前角色最高可升至<color='#ffff00'>63级</color>;下一世界等级<color='#ffff00'>（60级)</color>将开启：;1、角色等级可提升至<color='#ffff00'>68级</color>;2、秘宝锤可开出<color='#ffff00'>70级装备魂</color>;3、十二星座<color='#ffff00'>8星</color>将会出现绯月大陆"},
	[60] = {lev = 60, desc = "根据当前的世界等级，目前角色最高可升至<color='#ffff00'>68级</color>;下一世界等级<color='#ffff00'>（65级)</color>将开启：;1、角色等级可提升至<color='#ffff00'>73级</color>;2、秘宝锤可开出<color='#ffff00'>70级装备魂</color>;3、十二星座<color='#ffff00'>9星</color>将会出现绯月大陆"},
	[65] = {lev = 65, desc = "根据当前的世界等级，目前角色最高可升至<color='#ffff00'>73级</color>;下一世界等级<color='#ffff00'>（70级)</color>将开启：;1、角色等级可提升至<color='#ffff00'>78级</color>;2、秘宝锤可开出<color='#ffff00'>80级装备魂</color>;3、十二星座<color='#ffff00'>10星</color>将会出现绯月大陆"},
	[70] = {lev = 70, desc = "根据当前的世界等级，目前角色最高可升至<color='#ffff00'>78级</color>;下一世界等级<color='#ffff00'>（75级)</color>将开启：;1、角色等级可提升至<color='#ffff00'>83级</color>;2、秘宝锤可开出<color='#ffff00'>80级装备魂</color>;3、十二星座<color='#ffff00'>11星</color>将会出现绯月大陆"},
	[75] = {lev = 75, desc = "根据当前的世界等级，目前角色最高可升至<color='#ffff00'>83级</color>;下一世界等级<color='#ffff00'>（80级)</color>将开启：;1、角色等级可提升至<color='#ffff00'>88级</color>;2、秘宝锤可开出<color='#ffff00'>90级装备魂</color>;3、十二星座<color='#ffff00'>12星</color>将会出现绯月大陆"},
	[80] = {lev = 80, desc = "根据当前的世界等级，目前角色最高可升至<color='#ffff00'>88级</color>;1、秘宝锤可开出<color='#ffff00'>90级装备魂</color>;2、十二星座<color='#ffff00'>12星</color>已出现绯月大陆;下一世界等级<color='#ffff00'>（85级)</color>将开启：;角色等级可提升至<color='#ffff00'>93级</color>"},
	[85] = {lev = 85, desc = "根据当前的世界等级，目前角色最高可升至<color='#ffff00'>93级</color>;1、秘宝锤可开出<color='#ffff00'>90级装备魂</color>;2、十二星座<color='#ffff00'>12星</color>已出现绯月大陆;下一世界等级<color='#ffff00'>（90级)</color>将开启：;角色等级可提升至<color='#ffff00'>98级</color>"},
	[90] = {lev = 90, desc = "根据当前的世界等级，目前角色最高可升至<color='#ffff00'>98级</color>;1、秘宝锤可开出<color='#ffff00'>90级装备魂</color>;2、十二星座<color='#ffff00'>13星</color>已出现绯月大陆;下一世界等级<color='#ffff00'>（95级)</color>将开启：;角色等级可提升至<color='#ffff00'>100级</color>"},
	[95] = {lev = 95, desc = "<color='#ffff00'>*完成事件“世界边界”后，可使世界等级达到100*</color>;根据当前的世界等级，目前角色最高可升至<color='#ffff00'>100级</color>;1、秘宝锤可开出<color='#ffff00'>100级装备魂</color>;2、十二星座<color='#ffff00'>13星</color>已出现绯月大陆"},
	[100] = {lev = 100, desc = "根据当前的世界等级，目前角色最高可升至<color='#ffff00'>108级</color>;1、秘宝锤可开出<color='#ffff00'>100级装备魂</color>;2、十二星座<color='#ffff00'>14星</color>已出现绯月大陆"},
	[105] = {lev = 105, desc = "根据当前的世界等级，目前角色最高可升至<color='#ffff00'>113级</color>;1、秘宝锤可开出<color='#ffff00'>100级装备魂</color>;2、十二星座<color='#ffff00'>14星</color>已出现绯月大陆"},
	[110] = {lev = 110, desc = "根据当前的世界等级，目前角色最高可升至<color='#ffff00'>118级</color>;1、秘宝锤可开出<color='#ffff00'>100级装备魂</color>;2、十二星座<color='#ffff00'>14星</color>已出现绯月大陆"},
	[115] = {lev = 115, desc = "根据当前的世界等级，目前角色最高可升至<color='#ffff00'>123级</color>;1、秘宝锤可开出<color='#ffff00'>100级装备魂</color>;2、十二星座<color='#ffff00'>14星</color>已出现绯月大陆"},
	[120] = {lev = 120, desc = "根据当前的世界等级，目前角色最高可升至<color='#ffff00'>128级</color>;1、秘宝锤可开出<color='#ffff00'>100级装备魂</color>;2、十二星座<color='#ffff00'>14星</color>已出现绯月大陆"},
	[125] = {lev = 125, desc = "根据当前的世界等级，目前角色最高可升至<color='#ffff00'>130级</color>;1、秘宝锤可开出<color='#ffff00'>100级装备魂</color>;2、十二星座<color='#ffff00'>14星</color>已出现绯月大陆"}
}