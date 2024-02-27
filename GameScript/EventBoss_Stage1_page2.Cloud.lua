return function (self) 
local spawnCloud = function()
	for i = 1, 8 do
		self:SpawnCloud()
		wait(1 / 6)
	end
end
_TimerService:SetTimerOnce(spawnCloud, 1 / 6)
end