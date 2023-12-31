MarketPaiMaiBuyPanel = MarketPaiMaiBuyPanel or BaseClass(BasePanel)
function MarketPaiMaiBuyPanel:__init(parent)
    self.parent = parent
    self.model = parent.model

    self.resList = {
        {file = AssetConfig.market_paimai_buy_panel, type = AssetType.Main}
        , {file = AssetConfig.market_textures, type = AssetType.Dep}
    }

    self.gameObject = nil
    self.btnObjList = {}         -- 左侧主按钮列表
    self.subbtnList = {}         -- 左侧次按钮列表的列表
    self.boolBarBtnOpenList = {} -- 应该是箭头意思
    -- self.parent.subPanel[1] = self
    self.openCatalg2List = {}
    self.itemObjTemplate = nil
    self.cellObjList = {} -- 中间格子的数据

    self.model.lastPosition = 0

    self.isRefrshData = false
    self.doSavePosition = true -- 保存位置的

    self.frozen = nil

    --self.redListener = function() self:CheckRed() end
    --self.levelListener = function() self:CheckOpen() end
    --self.worldLevListener = function() self:CheckOpen() end

    --self.updateRedPoint = self.redListener

    self.openListener = function() self:OnOpen() end
    self.hideListener = function() self:OnHide() end
    self.onReloadPaiMaiBuyMarketListener = function() self:OnReloadMarketPaiMaiBuy() end
    self.OnOpenEvent:Add(self.openListener)
    self.OnHideEvent:Add(self.hideListener)
    self.timerId = nil
end

