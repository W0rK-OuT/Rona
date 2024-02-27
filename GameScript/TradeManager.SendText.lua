return function (self,text) 
if _UtilLogic:IsNilorEmptyString(text) then
	return
end
if not self.main.Enable then
	return
end
local player = _UserService.LocalPlayer
self:GetText(player.Name, player.PlayerComponent.Nickname, text)

if not _UtilLogic:IsNilorEmptyString(self.partnerID) then
	self:TextServer(_UserService.LocalPlayer, text)
end
end