return function (self) 
self:CloseItemUI()
self:UpdateHpMp()
self.main:SetEnable(true)
_UIManager:Add(self.main)
end