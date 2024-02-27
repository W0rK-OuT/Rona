return function (self,id) 
local quest = self.quest["" .. id]
if quest == nil then
	return 0
end
return _SkillStart:ConvertValue(quest["s"], 0)
end