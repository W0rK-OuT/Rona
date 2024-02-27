return function (self,id) 
local info = self:SkillInfo(id, 1)
if info["move"] ~= nil then
	return true
end
return false
end