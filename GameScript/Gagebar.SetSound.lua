return function (self,ruid) 
if _UtilLogic:IsNilorEmptyString(ruid) then
	if not _UtilLogic:IsNilorEmptyString(self.lastSound) then
		_SoundService:StopSound(self.lastSound)
	end
	self.lastSound = ""
else
	self.lastSound = ruid
	_SoundService:PlayLoopSound(ruid, 1)
end
end