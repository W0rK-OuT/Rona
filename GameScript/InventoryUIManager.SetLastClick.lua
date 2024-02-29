return function (self,slot) 
if _UtilLogic:IsNilorEmptyString(slot) then
	self.lastClick = ""
	_DragBackManager:CheckClose("all")
	return
end
local inv = _UserService.LocalPlayer.PlayerInventory:FindInv()
local item = inv[slot]
if item == nil then
	return
end
self.lastClick = slot
_DragBackManager:OpenUI("inv", tostring(self.tab), slot)

local uiSlot = slot
end