return function (self) 
self.itemGrid:SetEnable(false)
self.main:SetEnable(false)
_UIManager:Remove(self.main)
self:UpdateCharBox(0, nil)
end