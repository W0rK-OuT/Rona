return function (self) 
if self.root == nil then
	return
end
local pos = self.root.TransformComponent.Position

local nX = 6
local nY = 38

pos.x = (self.isLeft and 1 or -1) * (self.x + nX) / 100
pos.y = (-self.y + nY) / 100
end