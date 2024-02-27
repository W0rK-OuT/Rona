return function (self,direction) 
-- ===================================================
-- 방향 충돌
-- ===================================================
if self.Damaged then
	return
end

local player = _UserService.LocalPlayer
local xPower = 0
local yPower = 0

if direction == "Top" then
	xPower = -1.75
	yPower = -4.5
	direction = ""
	
elseif direction == "Bottom" then
	xPower = 4
	yPower = 0.8
	direction = "Right"
	
elseif direction == "Left" then
	xPower = 3.2
	yPower = 0.4
	direction = "Right"
	
elseif direction == "Right" then
	xPower = 3.2
	yPower = 0.55
	direction = "Left"
end

--self:Knockback(xPower, yPower, direction, false)

self.Damaged = true

self:PlayDamageEmotion()
end