return function (self,now,eventTime) 
local cal = eventTime - now
if cal > 0 then
	_ClockManager:UpdateClock(cal)
end
end