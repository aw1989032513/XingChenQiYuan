-- 
-- 

SkillView_Bagua = SkillView_Bagua or BaseClass(BasePanel)

function SkillView_Bagua:__init(parent)
	self.parent = parent
    self.model = parent.model
    self.name = "SkillView_Bagua"
    self.resList = {
        {file = AssetConfig.skill_bagua, type = AssetType.Main}
        , {file = AssetConfig.skill_life_icon, type = AssetType.Dep}
        , {file = AssetConfig.skill_life_name, type = AssetType.Dep}
		, {file = AssetConfig.base_textures, type = AssetType.Dep}
        , {file = AssetConfig.skill_life_shovel_bg, type = AssetType.Dep}
    }

    self.gameObject = nil
    self.transform = nil
    self.init = false

    ------------------------------------------------
    self.container = nil
    self.skillobject = nil
    self.scrollrect = nil

    self.skillitemlist = {}
    self.selectbtn = nil
    self.skilldata = nil
    self.select_skilldata = nil

    self.button = nil

    self.descIcon = nil

    self.more_show = false
    self.l_item_list = {}
    self.l_item_slots = {}
    self.more_item_slots = {}
    self.skillitemloaderlist = {}
    self.last_exp = nil
    self.lossGuild = false   --记录帮派贡献够不够（false 足够）
    self.lossGuildTen = false   --记录帮派贡献够不够（10连抽哟）（false 足够）
    ------------------------------------------------
    self._updateSkillItem = function()
        self:updateSkillItem()
    end

    self.updateItemListener = function() self:updateSkill_Life() end

    self.OnOpenEvent:Add(function() self:OnShow() end)
    self.OnHideEvent:Add(function() self:OnHide() end)
end

function SkillView_Bagua:__delete()
    self.OnHideEvent:Fire()

    if self.imgLoader ~= nil then
        self.imgLoader:DeleteMe()
        self.imgLoader = nil
    end
    if self.info_panel_iconloader ~= nil then
        self.info_panel_iconloader:DeleteMe()
        self.info_panel_iconloader = nil
    end

    for k, v in pairs(self.skillitemloaderlist) do
        v:DeleteMe()
        v = nil
    end

    for k, v in pairs(self.l_item_slots) do
        v:DeleteMe()
        v = nil
    end

    for k, v in pairs(self.more_item_slots) do
        v:DeleteMe()
        v = nil
    end

    if self.Item3_Slot1 ~= nil then
        self.Item3_Slot1:DeleteMe()
        self.Item3_Slot1 = nil
    end
end

