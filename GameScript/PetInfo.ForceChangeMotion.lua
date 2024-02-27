return function (self,motion) 
self.motion = motion
self.Entity.SpriteRendererComponent.SpriteRUID = self.motions[motion]
end