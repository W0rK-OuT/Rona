return function (self) 
self:SetTab(0)
self:CloseBuy()
_SoundService:PlaySound("8f9f8f7ed3124701a214c5653722ced3", 1)
self.main:SetEnable(false)
_UIManager:Remove(self.main)
end