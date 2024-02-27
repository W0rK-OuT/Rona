return function (self,tab,slot) 
if tab == 0 then
	return
end

local playerInv = _UserService.LocalPlayer.PlayerInventory
local inv = playerInv:GetInv(tab)
if inv == nil then
	return
end
local item = inv[slot]
if item == nil then
	return
end

local id = item["id"]
local quantity = item["quantity"]
local isOne = _ItemData:IsOneItem(item) or quantity == 1

if id >= 5000000 then
	_MessageLogic:DropMessage("이 아이템은 버릴 수 없습니다.")
	return
end

self.tab = tab
self.slot = slot
self.quantity = quantity
self.isOne = isOne

if _ItemData:CanTrade(_ItemData:GetItemInfo(id), item) then
	if isOne then
		--self:Action(1)
		self:OpenCountUI()
	else
		self:OpenCountUI()
	end
else
	self:OpenYesNoUI()
end
end