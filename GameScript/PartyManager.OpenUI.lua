return function (self) 
self:SetSelect(0)
self:CloseInviteInfo()
self.main:SetEnable(true)
_UIManager:Add(self.main)
end