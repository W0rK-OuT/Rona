return function (self) 
if _UtilLogic:IsNilorEmptyString(self.id) then
	return
end
self:AcceptTrade(_UserService.LocalPlayer, self.id)
self:CloseUI()
end