return function (self,id) 
local info = self:SkillInfo(id, 1)
if info["noActive"] ~= nil then
	return false
end
if info["mpCon"] ~= nil then
	return true
end
return false
end