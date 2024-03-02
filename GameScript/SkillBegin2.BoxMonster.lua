return function (self,pos,range) 
local box = {}
---@type CollisionSimulator
local simul = self.simulator
local zeroBox = simul:OverlapBoxAll("monster", pos, range, 0)
for key, value in pairs(zeroBox) do
	if not value.Enable then
		continue
	end
	local mobInfo = value.Entity.MobInfo
	if mobInfo ~= nil and mobInfo:IsAlive() then
		box[value.Entity] = true
	end
end
self:RangeUI(pos, range, nil)
return box
end