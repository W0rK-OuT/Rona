return function (self) 
local charge = self.bar.TransformComponent.Scale.x
self:ClearBar()
return charge
end