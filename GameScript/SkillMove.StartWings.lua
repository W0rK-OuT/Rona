return function (self,time,x) 
if _UserService.LocalPlayer.MovementComponent:Jump() then
	self.wings = true
	self.wingsValue = x
	_TimerService:ClearTimer(self._T.wingsTimer)
	local func = function()
		self:CancelWings(false)
	end
	self._T.wingsTimer = _TimerService:SetTimerOnce(func, time)
	return true
end
return false
end