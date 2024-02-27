return function (self,questID) 
local data = self.loadQuests[questID]
if data == nil then
	local questLogic = _QuestData.quests[questID]
	if questLogic == nil then
		return nil
	end
	if data == nil then
		data = questLogic:GetData()
		self.loadQuests[questID] = data
	end
end
return data

--local questData = questLogic:GetData()
--if questData == nil then
--    return nil
--end
end