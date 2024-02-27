return function (self,id) 
local quest = self.quest["" .. id]
if quest == nil then
	return 0
end
return _GameUtil:ConvertValue(quest["s"], 0)
end