function SkillView_Bagua:InitPanel()


	self.gameObject = GameObject.Instantiate(self:GetPrefab(AssetConfig.skill_bagua))
    self.gameObject.name = "SkillView_Bagua"
    self.gameObject.transform:SetParent(self.parent.mainTransform)
    self.gameObject.transform.localPosition = Vector3(110, 20, 0)
    self.gameObject.transform.localScale = Vector3(1, 1, 1)

    self.transform = self.gameObject.transform

    --------------------------------------------
    local transform = self.transform 
	
	self.skillbar = transform:FindChild("SkillBar").gameObject
    self.skillbar:GetComponent(Image).sprite = PreloadManager.Instance:GetSprite(AssetConfig.base_textures, "bagua")
    self.container = transform:FindChild("SkillBar/mask/Container").gameObject
    self.skillobject = self.container.transform:FindChild("SkillItem").gameObject

    self.scrollrect = transform:FindChild("SkillBar/mask"):GetComponent(ScrollRect)

    self.marryInfoPanel = transform:FindChild("MarryInfoPanel").gameObject
    self.lifeInfoPanel = transform:FindChild("LifeInfoPanel").gameObject
    self.info_panel_iconloader = SingleIconLoader.New(self.marryInfoPanel.transform:FindChild("Icon").gameObject)

    -- 按钮功能绑定
    self.button = self.marryInfoPanel.transform:FindChild("OkButton"):GetComponent(Button)
    self.button.onClick:AddListener(function() self:okbuttonclick() end)

	-- local btn
    -- btn = transform:FindChild("InfoPanel/OneKeyButton"):GetComponent(Button)
    -- btn.onClick:AddListener(function() self:onekeybuttonclick() end)

    -- self.descIcon = transform:FindChild("InfoPanel/DescIcon"):GetComponent(Button)
    -- self.descIcon.onClick:AddListener(function() TipsManager.Instance:ShowText({gameObject = self.descIcon.gameObject
    --         , itemData = { TI18N("由于你当前技能等级小于服务器等级-10，学习技能消耗降低为原来的70%") }}) end)
    self.TopCon = self.lifeInfoPanel.transform:FindChild("TopCon").gameObject
    self.ConDesc = self.TopCon.transform:FindChild("ConDesc").gameObject
	

    self.ConDesc_txt_1 = self.ConDesc.transform:FindChild("TxtVal1"):GetComponent(Text)
    self.ConDesc_txt_2 = self.ConDesc.transform:FindChild("TxtVal2"):GetComponent(Text)

    self.Exp = self.TopCon.transform:FindChild("Exp").gameObject
    self.ExpSlider = self.Exp.transform:FindChild("ExpSlider"):GetComponent(Slider)
    self.ExpText = self.Exp.transform:FindChild("ExpText"):GetComponent(Text)

    self.ConItems = self.TopCon.transform:FindChild("ConItems").gameObject
    self.ConItems_Bg = self.ConItems.transform:FindChild("Bg").gameObject
    self.ConItems_TipsText = self.ConItems.transform:FindChild("TipsText").gameObject
    self.LayoutLayer = self.ConItems.transform:FindChild("LayoutLayer").gameObject
    self.l_Item1 = self.LayoutLayer.transform:FindChild("Item1").gameObject
    self.l_Item2 = self.LayoutLayer.transform:FindChild("Item2").gameObject
    self.l_Item3 = self.LayoutLayer.transform:FindChild("Item3").gameObject
    self.l_Item4 = self.LayoutLayer.transform:FindChild("Item4").gameObject
    -- self.l_Item5 = self.LayoutLayer.transform:FindChild("Item5").gameObject
    -- self.l_Item6 = self.LayoutLayer.transform:FindChild("Item6").gameObject
    -- self.l_Item7 = self.LayoutLayer.transform:FindChild("Item7").gameObject
    -- self.l_Item8 = self.LayoutLayer.transform:FindChild("Item8").gameObject
    -- self.l_Item9 = self.LayoutLayer.transform:FindChild("Item9").gameObject
    self.ItemBtn = self.LayoutLayer.transform:FindChild("ItemBtn"):GetComponent(Button)
    self.l_item_list = {}
    table.insert(self.l_item_list, self.l_Item1)
    table.insert(self.l_item_list, self.l_Item2)
    table.insert(self.l_item_list, self.l_Item3)
    table.insert(self.l_item_list, self.l_Item4)
    -- table.insert(self.l_item_list, self.l_Item5)
    -- table.insert(self.l_item_list, self.l_Item6)
    -- table.insert(self.l_item_list, self.l_Item7)
    -- table.insert(self.l_item_list, self.l_Item8)
    -- table.insert(self.l_item_list, self.l_Item9)
    self.l_item_slots = {}
    self.more_item_slots = {}

    self.ConMore = self.TopCon.transform:FindChild("ConMore").gameObject
    self.ConMore_line = self.ConMore.transform:FindChild("LineCon").gameObject
    self.ConMore_item = self.ConMore_line.transform:FindChild("Item").gameObject
    self.ConMore:SetActive(false)
    self.Item1 = self.TopCon.transform:FindChild("Item1").gameObject
    self.ImgTxtVal =  self.Item1.transform:FindChild("ImgTxtVal").gameObject
    self.TxtVal =self.ImgTxtVal.transform:FindChild("TxtVal"):GetComponent(Text)
    self.Item2 = self.TopCon.transform:FindChild("Item2").gameObject
    self.ImgTxtVal2 = self.Item2.transform:FindChild("ImgTxtVal").gameObject
    self.ImgTanHao = self.Item2.transform:FindChild("ImgTanHao"):GetComponent(Button)

    self.ImgTanHao.onClick:AddListener(function() self:on_click_tanhao() end)

    self.Item3 = self.TopCon.transform:FindChild("Item3").gameObject
    self.Item3_SlotCon1 = self.Item3.transform:FindChild("SlotCon1").gameObject
    self.Item3_Slot1 = self:create_slot(self.Item3_SlotCon1)
    self.TxtVal2 = self.ImgTxtVal2.transform:FindChild("TxtVal"):GetComponent(Text)
    self.ImgShovel = self.TopCon.transform:FindChild("ImgShovel"):GetComponent(Image)

    self.ImgShovel.gameObject:SetActive(false)
    self.Item3:SetActive(false)

    self.BtnStudy = self.lifeInfoPanel.transform:FindChild("BtnCon"):Find("BtnStudy"):GetComponent(Button)
    self.BtnOneKey = self.lifeInfoPanel.transform:FindChild("BtnCon"):Find("BtnOneKey"):GetComponent(Button)
    
	--self.BtnProduce = self.lifeInfoPanel.transform:FindChild("BtnCon"):Find("BtnProduce"):GetComponent(Button)
    --self.BtnProduce_txt = self.BtnProduce.transform:FindChild("Text"):GetComponent(Text)
    --self.BtnProduce_ImgNormal = self.BtnProduce.transform:FindChild("ImgNormal"):GetComponent(Image)
    --self.BtnProduce_ImgGrey = self.BtnProduce.transform:FindChild("ImgGrey"):GetComponent(Image)
    --self.BtnProduce_button = self.BtnProduce.transform:GetComponent(Button)


    --self.BtnProduce.onClick:AddListener(function() self:on_click_produce_btn() end) --BtnRest
   

   self.ItemBtn.onClick:AddListener(function() self:on_show_more_items() end)
    self.BtnStudy.onClick:AddListener(function() self:on_click_study_btn() end) --BtnRest
    self.BtnOneKey.onClick:AddListener(function() self:on_click_onekey_study_btn() end)
    --------------------------------------------
    self.init = true
    self:OnShow()
    self:ClearMainAsset()
end

function SkillView_Bagua:OnShow()
    if self.openArgs ~= nil and #self.openArgs > 1 then
        self.selectskillid = self.openArgs[2]
    end
    self.lossGuild = false
    self.lossGuildTen = false
    self:addevents()
    self:updateSkillItem()
end

function SkillView_Bagua:OnHide()
    self:removeevents()
end

function SkillView_Bagua:addevents()
    SkillManager.Instance.OnUpdateMarrySkill:Add(self._updateSkillItem)
    EventMgr.Instance:AddListener(event_name.life_skill_update, self._updateSkillItem)
    EventMgr.Instance:AddListener(event_name.backpack_item_change, self.updateItemListener)
end

function SkillView_Bagua:removeevents()
    SkillManager.Instance.OnUpdateMarrySkill:Remove(self._updateSkillItem)
    EventMgr.Instance:RemoveListener(event_name.life_skill_update, self._updateSkillItem)
    EventMgr.Instance:RemoveListener(event_name.backpack_item_change, self.updateItemListener)
end

-- 更新技能列表 Mark
function SkillView_Bagua:updateSkillItem()
	local skilllist = {}

    for _,value in ipairs(self.model.life_skills) do  --10000   10001 10005 10006 10007 10008 10009
        if value.id == 10020 then
            skilllist[1] = {data = value, type = 1}
        elseif value.id == 10021 then
            skilllist[2] = {data = value, type = 1}
        elseif value.id == 10022 then
            skilllist[3] = {data = value, type = 1}
        elseif value.id == 10023 then
            skilllist[4] = {data = value, type = 1}
        elseif value.id == 10024 then
            skilllist[5] = {data = value, type = 1}
        elseif value.id == 10025 then
            skilllist[6] = {data = value, type = 1}
        elseif value.id == 10026 then
            skilllist[7] = {data = value, type = 1}
        elseif value.id == 10027 then
            skilllist[8] = {data = value, type = 1}
        end
    end

    if RoleManager.Instance.RoleData.wedding_status == 3 then
        for _,value in ipairs(self.model.marry_skill) do
            table.insert(skilllist, {data = value, type = 2})
        end
    end

    local skillitem
    local data
    local type
    for i = 1, #skilllist do
        skillitem = self.skillitemlist[i]
        data = skilllist[i].data
        type = skilllist[i].type

        if skillitem == nil then
            local item = GameObject.Instantiate(self.skillobject)
            item:SetActive(true)
            item.transform:SetParent(self.container.transform)
            item:GetComponent(RectTransform).localScale = Vector3(1, 1, 1)
            local fun = function() self:onskillitemclick(item) end
            item:GetComponent(Button).onClick:AddListener(fun)
            self.skillitemlist[i] = item
            skillitem = item
        end

        self:setskillitem(skillitem, data, type, i)

        if nil ~= self.skilldata and self.skilldata.id == data.id then self.selectbtn = skillitem end
        -- print(string.format("2222--------/%s",data.id))
