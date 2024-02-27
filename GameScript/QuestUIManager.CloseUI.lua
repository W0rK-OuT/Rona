return function (self) 
self:CloseYesNo()
self:SetQuest(0)
_SoundService:PlaySound("8f9f8f7ed3124701a214c5653722ced3", 1)
self.main:SetEnable(false)
_UIManager:Remove(self.main)
end