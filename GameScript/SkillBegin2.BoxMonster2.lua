return function (self,mobBox,pos,range) 
---@type CollisionSimulator
local simul = self.simulator
local zeroBox = simul:OverlapBoxAll("monster", pos, range, 0)
for key, value in pairs(zeroBox) do
	if not value.Enable then
		continue
	end
	local mobInfo = value.Entity.MobInfo
	if mobInfo ~= nil and mobInfo:IsAlive() then
		mobBox[value.Entity] = true
	end
end
self:RangeUI(pos, range, Vector3(255, 255, 0))
end