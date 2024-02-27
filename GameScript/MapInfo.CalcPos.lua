return function (self,pos,arg1) 
local fh = self.Entity.FootholdComponent:Raycast(pos, Vector2.down, 999)
if fh ~= nil then
	return Vector2(pos.x, fh:GetYByX(pos.x))
end
return arg1
end