return function (self,state) 
local sound
if state == "ATTACK" then
	sound = "320f4e149d894741a46ce0f32e40cd55"
elseif state == "SKILL2" then
	sound = "142efd2b677f4eb3900819a40cb1fba8"
end
if not _UtilLogic:IsNilorEmptyString(sound) then
	_SoundService:PlaySound(sound, 1)
end
end