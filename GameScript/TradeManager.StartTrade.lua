return function (self,targetName) 
if _UtilLogic:IsNilorEmptyString(targetName) then
	return
end
if self.main.Enable then
	return
end
local player = _UserService.LocalPlayer
if targetName == player.Name then
	_MessageLogic:DropMessage("자신에게 교환을 신청할 수는 없습니다.")
	return
end
---@type Entity
local finder 
for k, v in pairs(_UserService.UserEntities) do
	if v.Name == player.Name then
		continue
	end
	if v.Name == targetName or v.PlayerComponent.Nickname == targetName then
		finder = v
		break
	end
end
if finder == nil then
	_MessageLogic:DropMessage("현재 맵에서 해당 캐릭터를 찾을 수 없습니다.")
	return
end
if finder.Name == player.Name then
	_MessageLogic:DropMessage("자신에게 교환을 신청할 수는 없습니다.")
	return
end
self:FindPlayer(player, targetName)
end