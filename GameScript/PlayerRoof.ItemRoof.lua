return function (self) 
local player = _UserService.LocalPlayer
---@type CollisionSimulator
local simul = _TamingInfoManager.simulator
local playerPos = _PlayerComponent.trans.Position:ToVector2()
local tri = player.TriggerComponent

local box = simul:OverlapBoxAll("item", playerPos + tri.ColliderOffset, tri.BoxSize, 0)

local findEntites = {}
for key, value in pairs(box) do
	if value.Entity.TriggerComponent.Enable then
		local info = value.Entity.DropItem
		if info ~= nil and info:CheckPickup(player, false) then
			_DropData:SetPickup(_UserService.LocalPlayer, value.Entity, false)
			break
		end
	end
end
end