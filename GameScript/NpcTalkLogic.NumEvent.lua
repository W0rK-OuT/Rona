return function (self,num) 
if num == nil then
	_MessageLogic:DropMessage("값이 존재하지 않습니다.")
	return
end
if num < _NpcTalkLogic.min then
	_MessageLogic:DropMessage(_NpcTalkLogic.min .. " 이상의 값만 입력할 수 있습니다.")
	return
end
if num > _NpcTalkLogic.max then
	_MessageLogic:DropMessage(_NpcTalkLogic.max .. " 이하의 값만 입력할 수 있습니다.")
	return
end
_NpcTalkLogic:CloseUI()
local npcTalk = _UserService.LocalPlayer.PlayerNpcTalk
npcTalk:MoreTalk(1, num, "")
end