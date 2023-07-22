MarketPaiMaiSellSelectPanel = MarketPaiMaiSellSelectPanel or BaseClass(BasePanel)

function MarketPaiMaiSellSelectPanel:__init(parent)
    self.parent = parent
    self.model = parent.model
    self.name = "MarketPaiMaiSellSelectPanel"

    self.resList = {
        { file = AssetConfig.market_paimaisell_select_window, type = AssetType.Main },
        { file = AssetConfig.slotbg,                          type = AssetType.Dep },
    }

    self.pageObjList = { nil, nil, nil, nil, nil } -- 4个页签
    self.pageInitedList = { false, false, false, false, false }

    self.multiPutExcepts = {}

    self.slotList = {}
    local model = self.model
    self.extra = { inbag = true, nobutton = true }

    self.maxValue = 0
    self.openListener = function()
        self:OnOpen()
    end
    self.hideListener = function()
        self:OnHide()
    end

    self.OnOpenEvent:Add(self.openListener)
    self.OnHideEvent:Add(self.hideListener)
end

function MarketPaiMaiSellSelectPanel:InitPanel()
    self.gameObject = GameObject.Instantiate(self:GetPrefab(AssetConfig.market_paimaisell_select_window))
    self.gameObject.name = "PaiMaiSellSelectWindow"
    self.gameObject.transform:SetParent(self.parent.gameObject.transform)
    local model                   = self.model

    self.rectTransform            = self.gameObject:GetComponent(RectTransform)
    self.rectTransform.offsetMin  = Vector2(0, 0)
    self.rectTransform.offsetMax  = Vector2(0, 0)
    self.rectTransform.localScale = Vector3.one

    local t                       = self.gameObject.transform
    local mainObj                 = t:Find("Main")
    local panelObj                = t:Find("Panel")
    local allItemDic              = BackpackManager.Instance.itemDic -- 拿到背包的字典
    self.itemDic                  = {}                  -- pos 为key
    local c                       = 1
    for k, v in pairs(allItemDic) do
        -- if v.bind ~= 1 and DataMarketTbank.data_market_tbank_item[v.base_id] ~= nil then  -- 非绑定的物品 月光女神碎片
        --     self.itemDic[c] = v
        --     c = c + 1
        -- end
        self.itemDic[c] = v
        c = c + 1
    end

    self.loadItemCount = 0

    --UIUtils.AddUIChild(model.marketWin.gameObject, self.gameObject)

    self.sellPanel = mainObj:Find("SellPanel")

    -- 信息面板
    local infoPanel = mainObj:Find("InfoPanel")
    local addBtn = nil
    local minusBtn = nil
    self.nameText = infoPanel:Find("NameText"):GetComponent(Text)
    self.funcText = infoPanel:Find("DescText"):GetComponent(Text)
    self.descText2 = infoPanel:Find("DescText2"):GetComponent(Text)
    self.desc2Rect = infoPanel:Find("DescText2"):GetComponent(RectTransform)
    self.descText3 = infoPanel:Find("DescText3"):GetComponent(Text)

    self.scroll = infoPanel:Find("Scroll"):GetComponent(ScrollRect)
    self.scrollContainer = self.scroll.gameObject.transform:Find("Container")
    self.desclayout = LuaBoxLayout.New(self.scrollContainer, { axis = BoxLayoutAxis.Y, cspacing = 0 })

    self.desc2Rect.anchorMin = Vector2(0, 1)
    self.desc2Rect.anchorMax = Vector2(0, 1)
    self.desc2Rect.pivot = Vector2(0, 1)

    self.msgItemExt = MsgItemExt.New(self.descText2, 270, 16, 16)

    --local totalObj = infoPanel:Find("TotalObject")  -- 总价
    --self.totalText = totalObj:Find("TotalBg/Value"):GetComponent(Text)
    --self.totalCurrencyImage = totalObj:Find("CurrencyImage"):GetComponent(Image)
    local priceObj = infoPanel:Find("PriceObject")
    self.priceText = priceObj:Find("PriceBg/Value"):GetComponent(Text) -- 低价
    self.priceBtn = priceObj:Find("PriceBg"):GetComponent(Button)
    self.priceBtn.onClick:AddListener(function() self:OnNumberpad() end)
    self.currencyImage = priceObj:Find("CurrencyImage"):GetComponent(Image)
    local numObj = infoPanel:Find("NumObject")
    self.numText = numObj:Find("NumBg/Value"):GetComponent(Text) -- 数量

    --小键盘
    self.numberpadSetting = { -- 弹出小键盘的设置
        gameObject = self.priceBtn.gameObject,
        min_result = 1,
        max_by_asset = math.huge,
        max_result = math.huge,
        textObject = self.priceText,
        show_num = false,
        funcReturn = function(num) self.maxValue = num end,
        callback = nil
    }

    --self.discountText = infoPanel:Find("I18N_Text"):GetComponent(Text)   -- 推荐价格

    -- addBtn = priceObj:Find("PlusButton"):GetComponent(Button)   --底价按钮
    -- addBtn.onClick:AddListener(function ()
    --     local lastSelectPos = model.lastSelectPos
    --     if lastSelectPos == nil or lastSelectPos == 0 then
    --         NoticeManager.Instance:FloatTipsByString(TI18N("请选择上架物品"))
    --         return
    --     end
    --     local model = self.model
    --     local lastSelectPos = model.lastSelectPos
    --     local infodata = self.itemDic[lastSelectPos]
    --     if infodata == nil then
    --         return
    --     end
    --     local base_id = infodata.base_id
    --     local serverPrice = model.standardPriceServerByBaseId[base_id]
    --     if serverPrice == nil then
    --         serverPrice = DataMarketTbank.data_market_tbank_item[base_id].def_price
    --     end
    --     local sliverData = DataMarketTbank.data_market_tbank_item[base_id]
    --     local basedata = DataItem.data_get[base_id]
    --     -- if model.posToPercent[lastSelectPos] < 130 then
    --     --     if math.floor((model.posToPercent[lastSelectPos] + 10) * serverPrice / 100) <= sliverData.max_price then
    --     --         model.posToPercent[lastSelectPos] = model.posToPercent[lastSelectPos] + 10
    --     --         if model.posToPercent[lastSelectPos] > 130 then
    --     --             model.posToPercent[lastSelectPos] = 130
    --     --         end
    --     --     elseif math.floor((model.posToPercent[lastSelectPos] + 1) * serverPrice / 100) < sliverData.max_price then
    --     --         model.posToPercent[lastSelectPos] = math.floor(sliverData.max_price / serverPrice * 100)
    --     --     else
    --     --         --这里要做个限制，玩家可以输入 无限制金币
    --     --         NoticeManager.Instance:FloatTipsByString(ColorHelper.color_item_name(basedata.quality, basedata.name)..TI18N("不能再贵了{face_1,31}"))
    --     --     end
    --     -- else
    --     --     NoticeManager.Instance:FloatTipsByString(TI18N("不能再贵了"))
    --     -- end
    --     -- 这里玩家输入的价格
    --     self.priceText.text = tostring(math.floor(model.posToPercent[lastSelectPos] * serverPrice / 100))
    --     self:UpdateDiscount()
    --    -- self.totalText.text = tostring(tonumber(self.priceText.text) * tonumber(self.numText.text))
    --    -- self.lastPrecent = model.posToPercent[lastSelectPos]
    -- end)
    -- minusBtn = priceObj:Find("MinusButton"):GetComponent(Button)
    -- minusBtn.onClick:AddListener(function ()
    --     local model = self.model
    --     local lastSelectPos = model.lastSelectPos
    --     local infodata = self.itemDic[lastSelectPos]
    --     local lastSelectPos = model.lastSelectPos
    --     if infodata == nil then
    --         return
    --     end
    --     local base_id = infodata.base_id
    --     local serverPrice = model.standardPriceServerByBaseId[base_id]
    --     if serverPrice == nil then
    --         serverPrice = DataMarketTbank.data_market_tbank_item[base_id].def_price
    --     end
    --     local sliverData = DataMarketTbank.data_market_tbank_item[base_id]
    --     local basedata = DataItem.data_get[base_id]
    --     if lastSelectPos == nil or lastSelectPos == 0 then
    --         return
    --     end
    --     if model.posToPercent[lastSelectPos] > 50 then
    --         if math.floor((model.posToPercent[lastSelectPos] - 10) * serverPrice / 100) >= sliverData.min_price then
    --             model.posToPercent[lastSelectPos] = model.posToPercent[lastSelectPos] - 10
    --             if model.posToPercent[lastSelectPos] % 10 ~= 0 then
    --                 model.posToPercent[lastSelectPos] = 120
    --             end
    --         else
    --             NoticeManager.Instance:FloatTipsByString(ColorHelper.color_item_name(basedata.quality, basedata.name)..TI18N("不能再便宜了{face_1,21}"))
    --         end
    --     else
    --         NoticeManager.Instance:FloatTipsByString(TI18N("不能再便宜了"))
    --     end
    --     self.priceText.text = tostring(math.floor(model.posToPercent[lastSelectPos] * serverPrice / 100))
    --     self:UpdateDiscount()
    --     --self.totalText.text = tostring(tonumber(self.priceText.text) * tonumber(self.numText.text))
    --     self.lastPrecent = model.posToPercent[lastSelectPos]
    -- end)

    addBtn = numObj:Find("PlusButton"):GetComponent(Button) -- 数量按钮
    addBtn.onClick:AddListener(function()
        local model = self.model
        local lastSelectPos = model.lastSelectPos

        if lastSelectPos == nil or lastSelectPos == 0 then
            return
        end
        local infodata = self.itemDic[lastSelectPos]
        local num = tonumber(self.numText.text) -- 当前的数量

        -- 这里要更改，不能超过物品下标数量，提示，不能超过物品数量
        if num < infodata.quantity then
            num = num + 1
        else
            NoticeManager.Instance:FloatTipsByString(TI18N("不能超过物品数量"))
        end
        self.posToNumber[lastSelectPos] = num
        self.numText.text = tostring(num)
        --self.totalText.text = tostring(tonumber(self.priceText.text) * num)
    end)
    minusBtn = numObj:Find("MinusButton"):GetComponent(Button)
    minusBtn.onClick:AddListener(function()
        local model = self.model
        local lastSelectPos = model.lastSelectPos
        if lastSelectPos == nil or lastSelectPos == 0 then
            return
        end
        local infodata = self.itemDic[lastSelectPos]
        local num = tonumber(self.numText.text)
        if num > 1 then
            num = num - 1
        else
            NoticeManager.Instance:FloatTipsByString(TI18N("最少上架一个物品"))
        end
        self.posToNumber[lastSelectPos] = num
        self.numText.text = tostring(num)
        -- self.totalText.text = tostring(tonumber(self.priceText.text) * num)
    end)

    -- 上架
    self.putButton = infoPanel:Find("PutButton"):GetComponent(Button)
    self.putButton.onClick:AddListener(function()
        local count = model.sellSelectNum
        -- 计算空格
        local pos = 0
        self.backpackIdToPos = {}

        if count == 1 then
            if model.lastSelectPos == nil then
                NoticeManager.Instance:FloatTipsByString(TI18N("请选择上架物品"))
                return
            end
        end

        --当前物品的数量
        local itemNum = tonumber(self.numText.text)
        if itemNum == 0 then
            NoticeManager.Instance:FloatTipsByString(TI18N("请选择上架物品"))
            return
        end
        -- 价格 
        local maxPrice = self.maxValue
        -- 发送上架
        for k, v in pairs(self.posToOrder) do
            if k > 0 and v ~= nil then
                local id = self.posToBackpackId[k]
                if id ~= nil then
                    local base_id = self.itemDic[k].base_id

                    local itemName = self.itemDic[k].name
                    local confirmData = NoticeConfirmData.New()
                    confirmData.type = ConfirmData.Style.Normal
                    --  "<color='#ffff00'>长按[购买]</color>可批量购买"    #ff4500
                    local str = "是否确定上架[".."<color='#ffff00'>"..itemName.."</color>".."]"
                    local str2 ="以低价".."<color='#ffff00'>"..maxPrice.."</color>".."的".."<color='#ff4500'>".."万象币,".."</color>".."价格上架，数量："
                    local str3 = "<color='#ffff00'>"..itemNum.."</color>".."个。"
                    confirmData.content = TI18N(str..str2..str3)
                    confirmData.sureSecond = -1
                    confirmData.cancelSecond = -1
                    confirmData.sureLabel = TI18N("确认")
                    confirmData.cancelLabel = TI18N("取消")
                    confirmData.sureCallback = function()
                        if count > 0 then
                            self.parent:CloseSell()
                        else
                            NoticeManager.Instance:FloatTipsByString(TI18N("请选择上架物品"))
                        end
                        -- 发送上架协议
                        MarketManager.Instance:send16705(base_id, itemNum, maxPrice) --请求上架物品                
                    end
                    NoticeManager.Instance:ConfirmTips(confirmData)
                end
            end
        end
    end)

    local closeBtn = mainObj:Find("CloseButton"):GetComponent(Button)
    closeBtn.onClick:AddListener(function()
        self.parent:CloseSell()
    end)
    self.gameObject.transform:Find("Panel"):GetComponent(Button).onClick:AddListener(function()
        self.parent:CloseSell()
    end)

    self.sellScrollRect = self.sellPanel:Find("ScrollView"):GetComponent(ScrollRect)

    -- 分页模板
    self.sellPanel:Find("ScrollView/Container/ItemPage"):GetComponent(Image).sprite = self.assetWrapper:GetSprite(
    AssetConfig.slotbg, "SlotBg")
    self.itemPageTemplate = self.sellPanel:Find("ScrollView/Container/ItemPage").gameObject
    local role_info = RoleManager.Instance.role_info

    local setting = {
        axis = BoxLayoutAxis.X
        ,
        spacing = 20
    }
    self.boxXLayout = LuaBoxLayout.New(self.sellPanel:Find("ScrollView/Container").gameObject, setting)
    self.itemPageTemplate:SetActive(false)

    -- 生成分页
    for i = 1, 5 do
        local itemPage = GameObject.Instantiate(self.itemPageTemplate)
        itemPage.name = "itemPage" .. i
        self.pageObjList[i] = itemPage
        self.boxXLayout:AddCell(itemPage)
        itemPage.transform.localScale = Vector3.one
    end
    self.tabbedPanel = TabbedPanel.New(self.sellScrollRect.gameObject, 5, 350)
    self.tabbedPanel.MoveEndEvent:Add(function(currentPage, direction) self:OnMoveEnd(currentPage, direction) end)

    local toggleGroup = self.sellPanel:Find("ToggleGroup")
    self.toggleList = { nil, nil, nil, nil, nil }
    for i = 1, 5 do
        self.toggleList[i] = toggleGroup:Find("Toggle" .. i):GetComponent(Toggle)
        self.toggleList[i].isOn = false
    end
    self.toggleList[1].isOn = true

    self.slot = ItemSlot.New()
    -- UIUtils.AddUIChild(infoPanel:Find("Item"), self.slot.gameObject)
    NumberpadPanel.AddUIChild(infoPanel:Find("Item"), self.slot.gameObject)

    self.OnOpenEvent:Fire()
