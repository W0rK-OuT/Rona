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
	if _PlayerInventoryUILogic.lastTab == tab and _PlayerInventoryUILogic.lastSlot == slot then
		_PlayerInventoryUILogic.lastTab = 0
		_PlayerInventoryUILogic.lastSlot = ""
		_PlayerInventoryUILogic:Highlight()
	end
elseif gain then
	_PlayerInventoryUILogic.lastTab = tab
	_PlayerInventoryUILogic.lastSlot = slot
	_PlayerInventoryUILogic:Highlight()
end
if _PlayerInventoryUILogic.tab == tab then
	_PlayerInventoryUILogic:UpdateItem(tab, slot, item)
end
_PlayerInventoryUILogic:UpdateEtc(tab, slot)

if itemID ~= nil and oriCount == nil then
	oriCount = self:ItemQuantity(itemID)
end
_QuestManager:QuestUpdateItem(itemID, oriCount)
end