return function (self) 
if self.Entity.UITouchReceiveComponent == nil then
	self.Entity:AddComponent(UITouchReceiveComponent)
end
end