end

function MarketPaiMaiSellSelectPanel:OnOpen()
    local model = self.model
    self.loadItemCount = 0
    model.lastSelectPos = nil
    self.posToNumber = {}     -- 上架对应id商品的数量
    model.posToPercent = {}   -- 上架对应id商品的调价百分比
    self.backpackIdToPos = {} -- 上架对应商品的cell_id
    self.sellBackpackIdList = {}
    self.posToOrder = {}      -- 选中的物品列表，key=物品pos，value=点击顺序
    self.posToOrder[0] = 0    -- 辅助
    model.sellSelectOrder = 1 -- 选中顺序
    model.lastSelectPos = nil -- 最后选中物品的id（窗格id，不是base_id）
    model.sellSelectNum = 0   -- 选中的item数目
    self.maxSelectableNum = 0
    self.posToBackpackId = {} -- 存储所有的物品ID
    self.posToOrder[0] = 0
    model.sellSelectOrder = 1

    for i = 1, #self.itemDic do
        if self.itemDic[i].id == model.targetBaseId then -- 此处targetBaseid是背包唯一id，非basd_id
            model.lastSelectPos = i
            break
        end
    end

    if model.sellCellItem ~= nil then
        for i = 1, #model.sellCellItem do
            if model.sellCellItem[i].item_base_id == nil then
                self.maxSelectableNum = self.maxSelectableNum + 1
            end
        end
        self.maxSelectableNum = 2
    end

    local currentPage = 1
    if model.lastSelectPos ~= nil then
        currentPage = math.ceil(model.lastSelectPos / 25)
    end
    self:InitDataPanel(currentPage - 1)
    self:InitDataPanel(currentPage)
    self:InitDataPanel(currentPage + 1)
    self:UpdateInfoPanel()
