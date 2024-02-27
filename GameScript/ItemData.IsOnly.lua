return function (self,info) 
local only = _SkillStart:ConvertValue(info["only"], 0)
if only > 0 then
	return true
end
return false
end