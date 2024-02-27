return function (self,slot) 
local now = _UtilLogic.ElapsedSeconds
if self.lastSlot ~= slot then
	self.lastClick = now + 0.3
	self.lastSlot = slot
	return
end
if self.lastClick < now then
	self.lastClick = now + 0.3
	return
end

local inv = _UserService.LocalPlayer.InventoryComponent:GetItemsWithType(Storage)
---@type Storage
local item = inv[self.tab]
if item == nil then
	return
end
if _UtilLogic:IsNilorEmptyString(item.data) then
	return
end

local showItem = self.lastShowItems[slot]
if showItem == nil then
	return
end

if _TradeManager.main.Enable then
	_MessageLogic:DropMessage("교환 중에는 아이템을 꺼낼 수 없습니다.")
	return
end

if not _UserService.LocalPlayer.PlayerInventory:CanHold(showItem["id"], showItem["quantity"]) then
	_MessageLogic:DropMessage("인벤토리 공간이 부족합니다.")
	return
end

self:RemoveServer(_UserService.LocalPlayer, self.tab, slot)
end