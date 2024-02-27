return function (self,state) 
local sound
if state == "ATTACK" then
	sound = "6e84d2af39f1486bacf3defef746f284"
elseif state == "ATTACK2" then
	sound = "0e9cd2ad1d8b462e8130bd1bc896cccb"
elseif state == "ATTACK3" then
	sound = "f2f426f45f5141dbabeed477ad33250c"
elseif state == "SKILL2" then
	sound = "6d9392dd8f7e4502ab7ede93ba8d6e64"
elseif state == "SKILL3" then
	sound = "81d44799216f48ca8c2a6c126808b25b"
end

if not _UtilLogic:IsNilorEmptyString(sound) then
	_SoundService:PlaySound(sound, 1)
end
end