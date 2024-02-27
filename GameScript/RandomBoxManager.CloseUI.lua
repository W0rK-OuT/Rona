return function (self) 
self:UpdateUI(nil, 0, 0)
self.main:SetEnable(false)
_UIManager:Remove(self.main)
end