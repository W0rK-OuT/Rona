return function (self,id) 
local quest = self.quest["" .. id]
if quest == nil then
	return ""
end
return _SkillStart:ConvertString(quest["i"], "")
end