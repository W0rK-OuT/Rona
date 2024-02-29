return function (self,id) 
local info = self:SkillInfo(id, 1)
if info["charge"] ~= nil then
	return false
end
if info["rapid"] ~= nil then
	return false
end
return true
end