return function (self,delta) 
self.zero:Rotate(-7)
self.combo:Rotate(2)
for _, value in pairs(self.child.Children) do
	value.TransformComponent:Rotate(-2)
end
end