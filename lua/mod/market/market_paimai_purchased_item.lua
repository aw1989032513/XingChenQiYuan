MarketPaiMaiPurchasedItem = MarketPaiMaiPurchasedItem or BaseClass()

function MarketPaiMaiPurchasedItem:__init(model, gameObject,index)
    self.model = model
    self.gameObject = gameObject
    self.transform = gameObject.transform
    local t = self.transform
    self.index = index

    self.priceText = t:Find("PriceText"):GetComponent(Text)
    self.itemSlot = t:Find("ItemSlot"):GetComponent(Button)
    self.itemImg = t:Find("ItemSlot/ItemImg"):GetComponent(Image)
    self.selectObj = t:Find("Select").gameObject

    self.btn = gameObject:GetComponent(Button)  -- 自身按钮 
    self.btn.onClick:AddListener(function() self:OnClick() end)

    self.bgImage = t:Find("bg"):GetComponent(Image)
    self.rect = gameObject:GetComponent(RectTransform)
    -- 税率
    self.priceText = t:Find("shuiLvTxt"):GetComponent(Text)

    self.originColor = self.bgImage.color
    --物品格子按钮
    self.itemSlot.onClick:AddListener(function() self:OnItemSlotClick() end)
    -- 操作按钮
    self.buyBtn = t:Find("BuyButton"):GetComponent(Button)
    self.buyBtn.onClick:AddListener(function() self:OnBuyBtnClick() end)
end

function MarketPaiMaiPurchasedItem:__delete()
    if self.itemdata ~= nil then
        self.itemdata:DeleteMe()
        self.itemdata = nil
    end
    self.model = nil
end


function MarketPaiMaiPurchasedItem:update_my_self(data, index)
    self:SetActive(false)
    if data == nil then
        return
    end
    self.data = data
    self.index = index
    local itemData = DataItem.data_get[data.base_id]
    local marketData = DataMarketGold.data_market_gold_item[data.base_id]
    self.priceText.text = data.cur_price
    if index % 2 == 1 then
        self.bgImage.color = Color(127/255, 178/255, 235/255)
    else
        self.bgImage.color = self.originColor
    end
    self.selectObj:SetActive(self.model.selectPos == index)
    if self.model.selectPos == index then
        self.model.lastSelectObj = self.selectObj
    end
    
    -- 这里设置itemSlot的物体图片    -- 这里根据服务器发送来的Item，来判断Item是否是空的，


    self:SetActive(true)
end

function MarketPaiMaiPurchasedItem:SetActive(bool)
    self.gameObject:SetActive(bool)
end

function MarketPaiMaiPurchasedItem:OnGuanZhuClick()
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

    local cell = DataItem.data_get[self.data.base_id]
    if self.itemdata ~= nil then
        self.itemdata:DeleteMe()
    end
    self.itemdata = ItemData.New()
    self.itemdata:SetBase(cell)
    local marketData = DataMarketGold.data_market_gold_item[self.data.base_id]
    --TipsManager.Instance:ShowItem({gameObject = self.gameObject, itemData = self.itemdata, extra = {nobutton = true, inbag = false, show_limit = marketData.day_limit > 0}})
    model.targetBaseId = nil
    model.lastGoldTime = nil
    model.goldBuyNum = 1
end

function MarketPaiMaiPurchasedItem:OnItemSlotClick()
    --判断物体是否是空的
   
    --如果有物体，弹出来物体信息

    --如果没有物体，弹出可上架道具信息面板  --MarketSellSelectPanel
    if self.sellWin == nil then
        self.sellWin = MarketSellSelectPanel.New(self)
    end
    self.sellWin:Show()
end

function MarketPaiMaiPurchasedItem:CloseSell()
    if self.sellWin ~= nil then
        self.sellWin:DeleteMe()
        self.sellWin = nil
    end
    -- if self.sellWin ~= nil then
    --     self.sellWin:Hiden()
    -- end
end

function MarketPaiMaiPurchasedItem:OnBuyBtnClick()
    
    end