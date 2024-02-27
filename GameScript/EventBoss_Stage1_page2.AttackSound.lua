return function (self,state) 
local sound
if state == "ATTACK" then
	sound = "f357db535dc64d2e971609879fa9613a"
elseif state == "ATTACK2" then
	sound = "c9de73543b044b978e82115a88beb2db"
elseif state == "SKILL" then
	sound = "bd86b570fdaa47f3b1fbf606219def8e"
elseif state == "SKILL2" then
	sound = "d87b162a0263449f9710193d3eb3d770"
end
if not _UtilLogic:IsNilorEmptyString(sound) then
	_SoundService:PlaySound(sound, 1)
end
end