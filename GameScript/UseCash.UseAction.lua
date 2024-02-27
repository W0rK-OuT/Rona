return function (self,itemID,slot) 
local itemType = math.floor(itemID / 10000)

if itemType == 504 then
	_TeleportUIManager:OpenUI(itemID)
elseif itemType == 505 then
	self:OpenUseBox(itemID, slot)
elseif itemType == 507 then
	_MegaphoneManager:OpenUI(itemID)
elseif itemType == 539 then
	local t = _RandItemData:GetScrollTable(itemID)
	if t == nil then
		return
	end
	if not _RandItemData:CheckOne(_UserService.LocalPlayer, t, 1) then
		_MessageLogic:DropMessage("인벤토리 공간이 부족합니다.")
		return
	end
	_UseItem:UseSlot(_UserService.LocalPlayer, itemID, slot)
elseif itemType == 545 then
	self:OpenUseBox(itemID, slot)
end
end