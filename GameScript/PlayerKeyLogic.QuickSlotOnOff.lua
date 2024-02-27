return function (self) 
if Environment:IsMobilePlatform() then
	return
end

if self.delay then
	return
end

self.delay = true
local delay = function()
	self.delay = false
end

local quickY = self.mainQuickSlot.UITransformComponent.RectSize.y + 5

if self.up then
	_TweenLogic:MoveOffset(_MessageLogic.showMain, Vector2(0, -(self.upValue - self.downValue)), 0.3, EaseType.Linear)
	--_TweenLogic:MoveOffset(self.mainQuickSlot, Vector2(0, -(20 + self.upValue - self.downValue)), 0.3, EaseType.Linear)
	_TweenLogic:MoveOffset(self.mainQuickSlot, Vector2(0, -quickY), 0.3, EaseType.Linear)
else
	_TweenLogic:MoveOffset(_MessageLogic.showMain, Vector2(0, self.upValue - self.downValue), 0.3, EaseType.Linear)
	--_TweenLogic:MoveOffset(self.mainQuickSlot, Vector2(0, 20 + self.upValue - self.downValue), 0.3, EaseType.Linear)
	_TweenLogic:MoveOffset(self.mainQuickSlot, Vector2(0, quickY), 0.3, EaseType.Linear)
end
_TimerService:SetTimerOnce(delay, 0.4)
self.up = not self.up
end