return function (self) 
self.zero = self.Entity:GetChildByName("Main").TransformComponent
self.child = self.Entity:GetChildByName("Child")
self.combo = self.child.TransformComponent

local centerX, centerY = 0, 0
local length = 0.4
local numPoints = 5
local index = 1
for index = 1, numPoints do
    local angle = (index - 1) * (360 / numPoints) -- 다섯각 별의 각도 계산
    local radian = math.rad(angle) -- 각도를 라디안으로 변환
    local x = centerX + length * math.cos(radian)
    local y = centerY + length * math.sin(radian)
	local child = self.child:GetChildByName("" .. index)
	child.TransformComponent.Position.x = x
	child.TransformComponent.Position.y = y
	
	child.SpriteRendererComponent.Color.a = 0
end

local ar = self.Entity.Parent.AvatarRendererComponent

if self.Entity.Parent == _UserService.LocalPlayer then
	self:UpdateOrder(ar.OrderInLayer)
else
	self:UpdateOrder(ar.OrderInLayer == 0 and 3 or ar.OrderInLayer)
end
self:UpdateSort(ar.SortingLayer)
end