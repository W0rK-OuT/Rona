return function (self,id) 
local player = _UserService.LocalPlayer
if not player.PlayerStats:IsActing() then
	return
end
local slot = player.PlayerInventory:FindItemSlot(id)
if slot == nil then
	return
end
self:UseSlot(_UserService.LocalPlayer, id, slot)
end