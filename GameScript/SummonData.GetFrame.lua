return function (self,id,key) 
local summonData = self.summonData[id]
if summonData == nil then
	return 0
end
return _GameUtil:ConvertValue(summonData[key .. "Frame"], 0)
end