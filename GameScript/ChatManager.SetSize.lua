return function (self,value) 
if value == nil then
	return
end
if value < 1 then
	value = 1
end
if value > 20 then
	value = 20
end 

self.maxCount = value + 1
self.grid.UITransformComponent.RectSize.y = 40 * value
local func = function()
	self:Down()
	--self.grid.ScrollLayoutGroupComponent:SetScrollNormalizedPosition(UITransformAxis.Vertical, 1)
end
_TimerService:SetTimerOnce(func, 0.5)
--self.grid.ScrollLayoutGroupComponent:SetScrollPositionByItemIndex(self.totalCount)

self:SetChatValue(_UserService.LocalPlayer, "size", value)
end