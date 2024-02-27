return function (self) 
if self.clickIndex < 1 or self.clickIndex > 100 then
	_MessageLogic:DropMessage("구매할 슬롯을 선택해주세요.")
	return
end

local index = self.clickIndex
local player = _UserService.LocalPlayer

local reBuy = player.PlayerReBuy
local item = reBuy.shop[index]
if item == nil then
	_MessageLogic:DropMessage("해당 슬롯에는 아이템이 없습니다.")
	return
end

local nItem = item[1]
local meso = item[2]

if not player.PlayerInventory:CanHold(nItem["id"], nItem["quantity"]) then
	_MessageLogic:DropMessage("인벤토리 슬롯이 부족합니다.")
	return
end
if meso == nil or meso <= 0 then
	_MessageLogic:DropMessage("1 메소 이상 아이템만 재구매 가능합니다.")
	return
end
if player.PlayerInventory:GetMeso() < meso then
	_MessageLogic:DropMessage("메소가 부족합니다.")
	return
end

self:Buy(player, self.clickIndex)
end