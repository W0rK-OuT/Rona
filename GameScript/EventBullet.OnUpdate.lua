return function (self,delta) 
if self.start then
	self.Entity.TransformComponent:Translate(self.dir.x * self.speed * delta, self.dir.y * self.speed * delta)
end
end