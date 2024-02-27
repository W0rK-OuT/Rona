return function (self,state) 
local sound
if state == "ATTACK" then
	sound = "94b721bcc6d2404cbb1c0b1e13878eeb"
	_EffectService:PlayEffectAttached("2c1d9184edac4ecfa606d37862b71ebd", self.Entity, Vector3.zero, 0, Vector3.one)
elseif state == "SKILL" then
	sound = "e35d980959fe4cd3b8302331cfa742c3"
end

if not _UtilLogic:IsNilorEmptyString(sound) then
	_SoundService:PlaySound(sound, 1)
end
end