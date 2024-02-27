return function (self,power) 
_SkillMove:CancelWings(false)
_RapidSkill:EndSkill()

--if _PlayerWeather.swim then
--    power.x = power.x * 0.5
--end
local gravity = math.min(1, self.rigid.Gravity)
local x = gravity * power.x / self.move.InputSpeed
local y = gravity * power.y / self.move.JumpForce

self.rigid:SetForce(Vector2(x, y))
end