return function (self,count) 
if count == nil or count <= 0 then
	return
end
local player = _UserService.LocalPlayer
local meso = player.PlayerInventory:GetMeso()
if meso < count then
	_MessageLogic:DropMessage(meso .. " 이하의 숫자만 가능합니다.")
	return
end
if not self:CanAdd() then
	_MessageLogic:DropMessage("교환 가능한 대상이 없습니다.")
	return
end
_UserService.LocalPlayer.PlayerTrade:AddMeso(count)
end