return function (self) 
if not self.isMoney then
	return
end

local check = false
local player = _UserService.LocalPlayer
for questID, _ in pairs(self.startedQuest) do
	local npcID = self:CheckStart(player, questID, 1)
	if npcID > 0 then
		if self.possibleQuest[questID] == nil then
			check = true
			self:QuestClearAlarm(questID)
		end
	else
		if self.possibleQuest[questID] ~= nil then
			self.possibleQuest[questID] = nil
			check = true
		end
	end
end
if check then
	self:AllUpdateQuest()
end
end