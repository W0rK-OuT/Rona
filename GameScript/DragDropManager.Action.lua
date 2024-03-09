return function (self,bunddd) 
local player = _UserService.LocalPlayer

if self.tab == 0 then
	return
end
if _UtilLogic:IsNilorEmptyString(self.slot) then
	return
end
if bunddd == nil then
	bunddd = tonumber(self.countBox:GetChildByName("Input").TextInputComponent.Text)
end 

if bunddd == nil or bunddd <= 0 or bunddd >= 10000 then
	_MessageLogic:DropMessage("1 이상 9,999 이하의 숫자만 가능합니다.")
	return
end

local inv = player.PlayerInventory:GetInv(self.tab)
if inv == nil then
	return
end
local item = inv[self.slot]
if item == nil then
	return
end

local id = item["id"]
local quantity = item["quantity"]

if not _ItemData:IsOneItem(item) then
	if quantity < bunddd then
		_MessageLogic:DropMessage(_Util:ConvertComma(quantity) .. " 이하의 숫자만 가능합니다.")
		return
	end
end

if player.PlayerLie:GetTotal() >= 5 then
	_MessageLogic:DropMessage("거짓말 탐지기 패널티로 버릴 수 없습니다.")
	return
end

player.PlayerInventory:PlayerDropItem(self.tab, self.slot, bunddd)
self:CloseUI()
end