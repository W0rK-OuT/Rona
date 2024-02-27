return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: TextInputComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Text = event.Text
---------------------------------------------------------
if _UtilLogic:IsNilorEmptyString(Text) then
	return
end
local len = _Util:TableKeyLen(_UserService.LocalPlayer.PlayerSetting.chatBans)
if len >= 100 then
	_MessageLogic:DropMessage("최대 100명까지만 차단이 가능합니다.")
	return
end
_ChatBanManager:Add(_UserService.LocalPlayer, Text)
end