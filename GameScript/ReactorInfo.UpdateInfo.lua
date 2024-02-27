return function (self,id) 
self.events = _ReactorManager:GetEvents(id)
self.sounds = _ReactorManager:GetSound(id)
self:SetRUID(true, self.state, self.state)
end