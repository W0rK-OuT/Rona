return function (self,text) 
if _UtilLogic:IsNilorEmptyString(text) then
	_MessageLogic:DropMessage("값이 존재하지 않습니다.")
	return
end
_NpcTalkLogic:CloseUI()
local npcTalk = _UserService.LocalPlayer.PlayerNpcTalk
npcTalk:MoreTalk(1, -1, text)
end