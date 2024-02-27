return function (self) 
-- ===================================================
-- 낙댐 충돌
-- ===================================================
if self.Damaged then
	return
end

local player = _UserService.LocalPlayer
local direction = player.PlayerControllerComponent.LookDirectionX >= 0 and "Right" or "Left"

if direction == "Left" then
	player.RigidbodyComponent:AddForce(Vector2(self.XPower * -1, self.YPower))	
elseif direction == "Right" then
	player.RigidbodyComponent:AddForce(Vector2(self.XPower, self.YPower))	
end

self.Damaged = true

self:PlayDamageEmotion()
end