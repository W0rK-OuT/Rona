return function (self,isKnockBack,dir,damageType) 
_TimerService:ClearTimer(self._T.hitTimer)

local ar = _UserService.LocalPlayer.AvatarRendererComponent
ar:ChangeMaterial("material://0fb2fd72-aa90-45c0-9115-9421cc754408")
local reset = function()
	ar:ChangeMaterial("")
end
self._T.hitTimer = _TimerService:SetTimerOnce(reset, 1.5)

if isKnockBack then
	self:KnockBack(2.75, 2.75, dir, false, damageType)
end
end