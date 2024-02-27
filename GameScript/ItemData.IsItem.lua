return function (self,id) 
local itemTable = self:GetItem(id)
if itemTable == nil then
	return false
end
return not _UtilLogic:IsNilorEmptyString(itemTable["ruid"])
end