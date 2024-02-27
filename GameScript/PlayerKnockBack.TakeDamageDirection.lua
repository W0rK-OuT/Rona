return function (self,direction) 
-- ===================================================
-- 방향 충돌
-- ===================================================
if self.Damaged then
	return
end

local player = _UserService.LocalPlayer
local xPower = 2.75
local yPower = 2.75

--self:Knockback(xPower, yPower, direction, false)

self.Damaged = true

self:PlayDamageEmotion()
end