-------------------分割线-------------------------------
        if data.id == 10020 then --金星
            skillitem.transform.localPosition = Vector3(235, -38, 0)
            skillitem.transform.localScale = Vector3(1, 1, 1)
        elseif data.id == 10027 then--水星
            skillitem.transform.localPosition = Vector3(91, -90, 0)
            skillitem.transform.localScale = Vector3(1, 1, 1)
        elseif data.id == 10026 then--火星
            skillitem.transform.localPosition = Vector3(40, -230, 0)
            skillitem.transform.localScale = Vector3(1, 1, 1)
        elseif data.id == 10025 then--土星
            skillitem.transform.localPosition = Vector3(91, -377, 0)
            skillitem.transform.localScale = Vector3(1, 1, 1)
        elseif data.id == 10024 then--木星
            skillitem.transform.localPosition = Vector3(383, -80, 0)
            skillitem.transform.localScale = Vector3(1, 1, 1)
        elseif data.id == 10021 then--天王星
            skillitem.transform.localPosition = Vector3(447, -230, 0)
            skillitem.transform.localScale = Vector3(1, 1, 1)
        elseif data.id == 10022 then--海王星
            skillitem.transform.localPosition = Vector3(388, -388, 0)
            skillitem.transform.localScale = Vector3(1, 1, 1)
        elseif data.id == 10023 then--地球
            skillitem.transform.localPosition = Vector3(235, -430, 0)
            skillitem.transform.localScale = Vector3(1, 1, 1)
        end
-------------------分割线-------------------------------
        if self.selectskillid == data.id then
            self.selectskillid = nil
            if self.selectbtn ~= nil then self.selectbtn.transform:FindChild("Select").gameObject:SetActive(false) end
            self.selectbtn = skillitem
        end
    end

    for i = #skilllist + 1, #self.skillitemlist do
        skillitem = self.skillitemlist[i]
        skillitem:SetActive(false)
    end

    if #skilllist > 0 then
        if self.selectbtn == nil then
            self:onskillitemclick(self.skillitemlist[2])
        else
            self:onskillitemclick(self.selectbtn)
        end
    end
    
end

function SkillView_Bagua:setskillitem(skillitem, data, type, index)
    skillitem.transform:FindChild("NotifyPoint").gameObject:SetActive(false)

    if type == 1 then
        skillitem.name = tostring(data.id)

        if self.skillitemloaderlist[index] ~= nil then
            self.skillitemloaderlist[index]:DeleteMe()
            self.skillitemloaderlist[index] = nil
        end
        skillitem.transform:FindChild("SkillIcon"):GetComponent(Image).sprite
            = self.assetWrapper:GetSprite(AssetConfig.skill_life_icon, tostring(data.id))
        skillitem.transform:FindChild("NameText"):GetComponent(Text).text = ""-- = data.name
        skillitem.transform:FindChild("DescText"):GetComponent(Text).text = ""-- data.introduction
        skillitem.transform:FindChild("LVText"):GetComponent(Text).text = ""-- string.format("Lv.%s", tostring(data.lev))
        -- skillitem.transform:FindChild("LVText"):GetComponent(Text).color = Color(1/255, 125/255, 215/255)
    elseif type == 2 then
        local marryskill
        if data.lev == 0 then
            marryskill = self.model:getmarryskilldata(data.id, 1)
            if marryskill ~= nil then
                skillitem.name = tostring(marryskill.id)

                -- skillitem.transform:FindChild("SkillIcon"):GetComponent(Image).sprite
                --     = self.assetWrapper:GetSprite(AssetConfig.skillIcon_roleother, tostring(marryskill.icon))
                if self.skillitemloaderlist[index] == nil then
                    self.skillitemloaderlist[index] = SingleIconLoader.New(skillitem.transform:FindChild("SkillIcon").gameObject)
                end
                self.skillitemloaderlist[index]:SetSprite(SingleIconType.SkillIcon, tostring(marryskill.icon))


                skillitem.transform:FindChild("NameText"):GetComponent(Text).text = marryskill.name
                skillitem.transform:FindChild("DescText"):GetComponent(Text).text = marryskill.about

                local roleData = RoleManager.Instance.RoleData
                if marryskill.love_var <= roleData.love and marryskill.intimacy <= FriendManager.Instance:GetIntimacy(roleData.lover_id, roleData.lover_platform, roleData.lover_zone_id) then
                    skillitem.transform:FindChild("LVText"):GetComponent(Text).text = TI18N("可激活")
                    skillitem.transform:FindChild("NotifyPoint").gameObject:SetActive(true)
                else
                    skillitem.transform:FindChild("LVText"):GetComponent(Text).text = TI18N("未激活")
                    skillitem.transform:FindChild("NotifyPoint").gameObject:SetActive(false)
                end
                skillitem.transform:FindChild("SkillIcon"):GetComponent(Image).color = Color.grey
            end
        else
            marryskill = self.model:getmarryskilldata(data.id, data.lev)
            if marryskill ~= nil then
                skillitem.name = tostring(marryskill.id)

                -- skillitem.transform:FindChild("SkillIcon"):GetComponent(Image).sprite
                    -- = self.assetWrapper:GetSprite(AssetConfig.skillIcon_roleother, tostring(marryskill.icon))
                if self.skillitemloaderlist[index] == nil then
                    self.skillitemloaderlist[index] = SingleIconLoader.New(skillitem.transform:FindChild("SkillIcon").gameObject)
                end
                self.skillitemloaderlist[index]:SetSprite(SingleIconType.SkillIcon, tostring(marryskill.icon))

                skillitem.transform:FindChild("NameText"):GetComponent(Text).text = marryskill.name

                skillitem.transform:FindChild("LVText"):GetComponent(Text).text =  ""--string.format("Lv.%s", data.lev)
                skillitem.transform:FindChild("DescText"):GetComponent(Text).text = marryskill.about
                skillitem.transform:FindChild("SkillIcon"):GetComponent(Image).color = Color.white
            end
        end
    end
