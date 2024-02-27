return function (self) 
if self.acceptPartyIndex == 0 then
	return
end
local playerParty = _UserService.LocalPlayer.PlayerParty
if playerParty.partyIndex > 0 then
	return
end
playerParty:AcceptParty(self.acceptPartyIndex)
self:CloseAcceptInfo()
end