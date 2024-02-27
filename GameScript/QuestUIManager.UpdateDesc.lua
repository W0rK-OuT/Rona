return function (self,update) 
if update then
	local questData = _QuestData:GetData(self.lastQuest)
	if questData == nil then
		self.descInfo:SetEnable(false)
		return
	end
	local status = _UserService.LocalPlayer.PlayerQuest:QuestStatus(self.lastQuest)
	
	local info = questData["info"]
	local check = questData["check0"]
	local npcID = check["npc"]
	local ruid = _NpcData:GetNpcRUID(npcID)
	
	local qName = info["name"]
	local qInfo = info["" .. status]
	
	local lvmin = _SkillStart:ConvertValue(check["lvmin"], 0)
	local lvmax = _SkillStart:ConvertValue(check["lvmax"], 0)
	
	local levelText = ""
	if lvmin > 0 then
		if _UtilLogic:IsNilorEmptyString(levelText) then
			levelText ..= "레벨"
		end
		levelText ..= " " .. lvmin .. " 이상"
	end
	if lvmax > 0 then
		if _UtilLogic:IsNilorEmptyString(levelText) then
			levelText ..= "레벨"
		end
		levelText ..= " " .. lvmax .. " 이하"
	end
	
	self.descInfo:GetChildByName("Name").TextComponent.Text = qName
	self.descInfo:GetChildByName("Level").TextComponent.Text = levelText
	self.textInfo.TextComponent.Text = _TextManager:MapleStr(qInfo)
	self.descInfo:GetChildByName("GiveUp"):SetEnable(status == 1 and true or false)
	self.descInfo:GetChildByName("Npc").SpriteGUIRendererComponent.ImageRUID = ruid
	
	self.descInfo:SetEnable(true)
else
	self.descInfo:SetEnable(false)
end
end