return function (self) 
_SoundService:PlaySound("8f9f8f7ed3124701a214c5653722ced3", 1)
self.main:SetEnable(false)
self.loadMain:SetEnable(false)
_UIManager:Remove(self.main)
self:SetLastClick("")
self:LoadCloseUI()
end