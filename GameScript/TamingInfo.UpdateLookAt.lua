return function (self,isLeft) 
if not self.Entity.Enable then
	return
end

self.isLeft = isLeft
self.Entity.SpriteRendererComponent.FlipX = not isLeft
self.back.SpriteRendererComponent.FlipX = not isLeft
self:UpdateMotion()
end