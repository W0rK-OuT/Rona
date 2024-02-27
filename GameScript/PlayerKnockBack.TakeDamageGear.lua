return function (self,direction,gearType) 
-- ===================================================
-- 방향 충돌
-- ===================================================
if self.Damaged then
	return
end

local player = _UserService.LocalPlayer
local xPower = 0
local yPower = 0
local forceType = false
if gearType == "Linear" then
	xPower = 2.75
	yPower = 2.75
	forceType = false
elseif gearType == "UpDown" then
	xPower = 3.2
	yPower = 0.5
	forceType = false
elseif gearType == "Circle" then
	xPower = 3.65
	yPower = 0.55
	forceType = true
end

--self:Knockback(xPower, yPower, direction, forceType)
self.Damaged = true
self:PlayDamageEmotion()
end