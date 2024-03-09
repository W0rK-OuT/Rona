return function (self,ruid) 
if _UtilLogic:IsNilorEmptyString(ruid) then
	_SoundService:StopBGM(true)
else
	_SoundService:PlayBGM(ruid, 1)
end
end