return function (self,tab,slot) 
if tab < 1 or tab > 5 then
	return
end
local inv = _UserService.LocalPlayer.PlayerInventory:GetInv(tab)
if inv == nil then
	return
end

local item = inv[slot]
if item == nil then
	return
end
if tab == 5 then
	_MessageLogic:DropMessage("캐시 아이템은 넣을 수 없습니다.")
	return
end

if not _ItemData:CanTrade(_ItemData:GetItemInfo(item["id"]), item) then
	_MessageLogic:DropMessage("교환 불가능 아이템입니다.")
	return
end

local storages = _UserService.LocalPlayer.InventoryComponent:GetItemsWithType(Storage)
---@type Storage
local freeSlot = storages[self.tab]
if freeSlot == nil then
	_MessageLogic:DropMessage("해당 창고는 존재하지 않습니다.")
	return
end
if freeSlot:GetSize() >= 1500 then
	_MessageLogic:DropMessage(self.tab .. "번 창고의 무게가 1500을 초과했습니다.")
	return
end

local quantity = item["quantity"]

if _ItemData:IsOneItem(item) or quantity == 1 then
	self:PushServer(_UserService.LocalPlayer, tab, slot, 1, self.tab)
else
	self:OpenCountBox(tab, slot, quantity)
end
end