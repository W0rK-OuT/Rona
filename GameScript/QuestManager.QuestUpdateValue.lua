return function (self) 
--if not Environment:IsMakerPlay() then
--    return
--end

local check = false
local player = _UserService.LocalPlayer
for questID, _ in pairs(self.startedQuest) do
	local npcID = self:CheckStart(player, questID, 1)
	if npcID > 0 then
		if self.possibleQuest[questID] == nil then
			check = true
			self:QuestClearAlarm(questID)
		end
	end
end
if check then
	self:AllUpdateQuest()
end
end