end

function MarketPaiMaiSellSelectPanel:OnHide()
    self.posToOrder = nil
    self.posToNumber = nil
    self.backpackIdToPos = nil
    self.sellBackpackIdList = nil
    self.posToBackpackId = nil
    self.maxValue = 0
end

function MarketPaiMaiSellSelectPanel:__delete()
    self.OnHideEvent:Fire()
    if self.msgItemExt ~= nil then
        self.msgItemExt:DeleteMe()
        self.msgItemExt = nil
    end
    if self.boxXLayout ~= nil then
        self.boxXLayout:DeleteMe()
        self.boxXLayout = nil
    end
    if self.tabbedPanel ~= nil then
        self.tabbedPanel:DeleteMe()
        self.tabbedPanel = nil
    end
    if self.desclayout ~= nil then
        self.desclayout:DeleteMe()
        self.desclayout = nil
    end
    -- if self.sellPanel ~= nil then
    --     self.sellPanel:DeleteMe()
    --     self.sellPanel = nil
    -- end

    if self.numberpadSetting ~= nil then
        self.numberpadSetting.textObject = nil
        self.numberpadSetting = nil
    end
    if self.slot ~= nil then
        self.slot:DeleteMe()
        self.slot = nil
    end
    if self.slotList ~= nil then
        for _, v in pairs(self.slotList) do
            v:DeleteMe()
        end
        self.slotList = nil
    end
    if self.oneclickPanel ~= nil then
        self.oneclickPanel:DeleteMe()
        self.oneclickPanel = nil
    end
    if self.gameObject ~= nil then
        GameObject.DestroyImmediate(self.gameObject)
        self.gameObject = nil
    end
    self.OnOpenEvent:Remove(self.openListener)
    self.OnHideEvent:Remove(self.hideListener)
    self:AssetClearAll()
