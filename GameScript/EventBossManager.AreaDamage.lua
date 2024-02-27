return function (self,monster,startPos,offset,damage,delay) 
---@type CollisionSimulator
local simul = _SkillBegin.simulator
local playerPos = monster.TransformComponent.Position:ToVector2()
local calcVec = startPos:ToVector2() + Vector2(-0.1, offset.y / 2)

--_SkillBegin:RangeUI(startPos:ToVector2(), offset, nil)

local box = simul:OverlapBoxAll("player", calcVec, offset, 0)
local checkHit = false
for key, value in pairs(box) do
	if value.Entity == _UserService.LocalPlayer then
		checkHit = true
		break
	end
end

if not checkHit then
	return
end

_EventStatManager:EventDamage(false, 0, damage, delay)
end