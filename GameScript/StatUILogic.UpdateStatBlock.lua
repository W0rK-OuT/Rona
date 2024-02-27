return function (self) 
local stat = _UserService.LocalPlayer.PlayerStats
if _GameUtil:IsBeginnerJob(stat.job) and stat.level <= 10 then
	self.block:SetEnable(true)
else
	self.block:SetEnable(false)
end
end