MarketPaiMaiPurchasedItem = MarketPaiMaiPurchasedItem or BaseClass()

function MarketPaiMaiPurchasedItem:__init(parent, gameObject, index)
    self.parent = parent
    self.model = parent.model
    self.gameObject = gameObject
    self.transform = gameObject.transform
    local t = self.transform
    self.index = index

    self.timerId = 0
    self.newTime = 0;

    --交易价格
    self.priceText = t:Find("PriceText"):GetComponent(Text)
    --格子
    self.itemSlot = t:Find("ItemSlot"):GetComponent(Button)
    self.itemImg = t:Find("ItemSlot/ItemImg"):GetComponent(Image)
    self.selectObj = t:Find("Select").gameObject
    self.des = t:Find("Des"):GetComponent(Text)
    --拍卖时间

    self.btn = gameObject:GetComponent(Button) -- 自身按钮
    self.btn.onClick:AddListener(function() self:OnClick() end)
    self.bgImage = t:Find("bg"):GetComponent(Image)

    self.rect = gameObject:GetComponent(RectTransform)
    --取消按钮
    self.cancleBtn = t:Find("BuyButton"):GetComponent(Button)
    self.cancleBtn.onClick:AddListener(function() self:OnCaoZuoClick() end)

    --税率
    self.shuiLv = t:Find("shuiLvTxt"):GetComponent(Text)

    self.originColor = self.bgImage.color
    --物品格子按钮
    self.itemSlot.onClick:AddListener(function() self:OnItemSlotClick() end)
end

function MarketPaiMaiPurchasedItem:__delete()
    if self.itemdata ~= nil then
        self.itemdata:DeleteMe()
        self.itemdata = nil
    end
    self.model = nil
        if self.timerId ~= nil then
        LuaTimer.Delete(self.timerId)
    end
    self.newTime = 0
end

function MarketPaiMaiPurchasedItem:update_my_self(data, index)
    self:SetActive(false)
    if data == nil then
        return
    end
    self.data = data
    self.index = index
    local itemData = DataItem.data_get[data.base_id]
    local marketData = DataMarketTbank.data_market_tbank_item["1_" .. tostring(data.base_id)]

    -- 设置交易价格
     self.priceText.text = data.cur_price
    --设置税率
    self.shuiLv.text = data.shuiLv

    -- 物品格子里面的图片
    self:SetImg(itemData.icon,self.itemImg.gameObject)
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
end

function MarketPaiMaiPurchasedItem:SetActive(bool)
    self.gameObject:SetActive(bool)
end

function MarketPaiMaiPurchasedItem:OnCaoZuoClick()
    -- 弹出个Tips 并且切换图片
end

function MarketPaiMaiPurchasedItem:OnClick()
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

function MarketPaiMaiPurchasedItem:OnItemSlotClick()
    local cell = DataItem.data_get[self.data.base_id]
    if self.itemdata ~= nil then
        self.itemdata:DeleteMe()
    end
    self.itemdata = ItemData.New()
    self.itemdata:SetBase(cell)
    local marketData = DataMarketTbank.data_market_tbank_item[self.data.base_id]
    TipsManager.Instance:ShowItem({gameObject = self.gameObject, itemData = self.itemdata, extra = {nobutton = true, inbag = false,tipsOffsetX = -870}})

end
function MarketPaiMaiPurchasedItem:SetImg(iconId)
    if self.imgLoader == nil then
        local go = self.itemImg.gameObject
        self.imgLoader = SingleIconLoader.New(go)
    end
    self.imgLoader:SetSprite(SingleIconType.Item, iconId)
    --self:ShowImg(true)
end