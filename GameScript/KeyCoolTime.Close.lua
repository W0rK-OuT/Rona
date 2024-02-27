return function (self,force) 
if force then
	self.id = 0
end
self.now = 0
self.startTime = 0
self.endTime = 0
self.Entity.SpriteGUIRendererComponent.FillAmount = 0
end