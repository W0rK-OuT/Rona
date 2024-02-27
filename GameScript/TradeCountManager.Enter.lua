return function (self,count) 
if count == nil or count <= 0 then
	return
end
local player = _UserService.LocalPlayer
local inv = player.PlayerInventory:GetInv(self.tab)
if inv == nil then
	return
end
local item = inv[self.slot]
if item == nil then
	return
end
local quantity = item["quantity"]
if quantity < count then
	_MessageLogic:DropMessage(quantity .. " 이하의 숫자만 가능합니다.")
	return
end
if not self:CanAdd() then
	_MessageLogic:DropMessage("교환 가능한 대상이 없습니다.")
	return
end
_UserService.LocalPlayer.PlayerTrade:AddItem(self.tab, self.slot, count)
end