return function (self,id,oriCount) 
if id == nil or oriCount == nil then
	return
end

local check = false
local player = _UserService.LocalPlayer

for questID, items in pairs(_QuestData.itemQuest0) do
	for k, v in pairs(items) do
		if v["id"] == id then
			local npcID = self:CheckStart(player, questID, 0)
			if npcID > 0 then
				if self.canStartQuest[questID] == nil then
					check = true
					goto go
				end
			else
				if self.canStartQuest[questID] ~= nil then
					check = true
					goto go
				end
			end
		end
	end
end

::go::

for questID, _ in pairs(self.startedQuest) do
	local item = _QuestData.itemQuest1[questID]
	if item ~= nil then
		for k, v in pairs(item) do
			if v["id"] == id then
				local count = _SkillStart:ConvertValue(v["count"], 0)
				if count > 0 and oriCount < count then
					local quantity = player.PlayerInventory:ItemQuantity(id)
					_MessageLogic:TopMessage(4, _ItemData:GetItem(id)["name"] .. " " .. quantity .. " / " .. count)
				end
			end
		end
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
end
if check then
	self:AllUpdateQuest()
end
end