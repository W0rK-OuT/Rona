return function (self,tab,slot) 
local player = _UserService.LocalPlayer
local inv = player.PlayerInventory:GetInv(tab)
if inv == nil then
	return
end
local item = inv[slot]
if item == nil then
	return
end
local itemID = item["id"]
local info = _ItemData:GetItemInfo(itemID)

if not _ItemData:CanTrade(info, item) then
	_MessageLogic:DropMessage("이 아이템은 다른 사람에게 줄 수 없습니다.")
	return
end
if not _TradeCountManager:CanAdd() then
	_MessageLogic:DropMessage("교환 가능한 대상이 없습니다.")
	return
end

local isOne = itemID < 2000000 or _ShopUILogic:IsRecharge(itemID) or item["quantity"] == 1
if isOne then
	player.PlayerTrade:AddItem(tab, slot, 1)
else
	_TradeCountManager:OpenUI(tab, slot)
end
end