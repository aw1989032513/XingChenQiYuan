MarketPaiMaiPanel = MarketPaiMaiPanel or BaseClass(BasePanel)

function MarketPaiMaiPanel:__init(parent)
    self.parent = parent
    self.model = parent.model

    self.resList = {
        { file = AssetConfig.market_paimai_panel, type = AssetType.Main }
        , { file = AssetConfig.market_textures, type = AssetType.Dep }
    }

    self.gameObject = nil
    self.subPanelList = {}
    self.tabList = {{index = 1},{index = 2 },{index = 3},{index = 4}}

    --self.updateRedPoint = self.redListener

    self.openListener = function() self:OnOpen() end
    self.hideListener = function() self:OnHide() end
    --self.onReloadGoldMarketListener = function() self:OnReloadMarketGold() end
    self.OnOpenEvent:Add(self.openListener)
    self.OnHideEvent:Add(self.hideListener)
    self.timerId = nil
    
    self.threePanel = {nil,nil,nil}

end

function MarketPaiMaiPanel:InitPanel()
    self.gameObject = GameObject.Instantiate(self:GetPrefab(AssetConfig.market_paimai_panel))
    self.gameObject.name = "PaiMaiMarket"
    self.gameObject:SetActive(true)

    self.gameObject.transform:SetParent(self.parent.gameObject.transform:Find("Main"))
    
    self.rectTransform = self.gameObject:GetComponent(RectTransform)
    self.rectTransform.offsetMin =  Vector2(0,0)
    self.rectTransform.offsetMax =  Vector2(0,0)
    self.gameObject.transform.localPosition = Vector3(0, 0, 0)
    self.gameObject.transform.localScale = Vector3(1, 1, 1)

    local role_info = RoleManager.Instance
    local role_assets = RoleManager.Instance.RoleData
    local model = self.model

    --页面的切换
    self.tabContainer = self.gameObject.transform:Find("Title/TopTabButtonGroup")
    self.btnPageTabList = { nil, nil, nil, nil }
    for i = 1, 4 do
        self.btnPageTabList[i] = self.tabContainer:Find("PageTab" .. i)
        if self.btnPageTabList[i] ~= nil then
            self.btnPageTabList[i] = self.btnPageTabList[i]:GetComponent(Button)
            self.btnPageTabList[i].onClick:AddListener(function()
                for j = 1, 4 do
                    self.btnPageTabList[j].gameObject:GetComponent(Image).sprite = PreloadManager.Instance:GetSprite(
                        AssetConfig.base_textures, "DefaultButton5")
                end
                self.btnPageTabList[i].gameObject:GetComponent(Image).sprite = PreloadManager.Instance:GetSprite(
                    AssetConfig.base_textures, "DefaultButton7")
                -- 切换页面功能
                self:TurnPage(i)
            end)
        end
    end
    self:OnOpen()
end

