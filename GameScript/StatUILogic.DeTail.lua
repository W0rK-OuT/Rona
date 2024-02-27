return function (self) 
if self.detailDelay then
	return
end

self.detailDelay = true

local x = self.detailInfo.UITransformComponent.anchoredPosition.x
if x == 0 then
	_TweenLogic:MoveOffset(self.detailInfo, Vector2(-400, 0), 0.3, EaseType.Linear)
else
	_TweenLogic:MoveOffset(self.detailInfo, Vector2(400, 0), 0.3, EaseType.Linear)
end

local delay = function()
	self.detailDelay = false
end
_TimerService:SetTimerOnce(delay, 0.4)
end