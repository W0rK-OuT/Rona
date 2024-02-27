return function (self,event) 
if not self.check then
	self.check = true
	return
end

if self.state == 1 then
	self.state = 2
	self.check = false
	self.Entity.TransformComponent.Position.z = -self.ruid2z
	self.Entity.SpriteRendererComponent.SpriteRUID = self.ruid2
elseif self.state == 3 then
	self.state = 0
	self.check = false
	self.Entity.SpriteRendererComponent.SpriteRUID = ""
	self.Entity.TransformComponent.Position.z = 0
	self.Entity:SetEnable(false)
end
end