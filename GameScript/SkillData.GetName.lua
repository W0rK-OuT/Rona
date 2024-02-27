return function (self,id) 
local skill = self:GetSkill(id)
if skill == nil then
	return ""
end
return _SkillStart:ConvertString(skill["name"], "")
end