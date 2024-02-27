return function (self,id) 
local skillInfo = self.skills[tostring(id)]
if skillInfo == nil then
	return 0
end
return _GameUtil:ConvertValue(skillInfo["m"], 0)
end