function MarketPaiMaiBuyPanel:InitPanel()
    self.gameObject = GameObject.Instantiate(self:GetPrefab(AssetConfig.market_paimai_buy_panel))
    self.gameObject.name = "PaiMaiBuyPanel"
    self.gameObject:SetActive(true)

    self.gameObject.transform:SetParent(self.parent.gameObject.transform:Find("Panel"))

    self.gameObject.transform.localPosition = Vector3(0, 0, 0)
    self.gameObject.transform.localScale = Vector3(1, 1, 1)
    
    local role_info = RoleManager.Instance             --可以删除
    local role_assets = RoleManager.Instance.RoleData  --可以删除
    local model = self.model
    self.BuyPanel = self.gameObject

  
    self.subIndex = {}
    --  需要更改的读表
    -- local tabs =  DataMarketGold.data_market_gold_tab-- 11 根据DataMarketTbank.data_market_tbank_category  这个表配置
    -- for i = 1, DataMarketGold.data_market_gold_tab_length do   --DataMarketTbank.data_market_tbank_category_length
    --     if self.subIndex[tabs[i].catid] == nil then
    --         self.subIndex[tabs[i].catid] = {}
    --     end

    --     if tabs[i].world_lev <= role_info.world_lev then
    --         table.insert(self.subIndex[tabs[i].catid], tabs[i].catalg_2)
    --     end
    -- end

    --主按钮列表数量
    local tabs = DataMarketTbank.data_market_tbank_category
    for i = 1, DataMarketTbank.data_market_tbank_category_length do   --DataMarketTbank.data_market_tbank_category_length
        if self.subIndex[tabs[i].catid] == nil then
            self.subIndex[tabs[i].catid] = {}
        end
        table.insert(self.subIndex[tabs[i].catid], tabs[i].catname)
    end
    

    local btnList = DataMarketTbank.data_market_tbank_category  --DataMarketTbank.data_market_tbank_category   -- 有23个
    local btnContainer = self.BuyPanel.transform:Find("Bar/mask/Container")
    local btnTemplate = btnContainer:Find("Button").gameObject
    btnTemplate:SetActive(false)
    local subbtnTemplate = btnContainer:Find("SubButton").gameObject -- 次级列表
    subbtnTemplate:SetActive(false)

    local subbtnList = DataMarketTbank.data_market_tbank_subcategory
    
    local item = nil
    for k, v in ipairs(btnList) do   -- 遍历11个
        -- if v.world_lev <= role_info.world_lev then
        item = self.btnObjList[v.catid]
        self.boolBarBtnOpenList[v.catid] = false
        if item == nil then
            self.btnObjList[v.catid] = GameObject.Instantiate(btnTemplate)
            item = self.btnObjList[v.catid]
            item.transform:SetParent(btnContainer)
            item.transform.localScale = Vector3.one
            item.name = "Btn" .. v.catid
            self.subbtnList[v.catid] = {}

           -- self.openCatalg2List[v.catid] = v.catalg_2
            -- 左侧列表的主按钮
             item.transform:Find("MainButton"):GetComponent(Button).onClick:AddListener(function()
                 model.lastPaiMaiMain = model.currentPaiMaiMain   --1
                 model.currentPaiMaiMain = v.catid
                 if model.lastPaiMaiMain ~= model.currentPaiMaiMain then
                     model.currentPaiMaiSub = 1
                     model.jingpaiChosenBaseId = nil
                     model.selectPos = nil
                 end
                 model.targetBaseId = nil
                 self:UpdateMainButton() -- 更新按钮状态和箭头，高亮图片
                 self:UpdateSubButton()  -- 点击的时候，更新次级列表
                 self:ReloadBuyPanel()
             end)
            item.transform:Find("MainButton/Text"):GetComponent(Text).text = v.catname
        end
        -- 左侧列表按钮的次要列表按钮
     
      for i, j in pairs(subbtnList) do 
        for s, t in ipairs(j) do
            if i == k then
                --local tempsubbtnList ={}
                --tempsubbtnList[i]= GameObject.Instantiate(subbtnTemplate)
                local tempsubbtnList = self.subbtnList[v.catid]
                tempsubbtnList[s]= GameObject.Instantiate(subbtnTemplate)
                local subbtn = tempsubbtnList[s]
                subbtn.transform:SetParent(item.transform)   --btn1
                subbtn.transform.localScale = Vector3.one
                subbtn.name = "sub_" .. i  .."_" .. s
                subbtn:GetComponent(Button).onClick:AddListener(function()
                     model.lastGoldSub = model.currentPaiMaiSub
                     model.currentPaiMaiSub = s
                     model.targetBaseId = nil
                     model.jingpaiChosenBaseId = nil
                     model.selectPos = nil
                     model.lastPosition = 0
                     self:UpdateSubButton()
                     self:ReloadBuyPanel()
                 end)
                
                subbtn.transform:Find("Text"):GetComponent(Text).text = t.subname
            end
        end
      end
        item:SetActive(true)
        
    end

    -- 初始化右边的BuyShowPanel
    self.buyPanelContainer = self.BuyPanel.transform:Find("BuyShowPanel/mask/Scroll/Container")
    self.buyPanelContainerRect = self.buyPanelContainer:GetComponent(RectTransform)
    self.vScroll = self.BuyPanel.transform:Find("BuyShowPanel/mask/Scroll"):GetComponent(ScrollRect)
    self.itemObjTemplate = self.buyPanelContainer:Find("Item").gameObject
    self.itemObjTemplate:SetActive(false)

    self.setting_data = {
        item_list = self.cellObjList                                                            --放了 item类对象的列表
        ,
        data_list = {}                                                                          --数据列表
        ,
        item_con = self.buyPanelContainer                                                       --item列表的父容器
        ,
        single_item_height = self.itemObjTemplate:GetComponent(RectTransform).sizeDelta.y       --一条item的高度
        ,
        item_con_last_y = self.buyPanelContainer:GetComponent(RectTransform).anchoredPosition.y --父容器改变时上一次的y坐标
        ,
        scroll_con_height = self.vScroll:GetComponent(RectTransform).sizeDelta.y                --显示区域的高度
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
    self.vScroll.onValueChanged:AddListener(function()
        if self.doSavePosition then
            self.model.lastPosition = self.buyPanelContainerRect.anchoredPosition.y
        end
        BaseUtils.on_value_change(self.setting_data)
    end)
    self.boxBuyYLayout = LuaBoxLayout.New(self.buyPanelContainer, { axis = BoxLayoutAxis.Y, spacing = 3 })
    local obj = nil
    for i = 1, 15 do -- 生成3个格子 暂时不清楚要干嘛
        obj = GameObject.Instantiate(self.itemObjTemplate)
        obj.name = tostring(i)
        self.boxBuyYLayout:AddCell(obj)
        obj:SetActive(false)
        self.cellObjList[i] = MarketPaiMaiItem.New(self, obj)
    end

     self:InitBuyPanel()
     self:UpdateMainButton()
     self:UpdateSubButton()
     self:ReloadBuyPanel()
   
    self.OnOpenEvent:Fire()
end
function MarketPaiMaiBuyPanel:InitBuyPanel()
    local model = self.model
    self.BuyPanelBottom = self.BuyPanel.transform:Find("Bottom")
    --Notice 按钮
    self.noticeBtn = self.BuyPanelBottom.transform:Find("Notice"):GetComponent(Button)
    self.noticeBtn.onClick:AddListener(function() self:OnNotice() end)
    -- 竞价按钮
    self.buyButton = self.BuyPanelBottom.transform:Find("BuyButton"):GetComponent(CustomButton)
   -- self.buyButton.onClick:AddListener(function() self:OnBuy() end)
    self.frozen = FrozenButton.New(self.buyButton.gameObject, {})
    self.buyButton.onClick:AddListener(function() self:OnNumberpad() end) --onHold

    --资产
    local role_assets = RoleManager.Instance.RoleData
    self.assetGoldText = self.BuyPanelBottom:Find("Image/GoldVal"):GetComponent(Text)
    self.assetGoldText.color = Color(232/255, 250/255, 255/255, 1)
    self.assetGoldText.text = tostring(role_assets.gold_bind)
    ---  小键盘设置
    self.numberpadSetting = { -- 弹出小键盘的设置
        gameObject = self.buyButton.gameObject,
        min_result = 1,
        max_by_asset = math.huge,
        max_result = math.huge,
        textObject = nil,     -- textObject = self.priceText,
        funcReturn = function(num)
            --model.goldBuyNum = num
            if self.frozen.enabled == true then
                self:OnBuy(num)
            end
           -- model.goldBuyNum = 1
        end,
        callback = nil,
        show_num = true,
        returnText = TI18N("竞价"),
 
    }
    

    -- 加号 增加金币，直接打开充值界面
    self.addGoldButton = self.BuyPanelBottom.transform:Find("Image/AddGoldBtn"):GetComponent(Button)
    self.addGoldButton.onClick:AddListener(function () WindowManager.Instance:OpenWindowById(WindowConfig.WinID.exchange_window, 1) end)
end

function MarketPaiMaiBuyPanel:OnNotice()
    -- 这里弹出来一个面板，里面一堆话
    TipsManager.Instance:ShowText({
        gameObject = self.noticeBtn.gameObject,
        itemData = {
            -- TI18N("1.可找回<color='#00ff00'>2天</color>内未参加活动的奖励"),
            -- TI18N(
            -- "2.可选择<color='#ffff00'>完美找回</color>和<color='#ffff00'>普通找回</color>两种方式。<color='#ffff00'>完美找回</color>可找回<color='#00ff00'>100%</color>的奖励；<color='#ffff00'>普通找回</color>可找回<color='#00ff00'>60%</color>的奖励"),
            -- TI18N("3.人物等级高于世界等级<color='#00ff00'>7级及以上</color>时，无法找回<color='#ffff00'>经验</color>奖励")
           
            TI18N("1、上架道具后需要公示30分钟，公示后方可竞拍（晚上21点-24点上架的不需要公示）"),
            TI18N("2、00:00-21:00上架的商品在当日22:00前为竞拍阶段"),
            TI18N("3、21:00-24:00上架的商品到次日22:00为竞拍阶段"),
            TI18N("4、竞拍阶段其他玩家可以按最低5%的比例进行加价竞拍"),
            TI18N("5、参与竞拍需要消耗  ‘万象币’"),
            TI18N("6、有人竞价在竞拍阶段结束后价高者获得商品"),
            TI18N("7、若最后1分钟内有人出价则剩余竞拍时间会重置为5分钟"),
            TI18N("8、商品卖出后，扣除手续费，卖家会获得等额的元宝"),
            TI18N("9、商品如被拍走，请及时到交易行领取竞拍价"),
            TI18N("10、如果您有幸拍得商品，请及时到交易行领取商品"),
            TI18N("11、如果商品流拍，请及时到交易行领回商品")
        }
    })
end
function MarketPaiMaiBuyPanel:OnNumberpad()
    local model = self.model
    if model.jingpaiChosenBaseId == nil then
        NoticeManager.Instance:FloatTipsByString(TI18N("请选择需要购买的物品"))
    else
        local testStr = tostring(model.jingpaiChosenBaseId)
        NoticeManager.Instance:FloatTipsByString(TI18N(testStr))
        NumberpadManager.Instance:set_data(self.numberpadSetting)
    end
end

function MarketPaiMaiBuyPanel:OnBuy(num)
    local model = self.model
    local chosenId = model.jingpaiChosenBaseId
    local margin = 0
    local price = tostring(num)
    local tempID = tostring(chosenId)

   --此代码快测试专用
   if chosenId==nil then
    NoticeManager.Instance:FloatTipsByString(TI18N("请选择要竞价的商品"))
    else
        local confirmData = NoticeConfirmData.New()
        confirmData.type = ConfirmData.Style.Normal
                     local str = "是否确定以[".."<color='#ffff00'>"..price.."</color>".."]".."的价格竞拍".."<color='#ffff00'>"..tempID.."</color>"
                    -- local str2 ="以低价".."<color='#ffff00'>"..maxPrice.."</color>".."的".."<color='#ff4500'>".."万象币,".."</color>".."价格上架，数量："
                    -- local str3 = "<color='#ffff00'>"..itemNum.."</color>".."个。"
                    confirmData.content = TI18N(str)
                    confirmData.sureSecond = -1
                    confirmData.cancelSecond = -1
                    confirmData.sureLabel = TI18N("确认")
                    confirmData.cancelLabel = TI18N("取消")
                    confirmData.sureCallback = function()
                        -- 发送竞价协议                     
                        MarketManager.Instance:send12401(chosenId, model.goldBuyNum) -- 16700
                       -- NoticeManager.Instance:FloatTipsByString(TI18N("发送了竞价协议"..tempID.."价格："..price))            
                    end
                    NoticeManager.Instance:ConfirmTips(confirmData)
   end
--此代码快测试专用

    -- model.lastPosition = self.buyPanelContainerRect.anchoredPosition.y
    -- if chosenId ~= nil and model.paimaiBuyItemList[model.currentPaiMaiMain] ~= nil and model.paimaiBuyItemList[model.currentPaiMaiMain][model.currentPaiMaiSub] ~= nil then
    --     self.isRefrshData = true
    --     local itemlist = model.paimaiBuyItemList[model.currentPaiMaiMain][model.currentPaiMaiSub]
    --     for i,v in ipairs(itemlist) do
    --         if v.base_id == chosenId then
    --             margin = v.margin  -- 服务器发来的数据
    --             price = v.cur_price
    --             break
    --         end
    --     end

    --     -- 弹出购买的提示框
    --     local confirmData = NoticeConfirmData.New()
    --     confirmData.type = ConfirmData.Style.Normal
    --     local str = "是否确定上架[".."<color='#ffff00'>"..itemName.."</color>".."]"
    --                 local str2 ="以低价".."<color='#ffff00'>"..maxPrice.."</color>".."的".."<color='#ff4500'>".."万象币,".."</color>".."价格上架，数量："
    --                 local str3 = "<color='#ffff00'>"..itemNum.."</color>".."个。"
    --                 confirmData.content = TI18N(str..str2..str3)
    --                 confirmData.sureSecond = -1
    --                 confirmData.cancelSecond = -1
    --                 confirmData.sureLabel = TI18N("确认")
    --                 confirmData.cancelLabel = TI18N("取消")
    --                 confirmData.sureCallback = function()
    --                     -- 发送竞价协议 
    --                     local tempID = tostring(chosenId)
    --                     --MarketManager.Instance:send12401(chosenId, model.goldBuyNum)
    --                     NoticeManager.Instance:FloatTipsByString(TI18N("发送了竞价协议"..tempID))            
    --                 end
    --                 NoticeManager.Instance:ConfirmTips(confirmData)
    -- else
    --     NoticeManager.Instance:FloatTipsByString(TI18N("请选择要竞价的商品"))
    -- end
end

-- -- 更新按钮状态和箭头，高亮图片
function MarketPaiMaiBuyPanel:UpdateMainButton()
    local model = self.parent.model
    local catid = model.lastPaiMaiMain  -- 主按钮
    local mainBtn = nil

    if catid ~= nil then
        mainBtn = self.btnObjList[catid].transform:Find("MainButton").gameObject
        mainBtn.transform:Find("Arrow1").gameObject:SetActive(false)
        mainBtn.transform:Find("Arrow2").gameObject:SetActive(true)
        if catid ~= model.currentPaiMaiMain then
            self.boolBarBtnOpenList[catid] = false
        end
    else
        mainBtn = self.btnObjList[model.currentPaiMaiMain].transform:Find("MainButton").gameObject
        mainBtn.transform:Find("Arrow1").gameObject:SetActive(true)
        mainBtn.transform:Find("Arrow2").gameObject:SetActive(false)
        self.boolBarBtnOpenList[model.currentPaiMaiMain] = false
    end
    catid = model.currentPaiMaiMain    -- 第一个主按钮
    self.boolBarBtnOpenList[catid] = not self.boolBarBtnOpenList[catid]
    mainBtn = self.btnObjList[catid].transform:Find("MainButton").gameObject
    mainBtn.transform:Find("Arrow1").gameObject:SetActive(self.boolBarBtnOpenList[catid])
    mainBtn.transform:Find("Arrow2").gameObject:SetActive(not self.boolBarBtnOpenList[catid])

    for k, v in pairs(self.btnObjList) do
        local image = v.transform:Find("MainButton/Bg"):GetComponent(Image)
        image.sprite = PreloadManager.Instance:GetSprite(AssetConfig.base_textures, "DefaultButton8")
        v.transform:Find("MainButton/Text"):GetComponent(Text).color = ColorHelper.DefaultButton8
    end
    --DefaultButton9 是高亮的图片
    if self.boolBarBtnOpenList[catid] == true then
        self.btnObjList[catid].transform:Find("MainButton/Bg"):GetComponent(Image).sprite = PreloadManager.Instance
            :GetSprite(AssetConfig.base_textures, "DefaultButton9")
        self.btnObjList[catid].transform:Find("MainButton/Text"):GetComponent(Text).color = ColorHelper
            .DefaultButton9
    end
end

-- 刷新次列表isRefrshDataO
function MarketPaiMaiBuyPanel:UpdateSubButton()
    local model = self.parent.model
    local catid = model.currentPaiMaiMain --这个代表打开了哪个主按钮
    local catalg_2 = model.currentPaiMaiSub  --这个玩意代表下表，用来次列表来显示高亮的
    if catalg_2 == 0 then
        catalg_2 = self.openCatalg2List[catid]
    end
    local subbtnList = self.subbtnList[catid]

    local count = 0
    for k, v in ipairs(subbtnList) do
        if v ~= nil then
            count = count + 1
        end
    end
    for k, _ in ipairs(self.btnObjList) do
        for _, v in ipairs(self.subbtnList[k]) do
            v:SetActive(false) 
        end
    end

    if count >= 1 then
        --MarketManager.Instance.redPointDic[1][catid] = MarketManager.Instance.redPointDic[1][catid] or {}
        for k, v in ipairs(subbtnList) do
            v:SetActive(self.boolBarBtnOpenList[catid] and true)  --and model.paimaiOpenTab[catid][k]
            if k == catalg_2 then
                v.transform:Find("Select").gameObject:SetActive(true)
                v.transform:Find("Text"):GetComponent(Text).color = ColorHelper.DefaultButton11
            else
                v.transform:Find("Select").gameObject:SetActive(false)
                v.transform:Find("Text"):GetComponent(Text).color = ColorHelper.DefaultButton10
            end
           -- v.transform:Find("NotifyPoint").gameObject:SetActive(MarketManager.Instance.redPointDic[1][catid][k] ==
           --     true)
           end
    else

    end
end

---加载中间的购买面板
function MarketPaiMaiBuyPanel:ReloadBuyPanel()
    self:UpdateBuyPanel()

    local model = self.model
    local catid = model.currentPaiMaiMain
    local catalg_2 = model.currentPaiMaiSub
    if catalg_2 == 0 then
        catalg_2 = self.openCatalg2List[catid]
        model.currentPaiMaiSub = catalg_2
    end
    -- 这里请求当前Btn_subbtn 的协议给服务器
     -- MarketManager.Instance:send16700(catid, catalg_2)
     local emptyTable = {}
     MarketManager.Instance:send16700(emptyTable)
     NoticeManager.Instance:FloatTipsByString(TI18N("拍卖Buy——16700请求"))
end

-- 发送协议send12400000 会调用这个方法
-- 更新中间购买列表
function MarketPaiMaiBuyPanel:UpdateBuyPanel()
    local model = self.parent.model
    local catid = model.currentPaiMaiMain
    local catalg_2 = model.currentPaiMaiSub
    local roleData = RoleManager.Instance.RoleData
    PlayerPrefs.SetInt(
        BaseUtils.Key(roleData.id, roleData.platform, roleData.zone_id, MarketManager.Instance.marketLocalSave, catid,
            catalg_2), BaseUtils.BASE_TIME)


    local itemList = model.paimaiBuyItemList
    itemList[catid] = itemList[catid] or {}
    -- if itemList[catid][catalg_2] == nil then
    --     --return
    -- end

    itemList = itemList[catid][catalg_2] or {}
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

            model.jingpaiChosenBaseId = model.targetBaseId
        end
    end

    --测试物品代码

    local tempItemList = {}
    local xiaoxiongsuipian={base_id = 28612,cur_price = 6000,time = 16896734760 ,guanzhuState = true}
    table.insert(tempItemList,xiaoxiongsuipian)
    self.setting_data.data_list = tempItemList
    --测试

    --self.setting_data.data_list = itemList
    BaseUtils.refresh_circular_list(self.setting_data) --这个地方会更新item的数据,调用Update_my_self方法

    self.doSavePosition = false
    self.vScroll.onValueChanged:Invoke({ 0, 1 })
    self.buyPanelContainerRect.anchoredPosition = Vector2(0, model.lastPosition)
    self.doSavePosition = true
    self.vScroll.onValueChanged:Invoke({ 0, 1 - model.lastPosition / self.buyPanelContainerRect.sizeDelta.y })

    self.isRefrshData = false
end
-- 金币资产翻身发生变化
function MarketPaiMaiBuyPanel:RoleAssetsListener()
    if self.gameObject ~= nil and self.assetGoldText ~= nil then
        self.assetGoldText.text = tostring(RoleManager.Instance.RoleData.gold_bind) -- 玩家的金币数量
    end
end

function MarketPaiMaiBuyPanel:OnReloadMarketPaiMaiBuy()
    local model = self.model
    model.jingpaiChosenBaseId = nil
    model.selectPos = nil
    model.lastSelectObj = nil
    self:UpdateBuyPanel()
end

function MarketPaiMaiBuyPanel:RemoveListeners()
    MarketManager.Instance.onReloadPaiMaiBuyMarket:RemoveListener(self.onReloadPaiMaiBuyMarketListener)
    --EventMgr.Instance:RemoveListener(event_name.world_lev_change, self.worldLevListener)
    --EventMgr.Instance:RemoveListener(event_name.role_level_change, self.levelListener)
    EventMgr.Instance:RemoveListener(event_name.market_paimai_buy_update, self.onReloadPaiMaiBuyMarketListener)
end

function MarketPaiMaiBuyPanel:OnOpen()

    local noSub = true
    local model = self.model
    if model.currentPaiMaiSub ~= nil then
        for k,v in pairs(self.subIndex[model.currentPaiMaiMain]) do
            if v == model.currentPaiMaiSub then
                noSub = false
                break
            end
        end
    end
    if noSub then
        model.currentPaiMaiSub = 1
    end

    --self:CheckOpen()

    self:UpdateMainButton()
    self:UpdateSubButton()
    self:ReloadBuyPanel()

    self:RemoveListeners()
    --EventMgr.Instance:AddListener(event_name.world_lev_change, self.worldLevListener)
    --EventMgr.Instance:AddListener(event_name.role_level_change, self.levelListener)
    EventMgr.Instance:AddListener(event_name.market_paimai_buy_update, self.onReloadPaiMaiBuyMarketListener)  -- 数据的更新

    -- TipsManager.Instance:ShowText({
    --     gameObject = self.noticeBtn.gameObject,
    --     itemData = {
    --         TI18N("打开了拍卖购买面板"),
    --     }
    -- })


end
function MarketPaiMaiBuyPanel:OnHide()
    self:RemoveListeners()
    local roleData = RoleManager.Instance.RoleData
    if self.boolBarBtnOpenList ~= nil then
        for k,_ in pairs(self.boolBarBtnOpenList) do
            self.boolBarBtnOpenList[k] = false
        end
    end
    self.model.selectPos = nil
    self.model.jingpaiChosenBaseId = nil
    self.model.lastGoldTime = nil
    if self.arrowEffect ~= nil and not BaseUtils.isnull(self.arrowEffect.gameObject) then
        self.arrowEffect.gameObject:SetActive(false)
    end

    -- for k1,list in pairs(MarketManager.Instance.redPointDic[1]) do
    --     if list ~= nil then
    --         for k2,_ in pairs(list) do
    --             list[k2] = false
    --             PlayerPrefs.SetInt(BaseUtils.Key(roleData.id, roleData.platform, roleData.zone_id, MarketManager.Instance.marketLocalSave, k1, k2), BaseUtils.BASE_TIME)
    --         end
    --     end
    -- end

    -- MarketManager.Instance.onUpdateRed:Fire()
end
function MarketPaiMaiBuyPanel:__delete()
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
    if self.numberpadSetting ~= nil then
        self.numberpadSetting.textObject = nil
        self.numberpadSetting = nil
    end

    if self.cellObjList ~= nil then
        for k,v in pairs(self.cellObjList) do
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

function MarketPaiMaiBuyPanel:CheckOpen()
    -- MarketManager.Instance:CheckOpen()
    -- local model = self.model
    -- for main,item in pairs(self.btnObjList) do
    --     local bool = false
    --     local sublist = self.subbtnList[main]
    --     for k,v in pairs(model.goldOpenTab[main]) do
    --         sublist[k].gameObject:SetActive(v)
    --         bool = bool or v
    --     end
    --     item.gameObject:SetActive(bool) -- 这个Item指的btn7   goldOpenTab存在各个组件的true和false
    -- end

    for main,item in pairs(self.btnObjList) do
        item.gameObject:SetActive(true) 
    end

end