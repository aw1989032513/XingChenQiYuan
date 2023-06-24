MarketPaiMaiItem = MarketPaiMaiItem or BaseClass()

function MarketPaiMaiItem:__init(model, gameObject)
    self.model = model
    self.gameObject = gameObject
    self.transform = gameObject.transform
    local t = self.transform
    self.nameText = t:Find("Text"):GetComponent(Text)
    self.priceText = t:Find("PriceText"):GetComponent(Text)
    self.btn = gameObject:GetComponent(Button)  -- 自身按钮
    self.bgImage = t:Find("bg"):GetComponent(Image)
    self.selectObj = t:Find("Select").gameObject
    self.rect = gameObject:GetComponent(RectTransform)

    self.originColor = self.bgImage.color

    self.btn.onClick:AddListener(function() self:OnClick() end)
end

function MarketPaiMaiItem:__delete()
    if self.itemdata ~= nil then
        self.itemdata:DeleteMe()
        self.itemdata = nil
    end
    self.model = nil
end

function MarketPaiMaiItem:update_my_self(data, index)
    self:SetActive(false)
    if data == nil then
        return
    end
    self.data = data
    self.index = index
    local itemData = DataItem.data_get[data.base_id]
    local marketData = DataMarketGold.data_market_gold_item[data.base_id]
    self.nameText.text = itemData.name
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

    self:SetActive(true)
end

function MarketPaiMaiItem:SetActive(bool)
    self.gameObject:SetActive(bool)
end

function MarketPaiMaiItem:OnClick()
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
