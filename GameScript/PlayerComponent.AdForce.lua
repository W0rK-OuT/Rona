return function (self,power) 
_SkillMove:CancelWings(false)
_RapidSkill:EndSkill()
--if _PlayerWeather.swim then
--    power.x = power.x * 0.5
--end
self.rigid:AddForce(Vector2(power.x / self.move.InputSpeed * self.rigid.Gravity, power.y / self.move.JumpForce * self.rigid.Gravity))
end