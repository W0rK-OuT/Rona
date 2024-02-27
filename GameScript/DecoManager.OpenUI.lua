return function (self) 
self.main:SetEnable(true)
_UIManager:Add(self.main)

self:UpdateUI()
end