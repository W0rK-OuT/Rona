return function (self) 
if not _GameUtil:IsGameMaster(_UserService.LocalPlayer) then
	self:CloseUI()
	return
end
self:ClearText()
self.main:SetEnable(true)
self.main:GetChildByName("InputText").TextInputComponent:ActivateInputField()
end