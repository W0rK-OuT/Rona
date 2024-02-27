return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local state = event.state
---------------------------------------------------------
if state == ButtonState.Hover or state == ButtonState.Pressed then
	local inv = _UserService.LocalPlayer.PlayerInventory["inv0"]
	local item = inv[self.Entity.Name]
	if item == nil then
		return
	end
	--log(_InputService:GetCursorPosition())
	--log(self.Entity.UITransformComponent.WorldPosition)
	_ItemInfoLogic:OpenUI(item, nil)
else
	_ItemInfoLogic:CloseUI()
end
end