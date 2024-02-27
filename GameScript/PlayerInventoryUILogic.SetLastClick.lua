return function (self,slot) 
if _UtilLogic:IsNilorEmptyString(slot) then
	self.select:SetEnable(false)
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

--local findEntity = self.grid:GetChildByName(uiSlot)
--if findEntity ~= nil then
--    findEntity:AttachChild(self.select)
--    self.select:SetEnable(true)
--    self.select.UITransformComponent.anchoredPosition = Vector2(0, 0)
--end
end