GeneralBtnTips = GeneralBtnTips or BaseClass(BaseTips)

function GeneralBtnTips:__init(model)
    self.model = model

    self.resList = {
        {file = AssetConfig.tips_general_btn, type = AssetType.Main}
    }
    self.mgr = TipsManager.Instance
    self.maxWidth = 400
    self.width = 50
    self.height = 50
    self.buttons = {}
    self.DefaultSize = Vector2(315, 0)
    self.lastTime = 0

    self.msgExtTab = {}
    self.itemData = nil

    self.updateCall = function() self:UnRealUpdate() end
    self.OnHideEvent:Add(function() self:RemoveTime() end)
end

function GeneralBtnTips:__delete()
    self.mgr = nil
    for k,v in pairs(self.msgExtTab) do
        if v ~= nil then
            v:DeleteMe()
            self.msgExtTab[k] = nil
        end
    end
    self.msgExtTab = nil
    self.height = 20
    self:RemoveTime()
end

function GeneralBtnTips:RemoveTime()
    self.mgr.updateCall = nil
end

function GeneralBtnTips:InitPanel()
    self.gameObject = GameObject.Instantiate(self:GetPrefab(AssetConfig.tips_general_btn))
    self.gameObject.name = "GeneralBtnTips"
    self.transform = self.gameObject.transform
    self.transform:SetParent(self.model.tipsCanvas.transform)
    self.transform.localScale = Vector3.one
    self.transform.localPosition = Vector3.zero

    local btn = self.gameObject:GetComponent(Button)
    if btn == nil then
        btn = self.gameObject:AddComponent(Button)
    end
    btn.onClick:AddListener(function()
        self.model:Closetips()
    end)

    self.rect = self.gameObject:GetComponent(RectTransform)
    self.textTemplate = self.transform:Find("Main/Text").gameObject
    self.textTemplate:SetActive(false)

    self.container = self.transform:Find("Main/Container")

    self.btnObj = self.transform:Find("Main/Button").gameObject
    self.btnLabel = self.btnObj.transform:Find("Text"):GetComponent(Text)
    self.btnObj:GetComponent(Button).onClick:AddListener(function() self:ClickBtn() end)
end

function GeneralBtnTips:ClickBtn()
    if self.itemData ~= nil and self.itemData.callback ~= nil then
        self.itemData.callback()
    end
    self.model:Closetips()
end

function GeneralBtnTips:UpdateInfo(info)
    -- self:Default()
    for k,v in pairs(self.msgExtTab) do
        if v ~= nil then
            v:DeleteMe()
            self.msgExtTab[k] = nil
        end
    end
    self.msgExtTab = {}

    self.itemData = info
    local t = nil
    local item = nil
    local text = nil
    local w = nil
    local h = nil
    local maxH = 0
    local maxW = 0
    local textList = info.textList

    for i,v in ipairs(self.msgExtTab) do
        v:DeleteMe()
        v = nil
    end
    self.msgExtTab = {}

    self.btnLabel.text = info.btnText
    for i=1,self.lastTime do
        self.container:Find(tostring(i)).gameObject:SetActive(false)
    end
    if textList ~= nil then
        for i=1,#textList do
            t = self.container:Find(tostring(i))
            if t == nil then
                item = GameObject.Instantiate(self.textTemplate)
                item.name = tostring(i)
                UIUtils.AddUIChild(self.container, item)
            else
                item = t.gameObject
            end
            item:SetActive(true)
            text = item:GetComponent(Text)
            w, h = self:SetItem(text, textList[i], {x = 20, y = maxH + 20}, i)
            maxH = maxH + h
            if w > maxW then
                maxW = w
            end
        end

        self.lastTime = #textList
    end

    self.width = maxW + 40
    self.height = maxH + 40 + 60
    self.rect.sizeDelta = Vector2(self.width, self.height)
    self.mgr.updateCall = self.updateCall
end

function GeneralBtnTips:SetItem(textobj, data, pos, index)
    local w = 0
    local h = 0

    local msgItemExt = self.msgExtTab[index]
    if msgItemExt == nil then
        msgItemExt = MsgItemExt.New(textobj, self.maxWidth, textobj.fontSize, 25)
        self.msgExtTab[index] = msgItemExt
    end
    msgItemExt:SetData(data, false)
    -- table.insert(self.msgExtTab, msgItemExt)

    local preferredWidth = textobj.preferredWidth
    local rect = textobj:GetComponent(RectTransform)
    if preferredWidth > self.maxWidth then
        w = self.maxWidth
    else
        w = preferredWidth
    end
    h = textobj.preferredHeight

    rect.pivot = Vector2(0, 1)
    rect.anchorMax = Vector2(0, 1)
    rect.anchorMin = Vector2(0, 1)
    rect.anchoredPosition  = Vector2(pos.x, -pos.y)
    rect.sizeDelta = Vector2(w, h)
    h = textobj.preferredHeight
    rect.sizeDelta = Vector2(w, h)
    return w,h
end

function GeneralBtnTips:UnRealUpdate()
    local v2 = nil
    if Input.touchCount > 0 and Input.GetTouch(0).phase == TouchPhase.Began then
        local v2 = Input.GetTouch(0).position
        if self.model:Checkvalidregion(v2.x, v2.y) == false then
            self.model:Closetips()
        end
    end

    if Input.GetMouseButtonDown(0) then
        local v2 = Input.mousePosition
        if self.model:Checkvalidregion(v2.x, v2.y) == false then
            self.model:Closetips()
        end
    end
end