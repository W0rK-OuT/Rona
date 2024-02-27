return function (self,collider) 
-- ===================================================
-- 트리트랩 충돌
-- ===================================================
if self.Damaged then
	return
end

local player = _UserService.LocalPlayer
local direction = ''

if player.RigidbodyComponent.RealMoveVelocity.x > 0 then
	direction = "Right"
	
elseif player.RigidbodyComponent.RealMoveVelocity.x < 0 then
	direction = "Left"
else
	direction = "Center"
end

local xPower = 0
local yPower = 0

if direction == "Center" then
	xPower = 0
	yPower = 2.3
else
	xPower = 3.35
	yPower = 2.3
end

--self:Knockback(xPower, yPower, direction, false)

self.Damaged = true

self:PlayDamageEmotion()
end