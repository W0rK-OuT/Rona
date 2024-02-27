return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
---------------------------------------------------------
local target = Entity.Parent:GetChildByName("id").TextComponent.Text
if _UtilLogic:IsNilorEmptyString(target) then
	return
end
if _UserService.LocalPlayer.Name == target then
	_MessageLogic:DropMessage("자신에게 이동할 수 없습니다.")
	return
end
_CharInfoLogic:ClosePosUserUI()
_TeleportUIManager:TargetMove2(_UserService.LocalPlayer, target)
end