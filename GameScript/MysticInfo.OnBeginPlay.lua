return function (self) 
local func = function()
	self.Entity.SpriteRendererComponent.SpriteRUID = "002105b1bb7e426abb9c5ea72f857c86"
	self.Entity:GetChildByName("EmptyEntity").SpriteRendererComponent.SpriteRUID = "053f0bb86b3749afac4bd6a16b516f66"
	self.Entity.NameTagComponent.Enable = true
end
self._T.timer = _TimerService:SetTimerOnce(func, 1.6)
end