-- 已经购买面板
function MarketPaiMaiPanel:InitPurchasedPanell()
    self.PurchasedCellObjList = {} -- 中间格子的数据
    self.doSavePurchasedPosition = true -- 保存位置的
    self.isPurchasedRefrshData = false
    -- 初始化右边的SellShowPanel
    self.PurchasedPanel = self.gameObject.transform:Find("PurchasedPanel").gameObject
    self.fourPanel[3] = self.PurchasedPanel
    self.PurchasedPanelContainer = self.PurchasedPanel.transform:Find("Purchased_ShowPanel/mask/Scroll/Container")
    self.PurchasedPanelContainerRect = self.PurchasedPanelContainer:GetComponent(RectTransform)
    self.v_Purchased_Scroll = self.PurchasedPanel.transform:Find("Purchased_ShowPanel/mask/Scroll"):GetComponent(ScrollRect)
    self.PurchaseditemObjTemplate = self.PurchasedPanelContainer:Find("Item").gameObject
    self.PurchaseditemObjTemplate:SetActive(false)
 
    self.PurchasedSetting_data = {
        item_list = self.PurchasedCellObjList                                                            --放了 item类对象的列表
        ,
        data_list = {}                                                                          --数据列表
        ,
        item_con = self.PurchasedPanelContainer                                                       --item列表的父容器
        ,
        single_item_height = self.PurchaseditemObjTemplate:GetComponent(RectTransform).sizeDelta.y       --一条item的高度
        ,
        item_con_last_y = self.PurchasedPanelContainer:GetComponent(RectTransform).anchoredPosition.y --父容器改变时上一次的y坐标
        ,
        scroll_con_height = self.v_Purchased_Scroll:GetComponent(RectTransform).sizeDelta.y                --显示区域的高度
        ,
        item_con_height = 0                                                                     --item列表的父容器高度
        ,
        scroll_change_count = 0                                                                 --父容器滚动累计改变值
        ,
        data_head_index = 0                                                                     --数据头指针
        ,
        data_tail_index = 0                                                                     --数据尾指针
        ,
        item_head_index = 1                                                                     --item列表头指针
        ,
        item_tail_index = 0                                                                     --item列表尾指针
    }
    self.v_Purchased_Scroll.onValueChanged:AddListener(function()
        if self.doSavePurchasedPosition then
            self.model.lastPosition = self.PurchasedPanelContainerRect.anchoredPosition.y
        end
        BaseUtils.on_value_change(self.PurchasedSetting_data)
    end)
    self.boxPurchasedYLayout = LuaBoxLayout.New(self.PurchasedPanelContainer, { axis = BoxLayoutAxis.Y, spacing = 3 })
    local obj = nil
    for i = 1, 15 do -- 生成3个格子 暂时不清楚要干嘛
        obj = GameObject.Instantiate(self.PurchaseditemObjTemplate)
        obj.name = tostring(i)
        self.boxPurchasedYLayout:AddCell(obj)
        obj:SetActive(false)
        self.PurchasedCellObjList[i] = MarketPaiMaiItem.New(self.model, obj)
    end
 end
 
 -- 更新中间出售列表
 function MarketPaiMaiPanel:UpdatePurchasedPanel()
     local model = self.parent.model
     local catalg_1 = model.currentGoldMain
     local catalg_2 = model.currentGoldSub
     local roleData = RoleManager.Instance.RoleData
 
     MarketManager.Instance.onUpdateRed:Fire()
     MarketManager.Instance.redPointDic[1][catalg_1] = MarketManager.Instance.redPointDic[1][catalg_1] or {}
 
     LuaTimer.Add(500, function()
         MarketManager.Instance.redPointDic[1][catalg_1][catalg_2] = false
     end)
 
     PlayerPrefs.SetInt(
         BaseUtils.Key(roleData.id, roleData.platform, roleData.zone_id, MarketManager.Instance.marketLocalSave, catalg_1,
             catalg_2), BaseUtils.BASE_TIME)
 
     if catalg_2 == 0 then
         catalg_2 = self.openCatalg2List[catalg_1]
         model.currentGoldSub = catalg_2
     end
 
     local itemList = model.goldItemList
     itemList[catalg_1] = itemList[catalg_1] or {}
     -- if itemList[catalg_1][catalg_2] == nil then
     --     --return
     -- end
 
     itemList = itemList[catalg_1][catalg_2] or {}
     if model.targetBaseId ~= nil then
         model.selectPos = nil
         for i = 1, #itemList do
             if itemList[i].base_id == model.targetBaseId then
                 model.selectPos = i
                 break
             end
         end
 
         if model.selectPos ~= nil then
             model.lastPosition = (model.selectPos - 1) * 42
             -- if self.buyPanelContainerRect.sizeDelta.y - model.lastPosition < 387 then
             --     model.lastPosition = self.buyPanelContainerRect.sizeDelta.y - 387
             -- end
             if self.buyPanelContainerRect.sizeDelta.y > 387 then
                 if self.buyPanelContainerRect.sizeDelta.y - model.lastPosition < 387 then
                     model.lastPosition = self.buyPanelContainerRect.sizeDelta.y - 387
                 end
             else
                 model.lastPosition = 0
             end
 
             model.goldChosenBaseId = model.targetBaseId
         end
     end
 
     self.sellSetting_data.data_list = itemList
     BaseUtils.refresh_circular_list(self.sellSetting_data) --这个地方会更新item的数据,调用update_my_self方法
 
     self.doSavePurchasedPosition = false
     self.v_Purchased_Scroll.onValueChanged:Invoke({ 0, 1 })
     self.PurchasedPanelContainerRect.anchoredPosition = Vector2(0, model.lastPosition)
     self.doSavePurchasedPosition = true
     self.v_Purchased_Scroll.onValueChanged:Invoke({ 0, 1 - model.lastPosition / self.SellPanelContainerRect.sizeDelta.y })
 
     self.isPurchasedRefrshData = false
 end


----------------------------以上是已经购买面板----------------------------------------------



function MarketPaiMaiPanel:TurnPage(index)
    local panel = nil
    local currentIndex = nil
    if self.lastIndex ~= nil then
        currentIndex = self.tabList[self.lastIndex].index
        panel = self.subPanelList[currentIndex]
    end
    if panel ~= nil then
        panel:Hiden()
    end
    currentIndex = index
    panel = self.subPanelList[currentIndex]
    if panel == nil then
        if currentIndex == 1 then
            self.subPanelList[currentIndex] = MarketPaiMaiBuyPanel.New(self)
        elseif currentIndex == 2 then
            self.subPanelList[currentIndex] = MarketPaiMaiSellPanel.New(self)
        elseif currentIndex == 3 then
            self.subPanelList[currentIndex] = MarketPaiMaiGongShiPanel.New(self)
        elseif currentIndex == 4 then
            self.subPanelList[currentIndex] = MarketPaiMaiPurchasedPanel.New(self)    
        end  
        panel = self.subPanelList[currentIndex]
    end

    self.lastIndex = currentIndex
    panel:Show()
    self.model.currentSub = 1
end

function MarketPaiMaiPanel:__delete()
    self.OnHideEvent:Fire()
    self.subPanel = nil

    if self.subPanelList ~= nil then
        for k,v in pairs(self.subPanelList) do
            if v ~= nil then
                v:DeleteMe()
            end
        end
        self.subPanelList = nil
    end
    if self.gameObject ~= nil then
        GameObject.DestroyImmediate(self.gameObject)
        self.gameObject = nil
    end
    self:AssetClearAll()
end

function MarketPaiMaiPanel:OnOpen()
    self:TurnPage(1)
end

function  MarketPaiMaiPanel:RemoveListeners()
    
end

--人物金币的变化
function MarketPaiMaiPanel:RoleAssetsListener()
    self.subPanelList[1]:RoleAssetsListener()
end

function MarketPaiMaiPanel:OnHide()
    self:RemoveListeners()

    self.subPanelList[self.lastIndex]:Hiden()
end