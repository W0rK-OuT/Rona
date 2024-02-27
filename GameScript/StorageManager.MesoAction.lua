return function (self,num) 
if num == nil then
	num = tonumber(self.mesoBox:GetChildByName("Input").TextInputComponent.Text)
end
if num == nil or num <= 0 then
	_MessageLogic:DropMessage("1 이상의 숫자만 가능합니다.")
	return
end

local player = _UserService.LocalPlayer
local inv = player.InventoryComponent
if not inv.IsInitialized then
	_MessageLogic:DropMessage("창고 정보가 로딩되지 않았습니다.")
	return
end

local invs = inv:GetItemsWithType(Storage)
---@type Storage
local storage = invs[1]
if storage == nil then
	_MessageLogic:DropMessage("창고 정보를 찾을 수 없습니다.")
	return
end

local stoMeso = _SkillStart:ConvertValue(storage.meso, 0)
if self.isGet then
	if num > stoMeso then
		_MessageLogic:DropMessage(_Util:ConvertComma(stoMeso) .. " 이하의 메소만 가능합니다.")
		return
	end
else
	if num > player.PlayerInventory:GetMeso() then
		_MessageLogic:DropMessage(_Util:ConvertComma(player.PlayerInventory:GetMeso()) .. " 이하의 메소만 가능합니다.")
		return
	end
end

self:PushMeso(player, self.isGet, num)
self:CloseMesoBox()
end