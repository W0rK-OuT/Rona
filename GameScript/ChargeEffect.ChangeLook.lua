return function (self,isLeft) 
if self.skillID == 3221001 then
	self.Entity.SpriteRendererComponent.FlipX = not isLeft
else
	self.Entity.SpriteRendererComponent.FlipX = false
end
end