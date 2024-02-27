return function (self) 
--if not Environment:IsMakerPlay() then
--    return
--end

local player = _UserService.LocalPlayer
local playerQuest = player.PlayerQuest

self.isMoney = false

table.clear(self.canStartQuest) -- 시작 가능
table.clear(self.startedQuest) -- 시작한 퀘스트
table.clear(self.possibleQuest) -- 완료가능한 퀘스트
table.clear(self.completeQuest) -- 완료한 퀘스트

for questID, _ in pairs(_QuestData.quests) do
	local questStatus = playerQuest:QuestStatus(questID)
	if questStatus == 0 then
		local npcID = self:CheckStart(player, questID, 0)
		if npcID > 0 then
			self.canStartQuest[questID] = npcID
		end
	elseif questStatus == 1 then
		local npcID = self:CheckStart(player, questID, 1)
		self.startedQuest[questID] = {self:FindNpc(questID, 0), self:FindNpc(questID, 1)}
		if npcID > 0 then
			self.possibleQuest[questID] = npcID
		end
		if _QuestData.mesoQuest[questID] ~= nil then
			self.isMoney = true
		end
	elseif questStatus == 2 then
		self.completeQuest[questID] = self:FindNpc(questID, 0)
	end
end

--for questID, _ in pairs(self.startedQuest) do
--     _QuestData:GetData(questID)
--    아이템 메소가 조건일 경우 코딩
--end

self:MapUpdate()
_QuestUIManager:CheckQuestUpdate()
end