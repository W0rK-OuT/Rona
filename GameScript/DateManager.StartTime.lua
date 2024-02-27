return function (self) 
_TimerService:ClearTimer(self._T.timer)

local date = DateTime.UtcNow
local sec = date.Millisecond % 1000 + 100

local func = function()
	local nDate = DateTime.UtcNow
	local nowDate = DateTime(nDate.Elapsed + 1000 * 60 * 60 * 9)
	
	local formattedHour
	if nowDate.Hour <= 12 then
	    formattedHour = "오전 " .. nowDate.Hour
	else
	    formattedHour = "오후 " .. (nowDate.Hour - 12)
	end
	local formattedTime = string.format("%02d월 %02d일\n%s:%02d분 %02d초", nowDate.Month, nowDate.Day, formattedHour, nowDate.Minute, nowDate.Second)
	self.main.TextComponent.Text = formattedTime
end
self._T.timer = _TimerService:SetTimerRepeat(func, 1, sec / 1000)
end