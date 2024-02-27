return function (self) 
self:SetSelect(0)
self:CloseInviteInfo()
self.main:SetEnable(false)
_UIManager:Remove(self.main)
end