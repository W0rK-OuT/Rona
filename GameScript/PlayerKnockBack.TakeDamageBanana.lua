return function (self,collider) 
-- ===================================================
-- 몬스터 충돌
-- ===================================================
if self.Damaged then
	return
end

local player = _UserService.LocalPlayer

local direction = collider.TransformComponent.WorldPosition.x <= player.TransformComponent.WorldPosition.x and "Right" or "Left"
local xPower = 2.35
local yPower = 3

----self:Knockback(xPower, yPower, direction, false)

self.Damaged = true

self:PlayDamageEmotion()
end