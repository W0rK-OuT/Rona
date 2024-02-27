return function (self,text) 
if _UtilLogic:IsNilorEmptyString(text) then
	self:CloseUI()
	return
end
_SoundService:PlaySound("a1780d9ef5604c929a6ac8e1e9456694", 2)
self:UseMegaphone(_UserService.LocalPlayer, self.id, text)
self:CloseUI()
end