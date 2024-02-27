return function (self,footEnter) 
if self.wings then
	self.wings = false
	self.wingsValue = 1000
	_TimerService:ClearTimer(self._T.wingsTimer)
	_PlayerComponent:SetGravity(1)
	_UserService.LocalPlayer.PlayerMulti:CancelWingsEff(footEnter)
	_SoundService:StopSound("661414f9fc3d4f33959bfbd18bf7543e")
end
end