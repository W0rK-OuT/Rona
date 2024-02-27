return function (self,main) 
if main == nil then
	self:Close()
	return
end
self.main = main
self.mainRect = main.UITransformComponent.RectSize:Clone()
self:Start()
end