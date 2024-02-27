return function (self,oriState,newState) 
local sound = self.sounds[oriState]
if not _UtilLogic:IsNilorEmptyString(sound) then
	_SoundService:PlaySoundAtPos(sound, self.Entity.TransformComponent.WorldPosition, self.Entity, 1)
end

self:SetRUID(false, oriState, newState)
end