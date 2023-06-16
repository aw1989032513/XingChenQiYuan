-- 万圣节南瓜精匹配
-- ljh  20161026

SnowBallMatchWindow = SnowBallMatchWindow or BaseClass(BaseWindow)

function SnowBallMatchWindow:__init(model)
    self.model = model
    self.name = "SnowBallMatchWindow"
    self.windowId = WindowConfig.WinID.SnowBallmatchwindow

    self.resList = {
        {file = AssetConfig.halloweenmatchwindow, type = AssetType.Main},
        -- {file = AssetConfig.snowballicon, type = AssetType.Dep},
        {file = AssetConfig.halloween_textures, type = AssetType.Dep},
        -- {file = AssetConfig.halloweentitle, type = AssetType.Main}
    }
    self.hideindex = {[3] = true, [4] = true, [5] = true, [6] = true , [7] = true, [8] = true}
    self.randomStr = {
        [1] = TI18N("正在打扫雪地..."),
        [2] = TI18N("正在人工降雪..."),
        [3] = TI18N("正在清除碎石..."),
        [4] = TI18N("正在召集熊孩子...")
}
    --------------------------------------
    self.numText = nil
    self.stateText = nil

    self.headSlot_list = {}
    self.nameText_list = {}
    self.classicon_list = {}
    self.itemList = {}
    self.posList = {}
    self.moveItemTweenId = {}

    self.timerId = nil
    self.isHideMainUI = false
    --------------------------------------
    self._Update = function(isComplete)
        self:Update(isComplete)
    end

    self.lastrandom = 0
    self._UpdateTime = function()
        self:UpdateTime()
    end
    self.OnOpenEvent:AddListener(function() self:OnOpen() end)
    self.OnHideEvent:AddListener(function() self:OnHide() end)
end

function SnowBallMatchWindow:__delete()
    self.OnHideEvent:Fire()

    for i,v in pairs(self.moveItemTweenId) do
        if self.moveItemTweenId[i] ~= nil then
            Tween.Instance:Cancel(self.moveItemTweenId[i])
            self.moveItemTweenId[i] = nil
        end
    end
    if self.tweenId ~= nil then
        Tween.Instance:Cancel(self.tweenId)
        self.tweenId = nil
        Tween.Instance:Cancel(self.moveTweenId)
        self.moveTweenId = nil
    end
    if self.timerId ~= nil then
        LuaTimer.Delete(self.timerId)
        self.timerId = nil
    end
    if self.matchTimerId ~= nil then
        LuaTimer.Delete(self.matchTimerId)
        self.matchTimerId = nil
    end

    if self.headSlot_list ~= nil then
        for _,v in pairs(self.headSlot_list) do
            if v ~= nil then
                v:DeleteMe()
            end
        end
        self.headSlot_list = nil
    end
    if self.gameObject ~= nil then
        GameObject.DestroyImmediate(self.gameObject)
        self.gameObject = nil
    end
    self:AssetClearAll()
end

function SnowBallMatchWindow:InitPanel()
    self.gameObject = GameObject.Instantiate(self:GetPrefab(AssetConfig.halloweenmatchwindow))
    UIUtils.AddUIChild(ctx.CanvasContainer, self.gameObject)
    local transform = self.gameObject.transform
    self.gameObject.name = self.name
    self.transform = transform

    transform:Find("Panel"):GetComponent(Image).color = Color(0, 0, 0, 0)
    transform:Find("Main/Close"):GetComponent(Button).onClick:AddListener(function() self:OnClose() end)
    self.transform:Find("Main/Title").gameObject:SetActive(true)
    self.button = transform:FindChild("Main/OkButton").gameObject
    self.button:GetComponent(Button).onClick:AddListener(function() self:button_click() end)

    self.numText = transform:FindChild("Main/NumText"):GetComponent(Text)
    self.stateText = transform:FindChild("Main/StateText"):GetComponent(Text)

    self.descExt = MsgItemExt.New(transform:Find("Main/Desc"):GetComponent(Text), 540, 17, 19)
    self.descExt:SetData(TI18N("砸雪球啦~~"))
    local size = self.descExt.contentRect.sizeDelta
    self.descExt.contentRect.anchoredPosition = Vector2(-size.x / 2, 78)

    local panel = transform:Find("Main/Panel")
    for i = 1, 10 do
        local item = panel:Find(string.format("Head%s", i))
        table.insert(self.nameText_list, item:Find("NameText"):GetComponent(Text))
        table.insert(self.classicon_list, item:Find("NameBg/Image"):GetComponent(Image))
        table.insert(self.itemList, item)
        table.insert(self.posList, item.localPosition)

        local head = item:Find("Image")
        local headSlot = HeadSlot.New()
        headSlot:SetRectParent(head)
        table.insert(self.headSlot_list, headSlot)
        item.gameObject:SetActive(self.hideindex[i] ~= true)
    end
