return function (self) 
local index = self.lastIndex
local tab = self.tab
self:CloseBuy()

local player = _UserService.LocalPlayer
local items = _Util:FindTable_All("BMItems" .. tab)
if items == nil then
	_MessageLogic:DropMessage("존재하지 않는 상점입니다.")
	return
end
local item = items[index]
if item == nil then
	_MessageLogic:DropMessage("아이템을 찾을 수 없습니다.")
	return
end
local price = tonumber(item["price"])
local id = tonumber(item["id"])

if not player.PlayerInventory:CanHold(id, 1) then
	_MessageLogic:DropMessage("인벤토리가 부족합니다.")
	return
end

if not player.PlayerInventory:CanHold(id, 1) then
	_MessageLogic:DropMessage("인벤토리가 부족합니다.")
	return
end
if _TradeManager.main.Enable then
	_MessageLogic:DropMessage("교환 중에는 구매할 수 없습니다.")
	return
end

self:BuyItem(player, tab, index)
end