return function (self,name) 
if _UtilLogic:Contains(name, "S0-") then
	local questID = tonumber(_UtilLogic:SubString(name, 4))
	if questID == nil then
		return
	end
	self:StartQuest(questID)
elseif _UtilLogic:Contains(name, "S1-") then
	local questID = tonumber(_UtilLogic:SubString(name, 4))
	if questID == nil then
		return
	end
	self:StartedQuest(questID)
elseif _UtilLogic:Contains(name, "S2-") then
	local questID = tonumber(_UtilLogic:SubString(name, 4))
	if questID == nil then
		return
	end
	self:EndQuest(questID)
elseif _UtilLogic:Contains(name, "sel") then
	local selection = tonumber(_UtilLogic:SubString(name, 4))
	if selection == nil then
		return
	end
	self:QuestTalkMore(1, selection)
elseif name == "script" then
	_UserService.LocalPlayer.PlayerNpcTalk:TouchNpc(self.npcEntity)
	self:DisposeQuest()
end
end