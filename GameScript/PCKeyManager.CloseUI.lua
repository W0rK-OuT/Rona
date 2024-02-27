return function (self) 
self:SetLastClick("")
self.openBox:SetEnable(false)
_UIManager:Remove(self.openBox)
end