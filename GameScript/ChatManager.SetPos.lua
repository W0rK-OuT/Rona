return function (self,value) 
if value == nil or value < 1 then
	value = 1
end
if value > 20 then
	value = 20
end
local anPos = self.main.UITransformComponent.anchoredPosition
anPos.x = (value - 1) * 50

self:SetChatValue(_UserService.LocalPlayer, "pos", value)
end