return function (self,direction,isReturn) 
-- ===================================================
-- 방향 충돌
-- ===================================================
if self.Damaged then
	return
end

local player = _UserService.LocalPlayer
local xPower = 0
local yPower = 0

if isReturn then	
	xPower = 0.5
	yPower = 4
else
	xPower = 2.75
	yPower = 2.75
end

--self:Knockback(xPower, yPower, direction, false)

self.Damaged = true

self:PlayDamageEmotion()
end