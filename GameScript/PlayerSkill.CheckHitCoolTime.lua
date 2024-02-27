return function (self,skillID,lastTick) 
local nextTime = self.hitCoolTime[skillID]
if nextTime == nil then
	return true
end
return nextTime <= lastTick
end