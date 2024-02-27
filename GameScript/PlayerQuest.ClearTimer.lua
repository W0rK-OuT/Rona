return function (self,questID) 
local quest = self.quest["" .. questID]
if quest == nil then
	return 0
end
return _SkillStart:ConvertValue(quest["t"], 0)
end