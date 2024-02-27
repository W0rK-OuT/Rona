return function (self,questID) 
local questData = _QuestData:GetData(questID)
if questData == nil then
	return
end
if _GameUtil:IsGameMaster(_UserService.LocalPlayer) then
	_MessageLogic:ChatMessage(5, "완료전 : " .. _QuestData:GetName(questID) .. " (" .. questID .. ")")
end

local check = questData["check1"]
local script = check["endscript"]
if script ~= nil then
	if _GameUtil:IsGameMaster(_UserService.LocalPlayer) then
		_MessageLogic:ChatMessage(5, "엔드 스크립트 : " .. _QuestData:GetName(questID) .. " (" .. questID .. ")")
	end
	_UserService.LocalPlayer.PlayerNpcTalk:QuestScript(self.npcEntity, questID, false)
	self:DisposeQuest()
	return
end

self.questData = questData
self.questID = questID
self.status = 0
self.state = 1
self.questState = 1
self.curState = "base"
self.curState2 = "end"

self:QuestTalkMore(1, -1)
end