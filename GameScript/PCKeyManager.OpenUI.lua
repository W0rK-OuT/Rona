return function (self) 
self:SetLastClick("")
self:UpdateButtons(true)
self.openBox:SetEnable(true)
_UIManager:Add(self.openBox)
end