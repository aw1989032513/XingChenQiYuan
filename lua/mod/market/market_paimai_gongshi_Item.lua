MarketPaiMaiGongShiItem = MarketPaiMaiGongShiItem or BaseClass()

function MarketPaiMaiGongShiItem:__init(model, gameObject, index)
    self.model = model
    self.gameObject = gameObject
    self.transform = gameObject.transform
    local t = self.transform
    self.index = index

    self.timeId = 0
    self.newTime = 0;

    self.priceText = t:Find("PriceText"):GetComponent(Text)
    self.itemSlot = t:Find("ItemSlot"):GetComponent(Button)
    self.itemImg = t:Find("ItemSlot/ItemImg"):GetComponent(Image)
    self.selectObj = t:Find("Select").gameObject
    self.des = t:Find("Des"):GetComponent(Text)
    -- 拍卖时间
    self.time = t:Find("Time"):GetComponent(Text)
    self.btn = gameObject:GetComponent(Button) -- 自身按钮
    self.bgImage = t:Find("bg"):GetComponent(Image)

    self.rect = gameObject:GetComponent(RectTransform)
    --关注按钮
    self.guanzhuBtn = t:Find("GuanZhu"):GetComponent(Button)
    self.guanzhuBtn.onClick:AddListener(function() self:OnGuanZhuClick() end)

    self.btn.onClick:AddListener(function() self:OnClick() end)

    self.originColor = self.bgImage.color
    --物品格子按钮
    self.itemSlot.onClick:AddListener(function() self:OnItemSlotClick() end)
end

function MarketPaiMaiGongShiItem:__delete()
    if self.itemdata ~= nil then
        self.itemdata:DeleteMe()
        self.itemdata = nil
    end
    self.model = nil
    self:EndTime()
    self.newTime = 0
end

function MarketPaiMaiGongShiItem:update_my_self(data, index)
    self:SetActive(false)
    if data == nil then
        return
    end
    self.data = data
    self.index = index
    local itemData = DataItem.data_get[data.base_id]
    local marketData = DataMarketTbank.data_market_tbank_item["1_" .. tostring(data.base_id)]
    -- 设置价格
    self.priceText.text = data.cur_price

    -- 拍卖时间
    self.newTime = self.data.time

    -- 物品格子里面的图片
    self:SetImg(itemData.icon)
    self.des.text = marketData.name

    if index % 2 == 1 then
        self.bgImage.color = Color(127 / 255, 178 / 255, 235 / 255)
    else
        self.bgImage.color = self.originColor
    end
    self.selectObj:SetActive(self.model.selectPos == index)
    if self.model.selectPos == index then
        self.model.lastSelectObj = self.selectObj
    end

    self:SetActive(true)

    --self:DoCountDown()
    self:Update()
end

--旧的时间算法
function MarketPaiMaiGongShiItem:DoCountDown()
    if self.timeId ~= nil then
        LuaTimer.Delete(self.timeId)
    end
    self.timeId = LuaTimer.Add(0, 1000, function(id) self:ShowRestTimeToRefresh(id) end)
end

function MarketPaiMaiGongShiItem:ShowRestTimeToRefresh(id)
    local time = self.newTime - BaseUtils.BASE_TIME
    local msg = "00:00:00"
    msg = os.date("00:%M:%S", time)
    self.time.text = msg
    if time <= 0 then
        -- NoticeManager.Instance:FloatTipsByString(TI18N("该物品公示结束"))

        -- 发送协议公示结束

        if self.timeId ~= nil then
            LuaTimer.Delete(self.timeId)
        end
    end
end

function MarketPaiMaiGongShiItem:SetActive(bool)
    self.gameObject:SetActive(bool)
end

function MarketPaiMaiGongShiItem:OnGuanZhuClick()
    -- 弹出个Tips 并且切换图片
    NoticeManager.Instance:FloatTipsByString(TI18N("关注成功"))
end

function MarketPaiMaiGongShiItem:OnClick()
    local model = self.model
    if model.lastSelectObj ~= nil then
        model.lastSelectObj:SetActive(false)
    end
    self.selectObj:SetActive(true)
    model.lastSelectObj = self.selectObj

    model.goldChosenBaseId = self.data.base_id
    model.selectPos = self.index

    model.targetBaseId = nil
    -- model.lastGoldTime = nil
    -- model.goldBuyNum = 1
end

function MarketPaiMaiGongShiItem:OnItemSlotClick()
    local cell = DataItem.data_get[self.data.base_id]
    if self.itemdata ~= nil then
        self.itemdata:DeleteMe()
    end
    self.itemdata = ItemData.New()
    self.itemdata:SetBase(cell)
    local marketData = DataMarketTbank.data_market_tbank_item[self.data.base_id]
    TipsManager.Instance:ShowItem({gameObject = self.gameObject, itemData = self.itemdata, extra = {nobutton = true, inbag = false,tipsOffsetX = -700}})
end

function MarketPaiMaiGongShiItem:SetImg(iconId)
    if self.imgLoader == nil then
        local go = self.itemImg.gameObject
        self.imgLoader = SingleIconLoader.New(go)
    end
    self.imgLoader:SetSprite(SingleIconType.Item, iconId)
    --self:ShowImg(true)
end


--另一套时间写法
function MarketPaiMaiGongShiItem:Update()
    self:EndTime()

    self.time.text = string.format(TI18N("<color='#00ff00'>%s</color>"), self:GetTimeStr(self.newTime))
    self:BeginTime()
end

function MarketPaiMaiGongShiItem:BeginTime()
    self.timeId = LuaTimer.Add(0, 1000, function() self:Loop() end)
end
function MarketPaiMaiGongShiItem:Loop()
    self.newTime = self.newTime - 1
    if self.newTime < 0 then   --如果时间到了
        self:EndTime()
        -- NoticeManager.Instance:FloatTipsByString(TI18N("该物品公示结束"))

        -- 发送协议公示结束
    else
        self.time.text = string.format(TI18N("<color='#00ff00'>%s</color>"), self:GetTimeStr(self.newTime))
    end
end

function MarketPaiMaiGongShiItem:GetTimeStr(countTime) 
    local day,hour,min,second = BaseUtils.time_gap_to_timer(math.floor(countTime))   
    local timeStr = tostring(hour)
    if hour < 10 then
        timeStr = string.format("0%d",hour)
    end
    if min < 10 then
        timeStr = string.format("%s:0%d",timeStr,min)
    else
        timeStr = string.format("%s:%d",timeStr,min)
    end
    if second < 10 then
        timeStr = string.format("<color='#13fc60'>%s:0%d</color>",timeStr,second)
    else
        timeStr = string.format("<color='#13fc60'>%s:%d</color>",timeStr,second)
    end
    --NoticeManager.Instance:FloatTipsByString(TI18N(day.."天"..hour.."小时"..min.."分钟"..second))  
    return timeStr
end
function MarketPaiMaiGongShiItem:EndTime()
    if self.timeId ~= nil then
        LuaTimer.Delete(self.timeId)
        self.timeId = nil
    end
end
--另一套时间写法
