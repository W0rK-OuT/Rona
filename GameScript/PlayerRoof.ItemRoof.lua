return function (self) 
local player = _UserService.LocalPlayer
---@type CollisionSimulator
local simul = _RaidManager.simulator
local playerPos = _PlayerComponent.trans.Position:ToVector2()
local tri = player.TriggerComponent

local box = simul:OverlapBoxAll("itemChild", playerPos + tri.ColliderOffset, tri.BoxSize, 0)

local findEntites = {}
for key, value in pairs(box) do
	if value.Entity.TriggerComponent.Enable then
		local dropAni = value.Entity.DropAni
		if dropAni ~= nil then
			if dropAni:Pickup(false) then
				break
			end
		end
	end
end
end