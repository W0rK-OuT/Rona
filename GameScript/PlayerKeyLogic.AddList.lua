return function (self,slot) 
local player = _UserService.LocalPlayer
if player.PlayerKey:FindValue(slot) then
	_MessageLogic:DropMessage("이미 등록되어 있는 상태입니다.")
	return
end
player.PlayerKey:AddListKey(slot)
end