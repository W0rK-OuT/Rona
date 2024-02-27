return function (self,questID,index) 
local mobs = self.mobs["" .. questID]
if mobs == nil then
	return 0
end
return _GameUtil:ConvertValue(mobs["" .. index], 0)
end