end

-- 选中技能 Mark
function SkillView_Bagua:onskillitemclick(item)
    if item.name == "10020" then
        for _,value in ipairs(self.model.life_skills) do
            if value.id == 10020 then
                self.select_skilldata = value
            end
        end

        self.skilldata = self.select_skilldata
        self.last_exp = nil
    elseif item.name == "10021" then
        for _,value in ipairs(self.model.life_skills) do
            if value.id == 10021 then
                self.select_skilldata = value
            end
        end

        self.skilldata = self.select_skilldata
        self.last_exp = nil
    elseif item.name == "10022" then
        for _,value in ipairs(self.model.life_skills) do
            if value.id == 10022 then
                self.select_skilldata = value
            end
        end

        self.skilldata = self.select_skilldata
        self.last_exp = nil
    elseif item.name == "10023" then
        for _,value in ipairs(self.model.life_skills) do
            if value.id == 10023 then
                self.select_skilldata = value
            end
        end

        self.skilldata = self.select_skilldata
        self.last_exp = nil
    elseif item.name == "10024" then
        for _,value in ipairs(self.model.life_skills) do
            if value.id == 10024 then
                self.select_skilldata = value
            end
        end

        self.skilldata = self.select_skilldata
        self.last_exp = nil
    elseif item.name == "10025" then
        for _,value in ipairs(self.model.life_skills) do
            if value.id == 10025 then
                self.select_skilldata = value
            end
        end

        self.skilldata = self.select_skilldata
        self.last_exp = nil
    elseif item.name == "10026" then
        for _,value in ipairs(self.model.life_skills) do
            if value.id == 10026 then
                self.select_skilldata = value
            end
        end

        self.skilldata = self.select_skilldata
        self.last_exp = nil
    elseif item.name == "10027" then
        for _,value in ipairs(self.model.life_skills) do
            if value.id == 10027 then
                self.select_skilldata = value
            end
        end

        self.skilldata = self.select_skilldata
        self.last_exp = nil

    else
    	self.select_skilldata = self.model:getmarryskill(item.name)

        if self.select_skilldata.lev == 0 then
            self.skilldata = self.model:getmarryskilldata(item.name, 1)
        else
            self.skilldata = self.model:getmarryskilldata(item.name, self.select_skilldata.lev)
        end

        self.last_exp = nil
    end

    self:updateSkill()

    if self.selectbtn ~= nil then self.selectbtn.transform:FindChild("Select").gameObject:SetActive(false) end
    item.transform:FindChild("Select").gameObject:SetActive(true)
    self.selectbtn = item
end

-- 更新技能信息 Mark
function SkillView_Bagua:updateSkill()
    if self.more_show then
        self:on_show_more_items()
    end
    if self.select_skilldata.id == 10020 or self.select_skilldata.id == 10021 or self.select_skilldata.id == 10022 or self.select_skilldata.id == 10023 or self.select_skilldata.id == 10024 or self.select_skilldata.id == 10025 or self.select_skilldata.id == 10026 or self.select_skilldata.id == 10027 then
        self:updateSkill_Life()
    else
        self:updateSkill_Marry()
    end
end

