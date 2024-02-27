return function (self,value) 
if value < 0 then
	value = 0
end
if value > self.maxValue then
	value = self.maxValue
end

local oriPer = self.lastPer
local per = value / self.maxValue
self.lastPer = per

if per == 0 then
	self.main:SetEnable(false)
	self.left:SetEnable(false)
else
	self.main:SetEnable(true)
	self.left:SetEnable(true)
end

if per == 1 then
	self.right:SetEnable(true)
else
	self.right:SetEnable(false)
end

self.gage.SpriteGUIRendererComponent.LocalScale.x = per * self.maxLength * 2
end