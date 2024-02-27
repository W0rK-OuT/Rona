return function (self,delta) 
self.Entity.TransformComponent:Translate(self.dirX * self.speed * 0.0001, self.dirY * self.speed * 0.0001)
end