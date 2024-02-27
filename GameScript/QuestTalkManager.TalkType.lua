return function (self,msg,textType) 
local clone = self.main
clone:SetEnable(true)
_UIManager:Add(clone)

clone:GetChildByName("NpcRUID").SpriteGUIRendererComponent.ImageRUID = self.ruid
clone:GetChildByName("NpcName").TextComponent.Text = self.name

local grid = clone:GetChildByName("TextGrid")

if textType > 0 then
	self:TextRemove()
end
if textType == 5 then
	local selTable = _TextManager:MapleQuestSelect(msg)
	msg = _UtilLogic:TrimEnd(selTable[1], "\n")
	local selects = selTable[2]
	
	for k, v in pairs(selects) do
		local spawn = _SpawnService:SpawnByEntity(self.select, "sel" .. v[1], Vector3.zero, grid)
		local textCom = spawn.TextComponent
		
		local selStr = _TextManager:MapleStr(v[2])
		textCom.Text = "<color=navy>" .. selStr .. "</color>"
		
        --local rect = spawn.UITransformComponent.RectSize
        --rect.y = math.max(rect.y, textCom:GetPreferredHeight(selStr, rect.x))
		
		--local height = textCom:GetPreferredHeight(v[2], rect.x)
		--log(height)
		--log(textCom:GetPreferredHeight(v[2], rect.x))
		--rect.y = math.max(rect.y, textCom:GetPreferredHeight(v[2], rect.x))
	end
end
grid:GetChildByName("NpcText").TextComponent.Text = _TextManager:MapleStr(msg)

local nTable = {"Ok", "Next", "Prev", "Yes", "No", "Accept", "Decline", "NumText", "StrText"}
for _, value in pairs(nTable) do
	clone:GetChildByName(value):SetVisible(false)
end

if textType == 1 then
	clone:GetChildByName("Ok").Visible = true
elseif textType == 2 then
	clone:GetChildByName("Next").Visible = true
elseif textType == 3 then
	clone:GetChildByName("Next").Visible = true
	clone:GetChildByName("Prev").Visible = true
elseif textType == 4 then
	clone:GetChildByName("Prev").Visible = true
	clone:GetChildByName("Ok").Visible = true
elseif textType == 6 then
	clone:GetChildByName("Yes").Visible = true
	clone:GetChildByName("No").Visible = true
elseif textType == 7 then
	clone:GetChildByName("Accept").Visible = true
	clone:GetChildByName("Decline").Visible = true
elseif textType == 8 then
	local player = _UserService.LocalPlayer
	local questData = _QuestData:GetData(self.questID)
	local items
	local skills
	local exp
	if questData ~= nil then
		local act1 = questData["act1"]
		if act1 ~= nil then
			items = act1["item"]
			skills = act1["skill"]
			exp = act1["exp"]
		end
	end
	
	local check = false
	local randItem = false
	local isSelectItem = false
	local selectItems = {}
	local nItems = {}
	local teackSkill
	if items ~= nil then
		for k, v in pairs(items) do			
			if _QuestManager:CheckGetItem(player, v) then
				local id = v["id"]
				local count = _SkillStart:ConvertValue(v["count"], 0)
				local prop = _SkillStart:ConvertValue(v["prop"], 0)
				if prop > 0 then
					check = true
					randItem = true
					continue
				elseif prop < 0 then
					check = true
					isSelectItem = true
					table.insert(selectItems, {id, count})
					continue
				end
				
				if count > 0 then
					check = true
					table.insert(nItems, {id, count})
				end
			end
		end
	end
	if skills ~= nil then
		local myJob = player.PlayerStats.job
		for _, skiTable in pairs(skills) do
			local skillID = _SkillStart:ConvertValue(skiTable["id"], 0)
			if skillID == 0 then
				continue
			end
			local jobs = skiTable["job"]
			if jobs ~= nil then
				for _, jobCode in pairs(jobs) do
					if myJob == jobCode then
						teackSkill = skillID
						check = true
						break
					end
				end
			end
		end
	end
	
	if exp ~= nil then
		check = true
	end
	
	
	if isSelectItem then
		_SpawnService:SpawnByEntity(self.sel, "Sel", Vector3.zero, grid)
		for k, v in pairs(selectItems) do
			local itemSelect = _SpawnService:SpawnByEntity(self.itemSelect, "sel" .. k, Vector3.zero, grid)
			local itemData = _ItemData:GetItem(v[1])
			
			itemSelect:GetChildByName("ruid").SpriteGUIRendererComponent.ImageRUID = _GameUtil:EquipRUID(v[1], itemData["ruid"])
			itemSelect:GetChildByName("UIText").TextComponent.Text = itemData["name"] .. " " .. v[2] .. "개"
		end
	end
	
	if check then
		_SpawnService:SpawnByEntity(self.gain, "Gain", Vector3.zero, grid)
	end
	
	for k, v in pairs(nItems) do
		local id = v[1]
		local count = v[2]
		
		local itemText = _SpawnService:SpawnByEntity(self.itemText, "itemText", Vector3.zero, grid)
		local itemData = _ItemData:GetItem(id)
		itemText:GetChildByName("ruid").SpriteGUIRendererComponent.ImageRUID = _GameUtil:EquipRUID(id, itemData["ruid"])
		itemText:GetChildByName("text").TextComponent.Text = itemData["name"] .. " " .. count .. "개"
	end
	
	if teackSkill ~= nil then
		local gs = _SkillData:GetSkill(teackSkill)
		if gs ~= nil then
			local itemText = _SpawnService:SpawnByEntity(self.itemText, "itemText", Vector3.zero, grid)
			itemText:GetChildByName("ruid").SpriteGUIRendererComponent.ImageRUID = gs["ruid"]
			itemText:GetChildByName("text").TextComponent.Text = gs["name"]
		end
	end
	
	if exp ~= nil then
		local gainExp = _SpawnService:SpawnByEntity(self.gainExp, "gainExp", Vector3.zero, grid)
		if _RateManager.quest > 1 then
			gainExp:GetChildByName("text").TextComponent.Text = exp .. "x" .. _RateManager.quest .. " (" .. _Util:ConvertComma(exp * _RateManager.quest) .. ") exp"
		else
			gainExp:GetChildByName("text").TextComponent.Text = _Util:ConvertComma(exp) .. " exp"
		end
	end
	
	if randItem then
		_SpawnService:SpawnByEntity(self.randItem, "itemText", Vector3.zero, grid)
	end

	if not isSelectItem then
		clone:GetChildByName("Ok").Visible = true
	end
end

_SpawnService:SpawnByEntity(self.empty, "empty", Vector3.zero, grid)
end