return function (self,text) 
if text == nil then
	text = self.inviteBox:GetChildByName("Input").TextInputComponent.Text
end
if _UtilLogic:IsNilorEmptyString(text) then
	return
end
self:CloseInviteInfo()
local player = _UserService.LocalPlayer
local playerParty = player.PlayerParty
if playerParty.partyIndex > 0 and playerParty.leaderID ~= player.Name then
	_MessageLogic:DropMessage("파티장이 아닙니다.")
	return
end
if text == player.PlayerComponent.Nickname then
	_MessageLogic:DropMessage("자기 자신에게 초대할 수 없습니다.")
	return
end
playerParty:InviteParty(text)
end