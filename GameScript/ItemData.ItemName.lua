return function (self,id) 
if id == nil then
	return "nil"
end
if id == 0 then
	return "메소"
end
local itemTable = self:GetItem(id)
if itemTable == nil then
	return "nil"
end
if _UtilLogic:IsNilorEmptyString(itemTable["ruid"]) then
	return "nil"
end
return itemTable["name"]
end