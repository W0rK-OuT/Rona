return function (self,questID) 
local questData = _QuestData:GetData(questID)
if questData == nil then
	return
end
if _GameUtil:IsGameMaster(_UserService.LocalPlayer) then
	_MessageLogic:ChatMessage(5, "수락 : " .. _QuestData:GetName(questID) .. " (" .. questID .. ")")
end

local check = questData["check0"]
local script = check["startscript"]
if script ~= nil then
	if _GameUtil:IsGameMaster(_UserService.LocalPlayer) then
		_MessageLogic:ChatMessage(5, "스타트 스크립트 : " .. _QuestData:GetName(questID) .. " (" .. questID .. ")")
	end
	_UserService.LocalPlayer.PlayerNpcTalk:QuestScript(self.npcEntity, questID, true)
	self:DisposeQuest()
	return
end

self.questData = questData
self.questID = questID
self.status = 0
self.state = 0
self.questState = 0
self.curState = "base"

self:QuestTalkMore(1, -1)
end