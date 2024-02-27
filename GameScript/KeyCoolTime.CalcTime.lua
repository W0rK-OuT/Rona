return function (self) 
local times = _UserService.LocalPlayer.PlayerSkill.coolTime[self.id]
if times == nil then
	self:Close(false)
	return false
else
	self.now = _UtilLogic.ServerElapsedSeconds
	self.startTime = times[1]
	self.endTime = times[2]
	if self.now >= self.endTime then
		self:Close(false)
		return false
	end
	return true
end
end