end

function SnowBallMatchWindow:OnInitCompleted()
    self.OnOpenEvent:Fire()
end

function SnowBallMatchWindow:OnOpen()
    self:RemoveListeners()
    self:AddListeners()

    self:Update()

    local roleData = RoleManager.Instance.RoleData
    if MatchManager.Instance.status == MatchStatus.Normal then
        MatchManager.Instance:Require18303()
    end
    if self.matchTimerId == nil then
        self.matchTimerId = LuaTimer.Add(0, 50, function() self:Matching() end)
    end
end

function SnowBallMatchWindow:OnHide()
    self:RemoveListeners()
end

function SnowBallMatchWindow:AddListeners()
    EventMgr.Instance:AddListener(event_name.match_status_change, self._Update)
    EventMgr.Instance:AddListener(event_name.match_has_result, self._Update)
    if self.timerId == nil then
        self.timerId = LuaTimer.Add(0, 1000, self._UpdateTime)
    end
end

function SnowBallMatchWindow:RemoveListeners()
    EventMgr.Instance:RemoveListener(event_name.match_status_change, self._Update)
    EventMgr.Instance:RemoveListener(event_name.match_has_result, self._Update)
    if self.timerId ~= nil then
        LuaTimer.Delete(self.timerId)
        self.timerId = nil
    end
end

function SnowBallMatchWindow:OnClose()
    if self.tweenId == nil then
        self.tweenId = Tween.Instance:Scale(self.gameObject, Vector3(0.1, 0.1, 1), 0.2, function() WindowManager.Instance:CloseWindow(self) self.tweenId = nil end, LeanTweenType.easeOutQuart).id
        self.moveTweenId = Tween.Instance:MoveY(self.gameObject, -0.6, 0.2, function() end, LeanTweenType.easeOutQuart).id
    end
end

function SnowBallMatchWindow:Update()
    if MatchManager.Instance.status == MatchStatus.Normal then
        -- self:OnClose()
        self.gameObject:SetActive(false)
    elseif MatchManager.Instance.status == MatchStatus.Matchend then
        self.numText.text = "00:00"
        self.stateText.text = TI18N("匹配成功")
        self:ShowMember(MatchManager.Instance.matchResult.preparation_show_list)
    else
        self.numText.text = BaseUtils.formate_time_gap(BaseUtils.BASE_TIME - self.model.match_time, ":", 0, BaseUtils.time_formate.MIN)
        -- self.stateText.text = TI18N("正在匹配中...")
        self.memberList = {}
        if TeamManager.Instance:HasTeam() and TeamManager.Instance:MemberCount() == 2 and TeamManager.Instance:GetMemberOrderList()[2].status == 2 then
            self.memberList = TeamManager.Instance:GetMemberOrderList()
        else
            self.memberList = {
                [1] = {
                    rid = RoleManager.Instance.RoleData.id,
                    name = RoleManager.Instance.RoleData.name,
                    platform = RoleManager.Instance.RoleData.platform,
                    zone_id = RoleManager.Instance.RoleData.zone_id,
                    sex = RoleManager.Instance.RoleData.sex,
                    classes = RoleManager.Instance.RoleData.classes,
                    lev = RoleManager.Instance.RoleData.lev,
                    }
            }
        end
        self:ShowMember(self.memberList)
    end
end

function SnowBallMatchWindow:UpdateTime()

    if MatchManager.Instance.status == MatchStatus.Matchend then
        -- if self.model.match_time >= Time.time then
            self.numText.text = string.format("<color='#ffff00'>%s</color>", BaseUtils.formate_time_gap(self.model.match_time - Time.time, ":", 0, BaseUtils.time_formate.MIN))
        -- else
        --     self:OnClose()
        -- end
    else
        self.lastrandom = self.lastrandom + 1
        if self.lastrandom%5 == 0 then
            local num = math.random(1,4)
            local str = self.randomStr[num]
            self.descExt:SetData(str)
        end
        self.numText.text = BaseUtils.formate_time_gap(Time.time - self.model.match_time, ":", 0, BaseUtils.time_formate.MIN)
    end
