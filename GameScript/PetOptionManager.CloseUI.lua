return function (self) 
self:CloseItemUI()
self.main:SetEnable(false)
_UIManager:Remove(self.main)
end