return function (self,nTable) 
if nTable == nil then
	_UserService.LocalPlayer.PlayerKey.pcButtons = self:BaseTable()
	self:UpdateButtons(true)
	self:UpdateButtons(false)
else
	_UserService.LocalPlayer.PlayerKey.pcButtons = nTable
	self:UpdateButtons(true)
	self:UpdateButtons(false)
end
_PlayerKeyLogic:KeyUpdate(false)
end