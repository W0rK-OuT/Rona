return function (self,tab,slot,item,gain) 
local inv = self:GetInv(tab)
if inv == nil then
	return
end
local itemID
local oriCount 
if item ~= nil then
	itemID = item["id"]
	oriCount = self:ItemQuantity(itemID)
else
	local nItem = inv[slot]
	if nItem ~= nil then
		itemID = nItem["id"]
	end
end
inv[slot] = item

if item == nil then
	if _InventoryUIManager.lastTab == tab and _InventoryUIManager.lastSlot == slot then
		_InventoryUIManager.lastTab = 0
		_InventoryUIManager.lastSlot = ""
		_InventoryUIManager:Highlight()
	end
elseif gain then
	_InventoryUIManager.lastTab = tab
	_InventoryUIManager.lastSlot = slot
	_InventoryUIManager:Highlight()
end
if _InventoryUIManager.tab == tab then
	_InventoryUIManager:UpdateItem(tab, slot, item)
end
_InventoryUIManager:UpdateEtc(tab, slot)

if itemID ~= nil and oriCount == nil then
	oriCount = self:ItemQuantity(itemID)
end
_QuestManager:QuestUpdateItem(itemID, oriCount)
end