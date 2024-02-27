return function (self,delta) 
local pos = _UILogic:ScreenToWorldPosition(_InputService:GetCursorPosition())
self.trans.WorldPosition.x = pos.x
self.trans.WorldPosition.y = pos.y
end