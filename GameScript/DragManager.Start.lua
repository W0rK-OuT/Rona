return function (self) 
if self.main == nil then
	self:Close()
	return
end

_TimerService:ClearTimer(self._T.dragTimer)
local func = function()
	if self.main == nil or not self.main.Enable then
		self:Close()
		return
	end
	
	local mouse = _InputService:GetCursorPosition()
	local anPos = self.main.UITransformComponent.anchoredPosition
	local rect = self.sizeMain.UITransformComponent.RectSize
	
	local calX = mouse.x * rect.x / _UILogic.ScreenWidth
	local calY = (_UILogic.ScreenHeight - mouse.y) * rect.y / _UILogic.ScreenHeight
	
	calX = math.max(calX, 0)
	calX = math.min(calX, rect.x - self.mainRect.x)
	
    calY = math.max(calY, 0)
    calY = math.min(calY, rect.y - self.mainRect.y)
	
	anPos.x = calX
	anPos.y = -calY
end
self._T.dragTimer = _TimerService:SetTimerRepeat(func, 1 / 60, 0)
end