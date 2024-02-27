return function (self) 
self:CloseYesNo()
self:CloseCharList()
self:SetLastClick(0)
self.main:SetEnable(false)
_UIManager:Remove(self.main)
end