end

function MarketPaiMaiSellSelectPanel:OnNumberpad()
    -- local model = self.model
    -- if model.goldChosenBaseId == nil then  -- 如果选择的物品为空
    --     NoticeManager.Instance:FloatTipsByString(TI18N("请选择需要购买的物品"))
    -- else
    --     local maxValue = DataItem.data_get[model.goldChosenBaseId].overlap
    --     if maxValue > 20 then
    --         maxValue = 20
    --     end
    --     self.numberpadSetting.max_result = maxValue
    --     NumberpadManager.Instance:set_data(self.numberpadSetting)
    -- end
    local num = 0
    for k, _ in pairs(self.posToOrder) do
        num = num + 1
    end
    if num <= 1 then
        NoticeManager.Instance:FloatTipsByString(TI18N("请选择物品"))
    else
        NumberpadManager.Instance:set_data(self.numberpadSetting)
    end
end

--选中物品
function MarketPaiMaiSellSelectPanel:SelectItem(item)
    local model = self.model
    local theId = tonumber(item.name)

    local id = self.posToBackpackId[theId]
    local base_id
    if id ~= nil then
        local base_id = self.itemDic[theId].base_id
        if model.standardPriceServerByBaseId[base_id] == nil then
            MarketManager.Instance:send12408(base_id, 2) --查询银币市场物品价格
        end
    end
    -- 确定当前选中的item的选中顺序
    if model.lastSelectPos == nil then -- 首次选中
        -- model.posToPercent[theId] = self.lastPrecent or 100
        self:UpdateItemSelectState(item, true, theId)
        model.lastSelectPos = theId
        self.posToOrder[theId] = model.sellSelectOrder
        --model.sellSelectOrder = model.sellSelectOrder + 1
        model.sellSelectOrder = 1
        model.sellSelectNum = 1
        -- self.lastPrecent = model.posToPercent[theId]
    else
        if model.lastSelectPos == 0 then
            self:UpdateItemSelectState(item, true, theId)
            model.lastSelectPos = theId
            self.posToOrder[theId] = model.sellSelectOrder
            model.sellSelectOrder = 1
            model.sellSelectNum = 1
        elseif self.posToOrder[theId] == nil then -- 点击未选中的物品
            -- if model.sellSelectNum >= self.maxSelectableNum then
            --     NoticeManager.Instance:FloatTipsByString(TI18N("已经达到上限，不能选择更多"))
            --     return
            -- end
            self:UpdateItemSelectState(item, true, theId)
            self.posToOrder[model.lastSelectPos] = nil
            self.posToOrder[theId] = model.sellSelectOrder
            model.sellSelectOrder = model.sellSelectOrder + 1
            model.lastSelectPos = theId
            --model.sellSelectNum = model.sellSelectNum + 1
            model.sellSelectOrder = 1
            model.sellSelectNum = 1
        else -- 点击已选中的物品，即取消选择
            --     self:UpdateItemSelectState(item, false,theId)
            --     self.posToOrder[theId] = nil
            --     local lastSelectId = 0
            --     for k,v in pairs(self.posToOrder) do
            --         if v ~= nil then
            --             if self.posToOrder[k] > self.posToOrder[lastSelectId] then
            --                 lastSelectId = k
            --             end
            --         end
            --     end
            --     model.lastSelectPos = lastSelectId
            --    -- model.sellSelectNum = model.sellSelectNum - 1
            --     model.sellSelectNum = 1
        end
    end
    self:UpdateInfoPanel()
