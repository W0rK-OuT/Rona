return function (self) 
if not _UtilLogic:IsNilorEmptyString(self.id) then
	self:Refuse(_UserService.LocalPlayer, self.id)
end
self:CloseUI()
end