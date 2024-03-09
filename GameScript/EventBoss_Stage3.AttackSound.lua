return function (self,state,attackCount) 
local sound
if state == "ATTACK" then
	sound = "949d583e2a814cbc8ba8f2874e4ab676"
end

if not _UtilLogic:IsNilorEmptyString(sound) then
	_SoundService:PlaySound(sound, 1)
end

self:Attack(attackCount)
end