end

function SnowBallMatchWindow:button_click()
    MatchManager.Instance:Require18304()
    -- self:OnClose()
    -- self.gameObject:SetActive(false)
end

function SnowBallMatchWindow:Matching()
    self.stateText.alignment = 4
    self.stateText.transform.anchoredPosition = Vector2(0, -13)

    local mapid = SceneManager.Instance:CurrentMapId()
    local role_event = RoleManager.Instance.RoleData.event

    if mapid == 30015 and
        role_event == RoleEumn.Event.Camp_halloween_pre
        -- and self.model.match_time - BaseUtils.BASE_TIME < 0
        then                                                -- 匹配中
        self.stateText.alignment = 3
        self.stateText.transform.anchoredPosition = Vector2(34, -13)
        self.stateText.transform.sizeDelta = Vector2(150, 30)
        if BaseUtils.BASE_TIME % 3 == 1 then
            self.stateText.text = TI18N("正在匹配中.")
        elseif BaseUtils.BASE_TIME % 3 == 2 then
            self.stateText.text = TI18N("正在匹配中..")
        else
            self.stateText.text = TI18N("正在匹配中...")
        end
    elseif mapid == 30015 and
        role_event == RoleEumn.Event.camp_halloween_pre_enter
         then                                               -- 匹配完成
        self.model.match_time = self.model.match_time or 0
        if self.model.match_time - BaseUtils.BASE_TIME > 5 then
            if self.isMove ~= true and #self.model.match_data == 10 then
                self:Move()
            end
            self.stateText.text = TI18N("匹配成功，正在随机排序")
        elseif self.model.match_time - BaseUtils.BASE_TIME > 0 then
            -- self:ShowMember(self.model.match_data)
            self.stateText.text = TI18N("排序完成，正在进入活动场景")
        else
            self:OnClose()
        end
        self.stateText.transform.sizeDelta = Vector2(math.ceil(self.stateText.preferredWidth + 20), 30)
    end
end

function SnowBallMatchWindow:Random()
    local randomTab = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
    local pos = nil
    local t = nil
    for i=1,9 do
        pos = math.random(i,10)
        t = randomTab[i]
        randomTab[i] = randomTab[pos]
        randomTab[pos] = t
    end

    local list = {}
    for i,v in ipairs(randomTab) do
        list[v] = MatchManager.Instance.matchResult.preparation_show_list[i]
    end
    self:ShowMember(list)
end

function SnowBallMatchWindow:ShowMember(list)
    for i = 1, 10 do
        local match_data = list[i]
        if self.hideindex[i] then
            match_data = nil
        end
        if i == 9 then
            match_data = list[3]
        elseif i == 10 then
            match_data = list[4]
        end
        if match_data ~= nil then
            self.nameText_list[i].text = match_data.name
            local head_data = {id = match_data.rid, platform = match_data.platform, zone_id = match_data.zone_id, classes = match_data.classes, sex = match_data.sex}
            self.headSlot_list[i]:HideSlotBg(true, 0)
            self.headSlot_list[i]:SetAll(head_data, { small = true })
            self.classicon_list[i].sprite = PreloadManager.Instance:GetSprite(AssetConfig.basecompress_textures, "ClassesIcon_" .. match_data.classes)
            self.headSlot_list[i].gameObject:SetActive(true)
        else
            self.classicon_list[i].sprite = PreloadManager.Instance:GetSprite(AssetConfig.basecompress_textures, "QualifyQuestionIcon")
            self.nameText_list[i].text = ""
            self.headSlot_list[i]:Default()
            self.headSlot_list[i].gameObject:SetActive(false)
        end
    end
end

function SnowBallMatchWindow:Move()
    self.isMove = true

    local posList = {}
    for i,v in ipairs(self.model.last_data) do
        for j,w in ipairs(self.model.match_data) do
            if v.rid == w.rid and v.platform == w.platform and v.r_zone_id == w.r_zone_id then
                posList[i] = j
                break
            end
        end
    end

    for i=1,10 do
        if self.moveItemTweenId[i] ~= nil then
            Tween.Instance:Cancel(self.moveItemTweenId[i])
            self.moveItemTweenId[i] = nil
        end
        self.moveItemTweenId[i] = Tween.Instance:MoveLocal(self.itemList[i].gameObject, self.posList[posList[i]], 3, function() self.moveItemTweenId[i] = nil end, LeanTweenType.linear)
    end
end
