return function (self) 
self.clickIndex = 0
self.settingMain:SetEnable(false)
self.main:SetEnable(false)
_UIManager:Remove(self.main)
self:End()
end