function SkillView_Bagua:updateSkill_Life()
    self.lossGuild = false
    self.lossGuildTen = false
    local skilldata = self.skilldata
    local transform = self.transform

    if nil == skilldata then return end

    self.marryInfoPanel:SetActive(false)
    self.lifeInfoPanel:SetActive(true)

    local info_panel = self.lifeInfoPanel
    -- local ImgName = info_panel.transform:FindChild("TopCon/ImgTitle/ImgName"):GetComponent(Image)
    -- ImgName.sprite = self.assetWrapper:GetSprite(AssetConfig.skill_life_name, tostring(skilldata.id))
    -- ImgName:SetNativeSize()
    -- ImgName.gameObject:SetActive(true)
    -- info_panel.transform:FindChild("TopCon/ImgTitle/TxtLev"):GetComponent(Text).text = string.format("Lv.%s", tostring(skilldata.lev))
    info_panel.transform:FindChild("TopCon/ImgTitle/NameText"):GetComponent(Text).text
        = string.format("%s Lv.%s", skilldata.name, tostring(skilldata.lev))
    --BaseUtils.dump(skilldata,"skilldata")
    local str = skilldata.desc
    str = string.gsub(str, "%[attr2%]", skilldata.lev+1)
    if skilldata.lev > 0 then
        str = string.gsub(str, "%[attr1%]", skilldata.lev)
    end
    info_panel.transform:FindChild("TopCon/TxtDesc"):GetComponent(Text).text = str


    for i=1,#self.l_item_list do
        local itemGo = self.l_item_list[i]
        itemGo:SetActive(false)
    end

    local max_lev_key = ""
    if skilldata.id == 10020 then
        max_lev_key = string.format("%s_%s", skilldata.id, 50)
    elseif skilldata.id == 10021 then
        max_lev_key = string.format("%s_%s", skilldata.id, 50)
    elseif skilldata.id == 10022 then
        max_lev_key = string.format("%s_%s", skilldata.id, 50)
    elseif skilldata.id == 10023 then
        max_lev_key = string.format("%s_%s", skilldata.id, 50)
    elseif skilldata.id == 10024 then
        max_lev_key = string.format("%s_%s", skilldata.id, 50)
    elseif skilldata.id == 10025 then
        max_lev_key = string.format("%s_%s", skilldata.id, 50)
    elseif skilldata.id == 10026 then
        max_lev_key = string.format("%s_%s", skilldata.id, 50)
    elseif skilldata.id == 10027 then
        max_lev_key = string.format("%s_%s", skilldata.id, 50)    
    end

    local max_lev_cfg_data = nil
    local product_list = nil
    max_lev_cfg_data = DataSkillLife.data_data[max_lev_key]
	
    product_list = max_lev_cfg_data.product
	
	

    if #product_list == 0 then
        self.ConItems:SetActive(false)
        self.ConDesc:SetActive(false)
        self.ConItems_TipsText:SetActive(false)
        self.Exp:SetActive(false)
    elseif skilldata.id == 10020 then
        self.ConItems:SetActive(false)
        self.ConDesc:SetActive(true)
        self.Exp:SetActive(false)
    elseif skilldata.id == 10021 then
        self.ConItems:SetActive(false)
        self.ConDesc:SetActive(true)
        self.Exp:SetActive(false)
    elseif skilldata.id == 10022 then
        self.ConItems:SetActive(false)
        self.ConDesc:SetActive(true)
        self.Exp:SetActive(false)
    elseif skilldata.id == 10023 then
        self.ConItems:SetActive(false)
        self.ConDesc:SetActive(true)
        self.Exp:SetActive(false)
    elseif skilldata.id == 10024 then
        self.ConItems:SetActive(false)
        self.ConDesc:SetActive(true)
        self.Exp:SetActive(false)
    elseif skilldata.id == 10025 then
        self.ConItems:SetActive(false)
        self.ConDesc:SetActive(true)
        self.Exp:SetActive(false)
    elseif skilldata.id == 10026 then
        self.ConItems:SetActive(false)
        self.ConDesc:SetActive(true)
        self.Exp:SetActive(false)
    elseif skilldata.id == 10027 then
        self.ConItems:SetActive(false)
        self.ConDesc:SetActive(true)
        self.Exp:SetActive(false)
    else
        self.ConDesc:SetActive(false)
        self.ConItems:SetActive(true)
        if #product_list > #self.l_item_list then
            self.ItemBtn.gameObject:SetActive(true)
            self.current_more_data_list = {}
        else
            self.ItemBtn.gameObject:SetActive(false)
        end

        for i=1,#product_list do
            local p = product_list[i]
            if i <= #self.l_item_list then
                local open_data = DataSkillLife.data_product_open[p.key]
                local it = self.l_item_list[i]
                self:set_slot_item_data(it, i, open_data.base_id, open_data.open_lev)
            else
                table.insert(self.current_more_data_list, p)
            end
        end
        --更新“更多面板”
        self:update_more_slot_items()
    end

    self.Item3:SetActive(false)
    self.Item1:SetActive(false)
    self.Item2:SetActive(true)
    local next_lev = skilldata.lev+1
    local next_lev_key = string.format("%s_%s", skilldata.id, next_lev)
    local next_lev_cfg_data = nil
    if skilldata.id == 10007 then
        next_lev_cfg_data = DataSkillLife.data_diao_wen[next_lev_key]
    else
        next_lev_cfg_data = DataSkillLife.data_data[next_lev_key]
    end

    if next_lev_cfg_data == nil then
        next_lev = skilldata.lev
        next_lev_key = string.format("%s_%s", skilldata.id, next_lev)
        next_lev_cfg_data = nil
        if skilldata.id == 10007 then
            next_lev_cfg_data = DataSkillLife.data_diao_wen[next_lev_key]
        else
            next_lev_cfg_data = DataSkillLife.data_data[next_lev_key]
        end
    end

    if next_lev_cfg_data ~= nil then
        local data1 = next_lev_cfg_data.levup_cost[1]
        local data2 = next_lev_cfg_data.levup_cost[2]

        if self.imgLoader == nil then
            local go = self.ImgTxtVal.transform:FindChild("ImgIcon").gameObject
            self.imgLoader = SingleIconLoader.New(go)
        end
        self.imgLoader:SetSprite(SingleIconType.Item, data1[1])

        if #next_lev_cfg_data.levup_cost == 1 then
            self:set_stone_slot_data(self.Item3_Slot1, DataItem.data_get[29106], false)
            local has_num1 = 0
            if data1[1] == 29106 then
                has_num1 = data1[2] -- RoleManager.Instance.RoleData.coin
            end
            local has2 = BackpackManager.Instance:GetItemCount(data1[1])
            self.Item3_Slot1:SetNum(has2, has_num1)
            self.Item3:SetActive(true)
            self.Item1:SetActive(false)
            self.Item2:SetActive(false)
        elseif #next_lev_cfg_data.levup_cost == 2 then
            self:set_stone_slot_data(self.Item3_Slot1, DataItem.data_get[29106], false)
            local has_num1 = 0
            if data1[1] == 29106 then
                has_num1 = data1[2] --RoleManager.Instance.RoleData.coin
            end
            local has2 = BackpackManager.Instance:GetItemCount(data1[1])
            self.Item3_Slot1:SetNum(has2, need2)
            self.Item3:SetActive(true)
            self.Item1:SetActive(false)
            self.Item2:SetActive(false)
        end
    end

    self.ImgShovel.sprite = self.assetWrapper:GetSprite(AssetConfig.skill_life_shovel_bg, tostring(skilldata.id))

    self.ImgShovel.gameObject:SetActive(false)

    --最高级有产出的就两个按钮，只有附加属性的就只有一个按钮 ， 没产出，就是只有 学习技能
    self.BtnStudy.gameObject:SetActive(false)
    --self.BtnProduce.gameObject:SetActive(false)
    self.BtnOneKey.gameObject:SetActive(false)

    if next_lev_cfg_data ~=nil and #next_lev_cfg_data.levup_cost ~= 0 then
        self.BtnStudy.gameObject:SetActive(true) --升级
        self.BtnOneKey.gameObject:SetActive(true)
    end

    self.ConDesc_txt_1.text = ""
    self.ConDesc_txt_2.text = ""
    if skilldata.id == 10020 then
        self.ConDesc:SetActive(true)
        if #skilldata.attr > 0 then
            local val_1 = skilldata.attr[1].val
            local val_3 = val_1/10
            self.ConDesc_txt_1.text = string.format("%s<color='#b031d5'>%s</color><color='#00FF00'>+%s%%</color>", TI18N("当前："), TI18N("暴击率"),     val_3)

            if next_lev_cfg_data ~= nil then
                local val_2 = next_lev_cfg_data.attr[1].val
                local val_4 = val_2/10
                self.ConDesc_txt_2.text = string.format("%s<color='#b031d5'>%s</color><color='#00FF00'>+%s%%</color>", TI18N("下级："), TI18N("暴击率"),     val_4)

            end
        elseif #next_lev_cfg_data.attr > 0 then
            local val_1 = next_lev_cfg_data.attr[1].val
            local val_5 = val_1/10
            self.ConDesc_txt_1.text = string.format("%s<color='#b031d5'>%s</color><color='#00FF00'>+%s%%</color>", TI18N("当前："), TI18N("暴击率"),     val_5)
        end
    end
    if skilldata.id == 10021 then
        self.ConDesc:SetActive(true)
        if #skilldata.attr > 0 then
            local val_1 = skilldata.attr[1].val
            local val_10 = skilldata.attr[2].val
            local val_11 = skilldata.attr[3].val
            local val_12 = skilldata.attr[4].val/10
            self.ConDesc_txt_1.text = string.format("%s<color='#b031d5'>%s</color><color='#00FF00'>+%s</color>，<color='#b031d5'>%s</color><color='#00FF00'>+%s</color>\n<color='#b031d5'>%s</color><color='#00FF00'>+%s</color> <color='#b031d5'>%s</color><color='#00FF00'>+%s%%</color>", TI18N("当前："), TI18N("物攻"),val_1,TI18N("法攻"),val_10,TI18N("治疗加强"),val_11,TI18N("控制加强"),val_12)

            if next_lev_cfg_data ~= nil then
                local val_2 = next_lev_cfg_data.attr[1].val
                local val_20 = next_lev_cfg_data.attr[2].val
                local val_21 = next_lev_cfg_data.attr[3].val
                local val_22 = next_lev_cfg_data.attr[4].val/10
                self.ConDesc_txt_2.text = string.format("%s<color='#b031d5'>%s</color><color='#00FF00'>+%s</color>，<color='#b031d5'>%s</color><color='#00FF00'>+%s</color>\n<color='#b031d5'>%s</color><color='#00FF00'>+%s</color> <color='#b031d5'>%s</color><color='#00FF00'>+%s%%</color>", TI18N("下级："), TI18N("物攻"),val_2,TI18N("法攻"),val_20,TI18N("治疗加强"),val_21,TI18N("控制加强"),val_22)

            end
        elseif #next_lev_cfg_data.attr > 0 then
            local val_1 = skilldata.attr[1].val
            local val_10 = skilldata.attr[2].val
            local val_11 = skilldata.attr[3].val
            local val_12 = skilldata.attr[4].val/10
            self.ConDesc_txt_1.text = string.format("%s<color='#b031d5'>%s</color><color='#00FF00'>+%s</color>，<color='#b031d5'>%s</color><color='#00FF00'>+%s</color>\n<color='#b031d5'>%s</color><color='#00FF00'>+%s</color> <color='#b031d5'>%s</color><color='#00FF00'>+%s%%</color>", TI18N("当前："), TI18N("物攻"),val_1,TI18N("法攻"),val_10,TI18N("治疗加强"),val_11,TI18N("控制加强"),val_12)

        end
    end
    if skilldata.id == 10022 then
        self.ConDesc:SetActive(true)
        if #skilldata.attr > 0 then
            local val_1 = skilldata.attr[1].val/10
            self.ConDesc_txt_1.text = string.format("%s<color='#b031d5'>%s</color><color='#00FF00'>+%s%%</color>", TI18N("当前："), TI18N("暴击伤害"),     val_1)

            if next_lev_cfg_data ~= nil then
                local val_2 = next_lev_cfg_data.attr[1].val/10
                self.ConDesc_txt_2.text = string.format("%s<color='#b031d5'>%s</color><color='#00FF00'>+%s%%</color>", TI18N("下级："), TI18N("暴击伤害"),     val_2)

            end
        elseif #next_lev_cfg_data.attr > 0 then
            local val_1 = next_lev_cfg_data.attr[1].val/10
            self.ConDesc_txt_1.text = string.format("%s<color='#b031d5'>%s</color><color='#00FF00'>+%s%%</color>", TI18N("当前："), TI18N("暴击伤害"),     val_1)
        end
    end
    if skilldata.id == 10023 then
        self.ConDesc:SetActive(true)
        if #skilldata.attr > 0 then
            local val_1 = skilldata.attr[1].val/10
            self.ConDesc_txt_1.text = string.format("%s<color='#b031d5'>%s</color><color='#00FF00'>+%s%%</color>", TI18N("当前："), TI18N("伤害加成"),     val_1)

            if next_lev_cfg_data ~= nil then
                local val_2 = next_lev_cfg_data.attr[1].val/10
                self.ConDesc_txt_2.text = string.format("%s<color='#b031d5'>%s</color><color='#00FF00'>+%s%%</color>", TI18N("下级："), TI18N("伤害加成"),     val_2)

            end
        elseif #next_lev_cfg_data.attr > 0 then
            local val_1 = next_lev_cfg_data.attr[1].val/10
            self.ConDesc_txt_1.text = string.format("%s<color='#b031d5'>%s</color><color='#00FF00'>+%s%%</color>", TI18N("当前："), TI18N("伤害加成"),     val_1)
        end
    end
    if skilldata.id == 10024 then
        self.ConDesc:SetActive(true)
        if #skilldata.attr > 0 then
            local val_1 = skilldata.attr[1].val/10
            self.ConDesc_txt_1.text = string.format("%s<color='#b031d5'>%s</color><color='#00FF00'>+%s%%</color>", TI18N("当前："), TI18N("伤害减免"),     val_1)

            if next_lev_cfg_data ~= nil then
                local val_2 = next_lev_cfg_data.attr[1].val/10
                self.ConDesc_txt_2.text = string.format("%s<color='#b031d5'>%s</color><color='#00FF00'>+%s%%</color>", TI18N("下级："), TI18N("伤害减免"),     val_2)

            end
        elseif #next_lev_cfg_data.attr > 0 then
            local val_1 = next_lev_cfg_data.attr[1].val/10
            self.ConDesc_txt_1.text = string.format("%s<color='#b031d5'>%s</color><color='#00FF00'>+%s%%</color>", TI18N("当前："), TI18N("伤害减免"),     val_1)
        end
    end
    if skilldata.id == 10025 then
        self.ConDesc:SetActive(true)
        if #skilldata.attr > 0 then
            local val_1 = skilldata.attr[1].val
            self.ConDesc_txt_1.text = string.format("%s<color='#b031d5'>%s</color><color='#00FF00'>+%s</color>", TI18N("当前："), TI18N("物防"),     val_1)

            if next_lev_cfg_data ~= nil then
                local val_2 = next_lev_cfg_data.attr[1].val
                self.ConDesc_txt_2.text = string.format("%s<color='#b031d5'>%s</color><color='#00FF00'>+%s</color>", TI18N("下级："), TI18N("物防"),     val_2)

            end
        elseif #next_lev_cfg_data.attr > 0 then
            local val_1 = next_lev_cfg_data.attr[1].val
            self.ConDesc_txt_1.text = string.format("%s<color='#b031d5'>%s</color><color='#00FF00'>+%s</color>", TI18N("当前："), TI18N("物防"),     val_1)
        end
    end
    if skilldata.id == 10026 then
        self.ConDesc:SetActive(true)
        if #skilldata.attr > 0 then
            local val_1 = skilldata.attr[1].val
            self.ConDesc_txt_1.text = string.format("%s<color='#b031d5'>%s</color><color='#00FF00'>+%s</color>", TI18N("当前："), TI18N("魔防"),     val_1)

            if next_lev_cfg_data ~= nil then
                local val_2 = next_lev_cfg_data.attr[1].val
                self.ConDesc_txt_2.text = string.format("%s<color='#b031d5'>%s</color><color='#00FF00'>+%s</color>", TI18N("下级："), TI18N("魔防"),     val_2)

            end
        elseif #next_lev_cfg_data.attr > 0 then
            local val_1 = next_lev_cfg_data.attr[1].val
            self.ConDesc_txt_1.text = string.format("%s<color='#b031d5'>%s</color><color='#00FF00'>+%s</color>", TI18N("当前："), TI18N("魔防"),     val_1)
        end
    end
    if skilldata.id == 10027 then
		  self.ConDesc:SetActive(true)
        if #skilldata.attr > 0 then
            local val_1 = skilldata.attr[1].val
            self.ConDesc_txt_1.text = string.format("%s<color='#b031d5'>%s</color><color='#00FF00'>+%s</color>", TI18N("当前："), TI18N("速度"),     val_1)

            if next_lev_cfg_data ~= nil then
                local val_2 = next_lev_cfg_data.attr[1].val
                self.ConDesc_txt_2.text = string.format("%s<color='#b031d5'>%s</color><color='#00FF00'>+%s</color>", TI18N("下级："), TI18N("速度"),     val_2)

            end
        elseif #next_lev_cfg_data.attr > 0 then
            local val_1 = next_lev_cfg_data.attr[1].val
            self.ConDesc_txt_1.text = string.format("%s<color='#b031d5'>%s</color><color='#00FF00'>+%s%%</color>", TI18N("当前："), TI18N("速度"),     val_1)
        end
		
      
    end

		--	if skilldata.id == 10020 then
		--		self.BtnProduce.gameObject:SetActive(false)
		--	elseif skilldata.id == 10021 then
		--		self.BtnProduce.gameObject:SetActive(false)
		--	elseif skilldata.id == 10022 then
		--		self.BtnProduce.gameObject:SetActive(false)
		--	elseif skilldata.id == 10023 then
		--		self.BtnProduce.gameObject:SetActive(false)
		--	elseif skilldata.id == 10024 then
		--		self.BtnProduce.gameObject:SetActive(false)
		--	elseif skilldata.id == 10025 then
		--		self.BtnProduce.gameObject:SetActive(false)
		--	elseif skilldata.id == 10026 then
		--		self.BtnProduce.gameObject:SetActive(false)
		--	elseif skilldata.id == 10027 then
		--		self.BtnProduce.gameObject:SetActive(false)
		--	else
		--		self.BtnProduce.gameObject:SetActive(true)
		--		if #skilldata.product == 0 then
		--			self.BtnProduce_button.image.sprite = self.BtnProduce_ImgGrey.sprite
		--			self.BtnProduce_button.enabled = false
		--		else
		--			self.BtnProduce_button.image.sprite = self.BtnProduce_ImgNormal.sprite
		--			self.BtnProduce_button.enabled = true
		--		end
		--	end
