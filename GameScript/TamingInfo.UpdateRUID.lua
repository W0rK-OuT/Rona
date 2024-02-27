return function (self,motion) 
local taming = _TamingManager.taming[self.id]
if taming ~= nil then
	self.first = false
	self.lastMotion = motion
	self.Entity.SpriteRendererComponent.SpriteRUID = taming[motion]
	self.back.SpriteRendererComponent.SpriteRUID = taming[motion .. "/1"]
end
end