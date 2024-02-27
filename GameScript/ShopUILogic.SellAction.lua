return function (self,bundle,update) 
local tab = self.invSlot
local shopInvIndex = self.invIndex
if shopInvIndex == 0 then
	return
end
if bundle == nil or bundle <= 0 then
	_MessageLogic:DropMessage("1 이상의 숫자만 가능합니다.")
	return
end
if bundle >= 10000 then
	_MessageLogic:DropMessage("9,999 이하의 숫자만 가능합니다.")
	return
end
if update then
	self:CloseSell()
end

local find = self.invGrid:GetChildByName(tostring(shopInvIndex))
if find == nil then
	return
end
local findSlot = find:GetChildByName("slot").TextComponent.Text
if _UtilLogic:IsNilorEmptyString(findSlot) then
	return
end

local player = _UserService.LocalPlayer

local playerInventory = player.PlayerInventory
local inv = playerInventory:GetInv(tab)
if inv == nil then
	return
end
local item = inv[findSlot]
if item == nil then
	_MessageLogic:DropMessage(findSlot .. "칸에 아이템이 존재하지 않습니다.")
	return
end
local id = item["id"]
local info = _ItemData:GetItemInfo(id)

--if not _ItemData:CanSale(info, item) then
--    _MessageLogic:DropMessage("판매가 불가능한 아이템입니다.")
--    return
--end

self:SellItem(player, tab, tonumber(findSlot), bundle)
end