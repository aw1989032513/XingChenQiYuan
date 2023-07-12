MarketPaiMaiPurchasedPanel = MarketPaiMaiPurchasedPanel or BaseClass(BasePanel)

function MarketPaiMaiPurchasedPanel:__init(parent)
    self.parent = parent
    self.model = parent.model

    self.resList = {
        {file = AssetConfig.market_paimai_purchased_panel, type = AssetType.Main}
        , {file = AssetConfig.market_textures, type = AssetType.Dep}
    }

    
end

function MarketPaiMaiPurchasedPanel:InitPanel()
    self.gameObject = GameObject.Instantiate(self:GetPrefab(AssetConfig.market_paimai_purchased_panel))
    self.gameObject.name = "MarketPaiMaiPurchasedPanel"
    self.gameObject:SetActive(true)

    self.gameObject.transform:SetParent(self.parent.gameObject.transform:Find("Panel"))

    self.gameObject.transform.localPosition = Vector3(0, 0, 0)
    self.gameObject.transform.localScale = Vector3(1, 1, 1)

    self.SellCellObjList = {} 
    self.doSaveSellPosition = true -- 保存位置的
    self.isSellRefrshData = false


    self.SellPanelContainer = self.gameObject.transform:Find("Purchased_ShowPanel/mask/Scroll/Container")
    self.SellPanelContainerRect = self.SellPanelContainer:GetComponent(RectTransform)
    self.v_Sell_Scroll = self.gameObject.transform:Find("Purchased_ShowPanel/mask/Scroll"):GetComponent(ScrollRect)
    self.SellitemObjTemplate = self.SellPanelContainer:Find("Item").gameObject
    self.SellitemObjTemplate:SetActive(false)
 
    self.sellSetting_data = {
        item_list = self.SellCellObjList                                                            --放了 item类对象的列表
        ,
        data_list = {}                                                                          --数据列表
        ,
        item_con = self.SellPanelContainer                                                       --item列表的父容器
        ,
        single_item_height = self.SellitemObjTemplate:GetComponent(RectTransform).sizeDelta.y       --一条item的高度
        ,
        item_con_last_y = self.SellPanelContainer:GetComponent(RectTransform).anchoredPosition.y --父容器改变时上一次的y坐标
        ,
        scroll_con_height = self.v_Sell_Scroll:GetComponent(RectTransform).sizeDelta.y                --显示区域的高度
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
    self.v_Sell_Scroll.onValueChanged:AddListener(function()
        if self.doSaveSellPosition then
            self.model.lastPosition = self.SellPanelContainerRect.anchoredPosition.y
        end
        BaseUtils.on_value_change(self.sellSetting_data)
    end)
    self.boxSellYLayout = LuaBoxLayout.New(self.SellPanelContainer, { axis = BoxLayoutAxis.Y, spacing = 3 })
    local obj = nil
    for i = 1, 15 do -- 生成3个格子 暂时不清楚要干嘛
        obj = GameObject.Instantiate(self.SellitemObjTemplate)
        obj.name = tostring(i)
        self.boxSellYLayout:AddCell(obj)
        obj:SetActive(false)
        self.SellCellObjList[i] = MarketPaiMaiPurchasedItem.New(self.model, obj)
    end


    self.OnOpenEvent:Fire()
end

function MarketPaiMaiPurchasedPanel:__delete()
    if self.timerId ~= nil then
        LuaTimer.Delete(self.timerId)
        self.timerId = nil
    end
    self.OnHideEvent:Fire()
    self.model.lastSelectObj = nil
    if self.frozen ~= nil then
        self.frozen:DeleteMe()
        self.frozen = nil
    end
    if self.boxYLayout ~= nil then
        self.boxYLayout:DeleteMe()
        self.boxYLayout = nil
    end
    if self.gridPanel ~= nil then
        self.gridPanel:DeleteMe()
        self.gridPanel = nil
    end
    if self.cellObjectList ~= nil then
        for k,v in pairs(self.cellObjectList) do
            v:DeleteMe()
        end
        self.cellObjList = nil
    end
    self.setting_data = nil
    GameObject.DestroyImmediate(self.gameObject)
    self.OnOpenEvent:Remove(self.openListener)
    self.OnHideEvent:Remove(self.hideListener)
    self.gameObject = nil
    self.parent = nil
    self.isUp = nil
    self:AssetClearAll()
end

function MarketPaiMaiPurchasedPanel:OnOpen()


end

function MarketPaiMaiPurchasedPanel:OnHide()
    self:RemoveListeners()
    

    MarketManager.Instance.onUpdateRed:Fire()
end
-- 更新中间出售列表
function MarketPaiMaiPurchasedPanel:UpdateSellPanel()
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

    self.doSaveSellPosition = false
    self.v_Sell_Scroll.onValueChanged:Invoke({ 0, 1 })
    self.SellPanelContainerRect.anchoredPosition = Vector2(0, model.lastPosition)
    self.doSaveSellPosition = true
    self.v_Sell_Scroll.onValueChanged:Invoke({ 0, 1 - model.lastPosition / self.SellPanelContainerRect.sizeDelta.y })

    self.isSellRefrshData = false
end
function MarketPaiMaiPurchasedPanel:RoleAssetsListener()
    
end