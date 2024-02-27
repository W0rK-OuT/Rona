return function (self,info,item) 
local tradeBlock = _SkillStart:ConvertValue(info["tradeBlock"], 0)
if tradeBlock > 0 then
	return false
end
local quest = _SkillStart:ConvertValue(info["quest"], 0)
if quest > 0 then
	return false
end
if _SkillStart:ConvertValue(item["id"], 0) == 4001017 then
	return false
end
return true
end