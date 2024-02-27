return function (self) 
local id = self.itemID
local slot = self.slot
self:CloseUseBox()
if id == 0 or _UtilLogic:IsNilorEmptyString(slot) then
	return
end
_UseItem:UseSlot(_UserService.LocalPlayer, id, slot)
end