return function (self,delta) 
local pos = self.Entity.TransformComponent.Position

local calPos = pos.y
if calPos > 0 then
	calPos -= delta * 5.6818 * 1.5
end
if calPos < 0 then
	calPos = 0
end
pos.y = calPos
end