return function (self,info,item) 
local tradeBlock = _GameUtil:ConvertValue(info["tradeBlock"], 0)
if tradeBlock > 0 then
	return false
end
local quest = _GameUtil:ConvertValue(info["quest"], 0)
if quest > 0 then
	return false
end
if _GameUtil:ConvertValue(item["id"], 0) == 4001017 then
	return false
end
return true
end