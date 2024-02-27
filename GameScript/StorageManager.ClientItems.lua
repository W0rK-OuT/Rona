return function (self,storageTab,data) 
local inv = _UserService.LocalPlayer.InventoryComponent
if not inv.IsInitialized then
	return
end

local storages = inv:GetItemsWithType(Storage)
---@type Storage
local freeSlot = storages[storageTab]
if freeSlot == nil then
	return
end
freeSlot.data = data
self:UpdateItems()
end