return function (self,questID,questData,mobsData) 
self.quest["" .. questID] = questData
self.mobs["" .. questID] = mobsData
_QuestManager:AllUpdateQuest()

local status = _SkillStart:ConvertValue(questData["s"], 0)
if status == 1 then
	if _QuestManager:CheckStart(_UserService.LocalPlayer, questID, status) > 0 then
		_QuestManager:QuestClearAlarm(questID)
	end
end
end