return function (self,id) 
local quest = self.quest["" .. id]
if quest == nil then
	return ""
end
return _GameUtil:ConvertString(quest["i"], "")
end