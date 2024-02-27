return function (self) 
if self.acceptPartyIndex > 0 then
	local playerParty = _UserService.LocalPlayer.PlayerParty
	playerParty:DeclineParty(self.acceptPartyIndex, _UserService.LocalPlayer.PlayerComponent.Nickname)
end
self:CloseAcceptInfo()
end