return function (self) 
self:CloseYesNo()
self:SetQuest(0)
_SoundService:PlaySound("e22a5d10bf934b3fb311f9bc45d74ec2", 1)
self.main:SetEnable(true)
_UIManager:Add(self.main)

self:UpdateQuest()
end