end

function MarketPaiMaiSellSelectPanel:UpdateItemSelectState(item, bool, theId)
    local model = self.model
    local currentPage = 1
    if model.lastSelectPos ~= nil then
        currentPage = math.ceil(model.lastSelectPos / 25)
    end

    if currentPage < 1 or currentPage > math.ceil(#self.itemDic / 25) then
        return
    end
    local t = self.pageObjList[currentPage].transform
    for i = 1, 25 do
        local go = t:GetChild(i - 1).gameObject
        if go ~= nil then
            go.transform:Find("Select").gameObject:SetActive(false)
            -- go:SetActive(false)
        end
    end

    item.transform:Find("Select").gameObject:SetActive(bool)
    -- 遍历所有的物品，只显示该物品select
end

function MarketPaiMaiSellSelectPanel:UpdateInfoPanel()
    local model = self.model
    local lastSelectId = model.lastSelectPos

    self.desclayout:ReSet()

    if lastSelectId == nil or lastSelectId == 0 or self.posToBackpackId[lastSelectId] == nil or BackpackManager.Instance.itemDic[self.posToBackpackId[lastSelectId]] == nil then
        -- item_slot:SetActive(false)
        -- item_text.text = ""
        -- ui_market_sell.update_price()
        self.nameText.text = ""
        self.funcText.text = ""

        self.desc2Rect.anchorMin = Vector2(0, 1)
        self.desc2Rect.anchorMax = Vector2(0, 1)
        self.desc2Rect.pivot = Vector2(0, 1)

        --self.msgItemExt:SetData(TI18N("请点击左侧的物品，\n选择多个物品可批量上架"))
        if self.desc2Rect.sizeDelta.x < 270 then
            local y = self.desc2Rect.sizeDelta.y
            self.desc2Rect.sizeDelta = Vector2(270, y)
        end
        self.desclayout:AddCell(self.msgItemExt.contentTxt.gameObject)
        self.descText3.text = ""
        self.numText.text = "0"
        self.priceText.text = "0"
        --self.discountText.text = ""
        --self.totalText.text = "0"
        if self.slot ~= nil then
            self.slot.gameObject:SetActive(false)
        end
    else
        local itemData = BackpackManager.Instance.itemDic[self.posToBackpackId[lastSelectId]]
        local basedata = DataItem.data_get[itemData.base_id]

        local item_name = basedata.name
        if itemData.step ~= 0 and itemData.type ~= 158 then item_name = string.format("%s Lv.%s", item_name,
                tostring(itemData.step)) end
        -- item_text.text = utils.color_item_name(basedata.quality, item_name)

        local ddesc = basedata.desc
        local time_limit_text = ""
        if itemData.step ~= nil and itemData.step ~= 0 then
            time_limit_text = string.format(TI18N("品阶:%s"), tostring(itemData.step))
            local step_data = DataSkillLife.data_fight_effect
            [string.format("%s_%s", tostring(basedata.id), tostring(itemData.step))]
            if step_data ~= nil then
                ddesc = string.gsub(ddesc, "%[skill_life1%]", tostring(step_data.args[1]))
                ddesc = string.gsub(ddesc, "%[skill_life2%]", tostring(step_data.args[2]))
            else
                ddesc = string.gsub(ddesc, "%[skill_life1%]", TI18N("一定"))
                ddesc = string.gsub(ddesc, "%[skill_life2%]", TI18N("一定"))
            end
        else
            time_limit_text = ""
            ddesc = string.gsub(ddesc, "%[skill_life1%]", TI18N("一定"))
            ddesc = string.gsub(ddesc, "%[skill_life2%]", TI18N("一定"))
        end

        if itemData.step ~= nil and itemData.step ~= 0 then
            self.showStep = true
            time_limit_text = string.format(TI18N("品阶:%s"), itemData.step)
            local step_data = DataExperienceBottle.data_get_exp[itemData.step]
            if step_data ~= nil then
                ddesc = string.gsub(ddesc, "%[exp_bottle1%]", step_data.lev_min)
                ddesc = string.gsub(ddesc, "%[exp_bottle2%]", step_data.lev_max)
                ddesc = string.gsub(ddesc, "%[exp_bottle3%]", step_data.exp)
            else
                ddesc = string.gsub(ddesc, "%[exp_bottle1%]", TI18N("一定"))
                ddesc = string.gsub(ddesc, "%[exp_bottle2%]", TI18N("一定"))
                ddesc = string.gsub(ddesc, "%[exp_bottle3%]", TI18N("一定"))
            end
        else
            time_limit_text = ""
            ddesc = string.gsub(ddesc, "%[exp_bottle1%]", TI18N("一定"))
            ddesc = string.gsub(ddesc, "%[exp_bottle2%]", TI18N("一定"))
            ddesc = string.gsub(ddesc, "%[exp_bottle3%]", TI18N("一定"))
        end

        local height = 0
        local strs = {}
        for s1, s2 in string.gmatch(ddesc, "(.+);(.+)") do
            strs = { s1, s2 }
        end
        local msg = nil
        self.nameText.text = item_name
        self.funcText.text = string.format(TI18N("作用:%s"), basedata.func)
        if #strs == 0 then
            msg = ddesc
            self.descText2.gameObject:SetActive(true)
            self.descText3.text = ""
            self.descText3.gameObject:SetActive(false)
        else
            msg = strs[1]
            self.descText2.gameObject:SetActive(true)
            self.descText3.text = strs[2]
            self.descText3.gameObject:SetActive(true)
        end

        self.desc2Rect.anchorMin = Vector2(0, 1)
        self.desc2Rect.anchorMax = Vector2(0, 1)
        self.desc2Rect.pivot = Vector2(0, 1)

        self.msgItemExt:SetData(msg, true)
        if self.desc2Rect.sizeDelta.x < 270 then
            local y = self.desc2Rect.sizeDelta.y
            self.desc2Rect.sizeDelta = Vector2(270, y)
        end
        self.desclayout:AddCell(self.msgItemExt.contentTxt.gameObject)

        self.numText.text = tostring(self.posToNumber[lastSelectId])
        -- if self.posToNumber[lastSelectId] < 5 then
        --     self.numText.text = tostring(self.posToNumber[lastSelectId])
        -- else
        --     self.numText.text = "5"
        -- end
        local standardPrice = model.standardPriceServerByBaseId[self.itemDic[lastSelectId].base_id]
        if standardPrice == nil then
            -- self.priceText.text = tostring(math.floor(model.posToPercent[lastSelectId] * DataMarketTbank.data_market_tbank_item[self.itemDic[lastSelectId].base_id].def_price / 100))
        else
            -- self.priceText.text = tostring(math.floor(model.posToPercent[lastSelectId] * standardPrice / 100))
        end

        -- 金币图像
        -- if DataMarketTbank.data_market_tbank_item[itemData.base_id].gain_label == "coin" then
        --     self.currencyImage.sprite = PreloadManager.Instance:GetSprite(AssetConfig.base_textures, "Assets90000")
        --    -- self.totalCurrencyImage.sprite = PreloadManager.Instance:GetSprite(AssetConfig.base_textures, "Assets90000")
        -- elseif DataMarketTbank.data_market_tbank_item[itemData.base_id].gain_label == "gold_bind" then
        --     self.currencyImage.sprite = PreloadManager.Instance:GetSprite(AssetConfig.base_textures, "Assets90003")
        --    -- self.totalCurrencyImage.sprite = PreloadManager.Instance:GetSprite(AssetConfig.base_textures, "Assets90003")
        -- else
        --     self.currencyImage.sprite = PreloadManager.Instance:GetSprite(AssetConfig.base_textures, "Assets90002")
        --    -- self.totalCurrencyImage.sprite = PreloadManager.Instance:GetSprite(AssetConfig.base_textures, "Assets90002")
        -- end

        self:UpdateDiscount()
        --self.totalText.text = tostring(tonumber(self.priceText.text) * tonumber(self.numText.text))

        self.slot.gameObject:SetActive(true)
        self.slot:SetAll(itemData, self.extra)
    end
end

-- 获取下一个空cell
function MarketPaiMaiSellSelectPanel:GetNextEmptyCell(begin)
    local cellItemList = self.model.sellCellItem
    local pos
    for i = begin + 1, #cellItemList do
        if cellItemList[i].cell_id == nil then
            pos = i
            break
        end
    end
    return pos
end

function MarketPaiMaiSellSelectPanel:UpdateDiscount()
    local model = self.model
    local lastSelectId = model.lastSelectPos
    if lastSelectId == 0 then
        return
    end
    local msg
    local colorRich
    -- if model.posToPercent[lastSelectId] > 100 then
    --     msg = "+"..model.posToPercent[lastSelectId].."%"
    --     colorRich = "<color=#FF0000>"
    -- elseif model.posToPercent[lastSelectId] < 100 then
    --     msg = "-"..model.posToPercent[lastSelectId].."%"
    --     colorRich = "<color=#13FFA1>"
    -- else
    --     msg = "100%"
    --     colorRich = ""
    -- end
    if colorRich == "" then
        -- self.discountText.text = string.format(TI18N("推荐价格%s"), msg)
    else
        -- self.discountText.text = string.format(TI18N("%s推荐价格%s</color>"), colorRich, msg)
    end
end

function MarketPaiMaiSellSelectPanel:InitDataPanel(index)
    if index < 1 or index > math.ceil(#self.itemDic / 25) then
        return
    end

    local t = self.pageObjList[index].transform
    local model = self.model
    for i = 1, 25 do
        local go = t:GetChild(i - 1).gameObject
        if go ~= nil then
            go.transform:Find("Select").gameObject:SetActive(false)
            go:SetActive(false)
        end
    end
    for i = 1, 25 do
        self.loadItemCount = self.loadItemCount + 1
        if self.loadItemCount > #self.itemDic then
            break
        end

        local basedata = DataItem.data_get[self.itemDic[self.loadItemCount].base_id]
        local go = t:GetChild(i - 1).gameObject
        go.transform:Find("Slot"):GetComponent(Image).color = Color(0, 0, 0, 0)
        go.transform:Find("Num").gameObject:SetActive(false)

        local slot = self.slotList[(index - 1) * 25 + i]
        if slot == nil then
            slot = ItemSlot.New()
            NumberpadPanel.AddUIChild(go.transform, slot.gameObject)
            self.slotList[(index - 1) * 25 + i] = slot
        end
        local itemdata = ItemData.New()
        itemdata:SetBase(basedata)
        slot:SetAll(itemdata, { inbag = true, nobutton = true })
        slot:SetNum(self.itemDic[self.loadItemCount].quantity)
        slot.gameObject.transform:SetAsFirstSibling()

        local btn = go:GetComponent(Button)
        btn.onClick:RemoveAllListeners()
        btn.onClick:AddListener(function()
            self:SelectItem(go)
        end)
        go:SetActive(true)
        go.name = tostring(self.loadItemCount)
        self.posToBackpackId[self.loadItemCount] = self.itemDic[self.loadItemCount].id
        --model.posToPercent[self.loadItemCount] = 100
        self.posToNumber[self.loadItemCount] = self.itemDic[self.loadItemCount].quantity
        -- if self.posToNumber[self.loadItemCount] > 5 then
        --     self.posToNumber[self.loadItemCount] = 5
        -- end
    end
    self.pageInitedList[index] = true
    if t:Find(tostring(model.lastSelectPos)) ~= nil then
        self:SelectItem(t:Find(tostring(model.lastSelectPos)).gameObject)
    end
end

function MarketPaiMaiSellSelectPanel:OnMoveEnd(currentPage, direction)
    if direction == LuaDirection.Left then
        if next(self.toggleList) ~= nil and currentPage > 1 then
            self.toggleList[currentPage - 1].isOn = false
            self.toggleList[currentPage].isOn = true
        end
        if currentPage < 5 then
            if currentPage > 1 and self.pageInitedList[currentPage + 1] == false then
                self:InitDataPanel(currentPage + 1)
            end
        end
    elseif direction == LuaDirection.Right then
        if next(self.toggleList) ~= nil and currentPage < 5 then
            self.toggleList[currentPage + 1].isOn = false
            self.toggleList[currentPage].isOn = true
        end
    end
end

function MarketPaiMaiSellSelectPanel:OpenOneclickPanel()
    if self.oneclickPanel == nil then
        self.oneclickPanel = MarketOneClickPutPanel.New(self.model, self.model.marketWin.gameObject)
    end
    self.oneclickPanel:Show()
end
