return function (self) 
self:ClearInviteText()
self.inviteBox:SetEnable(false)
_UIManager:Remove(self.inviteBox)
end