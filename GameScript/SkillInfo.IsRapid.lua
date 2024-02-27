return function (self,id) 
local info = self:SkillInfo(id, 1)
if info["rapid"] ~= nil then
	return true
end
return false
end