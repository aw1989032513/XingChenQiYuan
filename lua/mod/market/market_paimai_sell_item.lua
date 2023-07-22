MarketPaiMaiSellItem = MarketPaiMaiSellItem or BaseClass()

function MarketPaiMaiSellItem:__init(model, gameObject,index)
    self.model = model
    self.gameObject = gameObject
    self.transform = gameObject.transform
    local t = self.transform
    self.index = index

    self.timerId = 0
    self.newTime = 0;
    self.tempGo = nil;

    self.bgImage = t:Find("bg"):GetComponent(Image)
    self.priceText = t:Find("PriceText"):GetComponent(Text)
    self.itemSlot = t:Find("ItemSlot"):GetComponent(Button)
    self.itemImg = t:Find("ItemSlot/ItemImg"):GetComponent(Image)
    self.selectObj = t:Find("Select").gameObject
    self.des = t:Find("Des"):GetComponent(Text)
    -- 剩余时间
    self.time = t:Find("Time"):GetComponent(Text)
    self.btn = gameObject:GetComponent(Button)  -- 自身按钮 
    self.btn.onClick:AddListener(function() self:OnClick() end)
 
    self.rect = gameObject:GetComponent(RectTransform)
    --状态图片
    self.zhaunTaiImg = t:Find("GuanZhu"):GetComponent(Image)
  
    self.originColor = self.bgImage.color
    --物品格子按钮
    self.itemSlot.onClick:AddListener(function() self:OnItemSlotClick() end)
    -- 操作按钮
    self.caoZuoBtn = t:Find("CaoZuoButton"):GetComponent(Button)  -- 自身按钮 
    self.caoZuoBtn.onClick:AddListener(function() self:CaoZuoOnClick() end)
end

function MarketPaiMaiSellItem:__delete()
    if self.itemdata ~= nil then
        self.itemdata:DeleteMe()
        self.itemdata = nil
    end
    self.model = nil
    self:EndTime()
    self.newTime = 0
    
    if  self.tempGo ~= nil then
        self.tempGo = nil
    end
end

function MarketPaiMaiSellItem:CaoZuoOnClick()
  -- 弹出确认面板
  local confirmData = NoticeConfirmData.New()
  confirmData.type = ConfirmData.Style.Normal
              --local str = "是否确定以[".."<color='#ffff00'>"..price.."</color>".."]".."的价格竞拍".."<color='#ffff00'>"..tempID.."</color>"
              -- local str2 ="以低价".."<color='#ffff00'>"..maxPrice.."</color>".."的".."<color='#ff4500'>".."万象币,".."</color>".."价格上架，数量："
              -- local str3 = "<color='#ffff00'>"..itemNum.."</color>".."个。"
              local str = "是否要确定下架".."[".."<color='#ffff00'>"..self.des.text.."</color>".."]".."商品？"
              confirmData.content = TI18N(str)
              confirmData.sureSecond = -1
              confirmData.cancelSecond = -1
              confirmData.sureLabel = TI18N("确认")
              confirmData.cancelLabel = TI18N("取消")
              confirmData.sureCallback = function()
                  -- 发送下架物品协议                     
                  --MarketManager.Instance:send12401(chosenId, model.goldBuyNum)
                  NoticeManager.Instance:FloatTipsByString(TI18N("下架成功"))            
              end
              NoticeManager.Instance:ConfirmTips(confirmData)
end

function MarketPaiMaiSellItem:update_my_self(data, index)
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
   --剩余时间
   self.newTime = self.data.time

    -- 物品格子里面的图片
    self:SetImg(itemData.icon,self.itemImg.gameObject)
    self.des.text = marketData.name
    
     -- 状态图片  --根据服务器传递的数据，来显示
     if data.zhuangtai == 0 then   --
        self:SetImg(itemData.icon,self.zhaunTaiImg.gameObject)
     end

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
    -- 新时间算法
    self:Update()
end

function MarketPaiMaiSellItem:SetActive(bool)
    self.gameObject:SetActive(bool)
end


function MarketPaiMaiSellItem:OnClick()
    local model = self.model
    if model.lastSelectObj ~= nil then
        model.lastSelectObj:SetActive(false)
    end
    self.selectObj:SetActive(true)
    model.lastSelectObj = self.selectObj

    model.goldChosenBaseId = self.data.base_id
    model.selectPos = self.index


    --model.targetBaseId = nil
    --model.lastGoldTime = nil
   -- model.goldBuyNum = 1
end

function MarketPaiMaiSellItem:OnItemSlotClick()
    local cell = DataItem.data_get[self.data.base_id]
    if self.itemdata ~= nil then
        self.itemdata:DeleteMe()
    end
    self.itemdata = ItemData.New()
    self.itemdata:SetBase(cell)
    local marketData = DataMarketTbank.data_market_tbank_item[self.data.base_id]
    TipsManager.Instance:ShowItem({gameObject = self.gameObject, itemData = self.itemdata, extra = {nobutton = true, inbag = false,tipsOffsetX = -870}})
end

function MarketPaiMaiSellItem:CloseSell()
    if self.sellWin ~= nil then
        self.sellWin:DeleteMe()
        self.sellWin = nil
    end
    -- if self.sellWin ~= nil then
    --     self.sellWin:Hiden()
    -- end
end

function MarketPaiMaiSellItem:SetImg(iconId,go)
    local go = go
    if self.imgLoader == nil then
        self.imgLoader = SingleIconLoader.New(go)
    else 
        self.imgLoader:OnDestroy()
        self.imgLoader = SingleIconLoader.New(go)
    end
    self.imgLoader:SetSprite(SingleIconType.Item, iconId)
end

--另一套时间写法
function MarketPaiMaiSellItem:Update()
    self:EndTime()

    self.time.text = string.format(TI18N("<color='#00ff00'>%s</color>"), self:GetTimeStr(self.newTime))
    self:BeginTime()
end

function MarketPaiMaiSellItem:BeginTime()
    self.timeId = LuaTimer.Add(0, 1000, function() self:Loop() end)
end
function MarketPaiMaiSellItem:Loop()
    self.newTime = self.newTime - 1
    if self.newTime < 0 then   --如果时间到了
        self:EndTime()
        self.time.text = "--:--:--"
        --更换状态图片
       -- self:SetImg(itemData.icon,self.zhaunTaiImg.gameObject)
    else
        self.time.text = string.format(TI18N("<color='#00ff00'>%s</color>"), self:GetTimeStr(self.newTime))
    end
end

function MarketPaiMaiSellItem:GetTimeStr(countTime) 
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
function MarketPaiMaiSellItem:EndTime()
    if self.timeId ~= nil then
        LuaTimer.Delete(self.timeId)
        self.timeId = nil
    end
end
--另一套时间写法