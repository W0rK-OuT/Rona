return function (self) 
if self.Entity.TransformComponent then
	self.trans = self.Entity.TransformComponent
else
	self.trans = self.Entity.UITransformComponent
end
end