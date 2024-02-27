return function (self) 
self:UpdateMonsters()

self.main:SetEnable(true)
_UIManager:Add(self.main)
_SoundService:PlaySound("e22a5d10bf934b3fb311f9bc45d74ec2", 1)
end