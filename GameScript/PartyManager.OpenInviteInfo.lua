return function (self) 
self:ClearInviteText()
self.inviteBox:SetEnable(true)
_UIManager:Add(self.inviteBox)

self.inviteBox:GetChildByName("Input").TextInputComponent:ActivateInputField()
end