end

function SkillView_Bagua:set_slot_item_data(go, index, base_id, open_lev, _type)
    local slot = nil
    if _type == nil then
        slot = self.l_item_slots[index]
    else
        slot = self.more_item_slots[index]
    end

    go:SetActive(true)
    local txtLev = go.transform:FindChild("TxtLev"):GetComponent(Text)
    local imgFrame = go.transform:FindChild("ImgFrame").gameObject
    local cg = txtLev.transform:GetComponent(CanvasGroup)
    cg.blocksRaycasts = false

    local itemData = DataItem.data_get[base_id] --设置数据
    imgFrame.gameObject:SetActive(false)
    txtLev.gameObject:SetActive(false)
    if open_lev > self.skilldata.lev then
        txtLev.gameObject:SetActive(true)
        txtLev.text = string.format("Lv.%s", open_lev)
        txtLev.transform:SetAsLastSibling()
    else
        local key = string.format("%s_%s", self.skilldata.lev, base_id)
        local d = DataSkillLife.data_product_frame_lev[key]
        if d ~= nil then
            local step = d.odds[#d.odds].step
            itemData.step = step
            local txtLev = imgFrame.transform:FindChild("TxtLev"):GetComponent(Text)
            txtLev.text = string.format("<color='#ACE92A'>%s</color>", step)
            imgFrame.gameObject:SetActive(true)
        end
    end



    if slot == nil then
        slot = ItemSlot.New()
        slot.gameObject.transform:SetParent(go.transform)
        slot.gameObject.transform.localScale = Vector3.one
        slot.gameObject.transform.localPosition = Vector3.zero
        slot.gameObject.transform.localRotation = Quaternion.identity
        slot.gameObject.transform:SetAsFirstSibling()
        local rect = slot.gameObject:GetComponent(RectTransform)
        rect.anchorMax = Vector2(1, 1)
        rect.anchorMin = Vector2(0, 0)
        rect.localPosition = Vector3(0, 0, 1)
        rect.offsetMin = Vector2(0, 0)
        rect.offsetMax = Vector2(0, 2)
        rect.localScale = Vector3.one

        if _type == nil then
            self.l_item_slots[index] = slot
        else
            self.more_item_slots[index] = slot
        end
    end
    local cell = ItemData.New()
    cell:SetBase(itemData)
    slot:SetAll(cell, { nobutton = true })
end

--更新多余的
function SkillView_Bagua:update_more_slot_items()
    if self.current_line_list ~= nil then
        for k, v in pairs(self.more_item_slots) do
            v:DeleteMe()
            v = nil
        end
        self.more_item_slots = {}

        for i=1,#self.current_line_list do
            local it = self.current_line_list[i]
            if it ~= nil then
                it:SetActive(false)
                GameObject.DestroyImmediate(it)
            end
        end
    end

    self.current_line_list = {}
    if self.current_more_data_list ~= nil and #self.current_more_data_list ~= 0 then
        local current_line_con = nil
        local current_item = nil
        for i=1,#self.current_more_data_list do
            local data = self.current_more_data_list[i]
            if i%2 ~= 0 then --奇数，新开i
                current_line_con = GameObject.Instantiate(self.ConMore_line)
                UIUtils.AddUIChild(self.ConMore_line.transform.parent.gameObject, current_line_con)

                current_item = current_line_con.transform:FindChild("Item").gameObject
                table.insert(self.current_line_list, current_line_con)
            end

            local open_data = DataSkillLife.data_product_open[data.key]
            if open_data == nil then
                open_data = data
            end
            local it = GameObject.Instantiate(current_item)
            UIUtils.AddUIChild(current_item.transform.parent.gameObject, it)
            self:set_slot_item_data(it, i,open_data.base_id, open_data.open_lev, 1)
        end
    end
end

function SkillView_Bagua:create_slot(slot_con)
    local stone_slot = ItemSlot.New()
    stone_slot.gameObject.transform:SetParent(slot_con.transform)
    stone_slot.gameObject.transform.localScale = Vector3.one
    stone_slot.gameObject.transform.localPosition = Vector3.zero
    stone_slot.gameObject.transform.localRotation = Quaternion.identity
    local rect = stone_slot.gameObject:GetComponent(RectTransform)
    rect.anchorMax = Vector2(1, 1)
    rect.anchorMin = Vector2(0, 0)
    rect.localPosition = Vector3(0, 0, 1)
    rect.offsetMin = Vector2(0, 0)
    rect.offsetMax = Vector2(0, 2)
    rect.localScale = Vector3.one
    return stone_slot
end


function SkillView_Bagua:set_stone_slot_data(slot, data, nb)
    if slot == nil then
        return
    end
    local cell = ItemData.New()
    cell:SetBase(data)
    if nb == nil then
        slot:SetAll(cell, {_nobutton = true})
    else
        slot:SetAll(cell, {_nobutton = false})
    end
end

function SkillView_Bagua:updateSkill_Marry()
    local skilldata = self.skilldata
    local transform = self.transform

    if nil == skilldata then return end
    self.marryInfoPanel:SetActive(true)
    self.lifeInfoPanel:SetActive(false)

    local info_panel = self.marryInfoPanel
    -- info_panel.transform:FindChild("Icon"):GetComponent(Image).sprite
    --                 = self.assetWrapper:GetSprite(AssetConfig.skillIcon_roleother, tostring(skilldata.icon))
    self.info_panel_iconloader:SetSprite(SingleIconType.SkillIcon, tostring(skilldata.icon))

    info_panel.transform:FindChild("NameText"):GetComponent(Text).text = skilldata.name --.."  LV."..skilldata.lev

    info_panel.transform:FindChild("DescText"):GetComponent(Text).text = skilldata.desc

    info_panel.transform:FindChild("DescText1"):GetComponent(Text).text = skilldata.condition
    info_panel.transform:FindChild("DescText2"):GetComponent(Text).text = skilldata.desc2
    info_panel.transform:FindChild("DescText3"):GetComponent(Text).text = skilldata.location
    info_panel.transform:FindChild("DescText4"):GetComponent(Text).text = string.format(TI18N("%s魔法"), tostring(skilldata.cost_mp))
    info_panel.transform:FindChild("DescText5"):GetComponent(Text).text = string.format(TI18N("%s回合"), tostring(skilldata.cooldown))

    info_panel.transform:FindChild("Desc"):GetComponent(Text).text = skilldata.lev_desc

   	if self.select_skilldata.lev == 0 then
   		self.button.gameObject:SetActive(true)
   		info_panel.transform:FindChild("ActiveText").gameObject:SetActive(false)
   	else
   		self.button.gameObject:SetActive(false)
   		info_panel.transform:FindChild("ActiveText").gameObject:SetActive(true)
   	end
end

function SkillView_Bagua:okbuttonclick()
	SceneManager.Instance.sceneElementsModel:Self_PathToTarget("44_1")
	self.parent:OnClickClose()
end

function SkillView_Bagua:on_click_win(g)
    if self.more_show == true then
        self.more_show = not self.more_show
        self.ConMore:SetActive(self.more_show)
    end
end

function SkillView_Bagua:on_click_produce_btn(g)
    self:on_click_win()
    --打开产出
    self.model.life_produce_data = self.skilldata
    self.model:OpenSkillLifeProduceWindow()
end

function SkillView_Bagua:on_show_more_items(g)
    self.more_show = not self.more_show
    self.ConMore:SetActive(self.more_show)
end

function SkillView_Bagua:on_click_study_btn(g)
    self:on_click_win()
    if self.lossGuild == true then
        local itemData = ItemData.New()
        local basedata = DataItem.data_get[90011]
        itemData:SetBase(basedata)
        TipsManager.Instance:ShowItem({gameObject = nil, itemData = itemData})
    end
    if self.skilldata == nil then return end
    
    SkillManager.Instance:Send10809(self.skilldata.id)
end

function SkillView_Bagua:on_click_onekey_study_btn(g)
    self:on_click_win()
    if self.lossGuildTen == true then
        local itemData = ItemData.New()
        local basedata = DataItem.data_get[90011]
        itemData:SetBase(basedata)
        TipsManager.Instance:ShowItem({gameObject = nil, itemData = itemData})
    end
    if self.skilldata == nil then return end
    
     SkillManager.Instance:Send10815(self.skilldata.id)
end

function SkillView_Bagua:on_click_tanhao(g)
    local tips = {}
    table.insert(tips, TI18N("<color='#00FF00'>帮派贡献</color>：可通过<color='#00FF00'>帮派任务</color>、<color='#00FF00'>帮派强盗</color>、<color='#00FF00'>银币兑换贡献</color>以及使用<color='#00FF00'>荣耀徽章</color>获得"))
    -- local t = {trans=g.transform,content=tips}
    -- mod_tips.general_tips(t)
    TipsManager.Instance:ShowText({gameObject =  self.ImgTanHao.gameObject, itemData = tips})
end

function SkillView_Bagua:ShowQuickBuy(base_id, num)
    BuyManager.Instance:ShowQuickBuy({[base_id] = {need = num}})
end

