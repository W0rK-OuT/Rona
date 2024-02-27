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
local cal = 200 + 50 * value + 40

for k, v in pairs(self.grid.Children) do
	v.TextComponent.ConstraintX = (cal) - 20
end

self.main.UITransformComponent.RectSize.x = cal
local func = function()
	self:Down()
end
_TimerService:SetTimerOnce(func, 0.5)

self:SetChatValue(_UserService.LocalPlayer, "length", value)
end