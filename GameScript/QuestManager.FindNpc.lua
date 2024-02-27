return function (self,questID,status) 
local questData = _QuestData:GetData(questID)
if questData == nil then
	return 0
end

local check0 = questData["check" .. status]
if check0 == nil then
	return 0
end

return _SkillStart:ConvertValue(check0["npc"], 0)
end