return function (self,info,item) 
local notSale = _SkillStart:ConvertValue(info["notSale"], 0)
if notSale > 0 then
	return false
end
local quest = _SkillStart:ConvertValue(info["quest"], 0)
if quest > 0 then
	return false
end
return true
end