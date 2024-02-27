return function (self,weapon) 
local sound
if weapon == 3 then
	sound = "80727a22cd3b470680c528c14f5909ca"
elseif weapon == 4 then
	sound = "46a1d96716e54c42b8419410d3f896ed"
elseif weapon == 7 then
	sound = "a409e66cd6844e2cb4aaa2f2bb9d0530"
elseif weapon == 9 then
	sound = "2b2366f361034e5f804e2be657043353"
end
if _UtilLogic:IsNilorEmptyString(sound) then
	return
end
_SoundService:PlaySound(sound, 1)
end