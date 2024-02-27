return function (self,id) 
local info = self:SkillInfo(id, 1)
if info["buff"] ~= nil then
	return true
end
return false
end