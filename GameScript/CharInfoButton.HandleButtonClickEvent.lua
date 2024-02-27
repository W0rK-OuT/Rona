return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
---------------------------------------------------------
local name = Entity.Name
if name == "ExitButton" then
	_CharInfoLogic:CloseCharBox()
elseif name == "Up" then
	_CharInfoLogic:PopButton("up")
elseif name == "Down" then
	_CharInfoLogic:PopButton("down")
elseif name == "Trade" then
	if _UtilLogic:IsNilorEmptyString(_CharInfoLogic.userID) then
		_MessageLogic:DropMessage("대상이 없습니다.")
		return
	end
	_TradeManager:StartTrade(_CharInfoLogic.userID)
elseif name == "Party" then
	if _UtilLogic:IsNilorEmptyString(_CharInfoLogic.userID) then
		_MessageLogic:DropMessage("대상이 없습니다.")
		return
	end
	if _UserService.LocalPlayer.Name == _CharInfoLogic.userID then
		_MessageLogic:DropMessage("자신에게 초대할 수 없습니다.")
		return
	end
	_UserService.LocalPlayer.PlayerParty:InviteParty(_CharInfoLogic.userID)
end
end