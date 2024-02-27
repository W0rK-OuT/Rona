return function (self,meso) 
local player = _UserService.LocalPlayer
local myMeso = player.PlayerInventory:GetMeso()
if myMeso < meso then
	_MessageLogic:DropMessage(_Util:ConvertComma(myMeso) .. " 이하의 메소만 가능합니다.")
	return
end
end