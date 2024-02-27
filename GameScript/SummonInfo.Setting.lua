return function (self) 
self:ChangeState("stand")

if self.type == 2 or self.type == 3 then
	self._T.moveTime = 0
	self._T.nextMoveTime = 0
	self._T.flyY = 0
	self._T.flyY2 = 0
	self._T.dirX = 0
	self._T.dirY = 0
	
	local left, right = self.Entity.CurrentMap.MapComponent:GetBound()
	
	self._T.leftBox = Vector2(left.x, left.y)
	self._T.rightBox = Vector2(right.x, right.y)
end

if self.id == 1321007 then -- 비홀더
	self.nextTick = 0.5
end

self.start = true
end