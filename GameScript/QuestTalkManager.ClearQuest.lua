return function (self,questID) 
local questData = _QuestData:GetData(questID)
if questData == nil then
	return
end
if _GameUtil:IsGameMaster(_UserService.LocalPlayer) then
	_MessageLogic:ChatMessage(5, "완료 : " .. _QuestData:GetName(questID) .. " (" .. questID .. ")")
end

self.questData = questData
self.questID = questID
self.status = 0
self.state = 1
self.questState = 2
self.curState = "yes"

self:QuestTalkMore(1, -1)
end