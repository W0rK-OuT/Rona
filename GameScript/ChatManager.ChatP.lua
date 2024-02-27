return function (self) 
self.chatP = not self.chatP
if self.chatP then
	self.grid.UITransformComponent.RectSize.y = 40
	local func = function()
		self:Down()
	end
	_TimerService:SetTimerOnce(func, 0.5)
else
	self.grid.UITransformComponent.RectSize.y = 40 * (self.maxCount - 1)
	local func = function()
		self:Down()
	end
	_TimerService:SetTimerOnce(func, 0.5)
end
end