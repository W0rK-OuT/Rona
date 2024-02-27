return function (self,state) 
if self.state == state then
	return
end
self.state = state
self.Entity.SpriteRendererComponent.SpriteRUID = _SummonData:GetRUID(self.id, state)
end