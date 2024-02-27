return function (self,id) 
local data = _ItemData:GetItem(id)
local desc = data["desc"]
if not _UtilLogic:IsNilorEmptyString(desc) then
	_MessageLogic:ChatMessage(3, desc)
end
end