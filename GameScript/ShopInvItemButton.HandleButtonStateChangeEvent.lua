return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local state = event.state
---------------------------------------------------------
if state == ButtonState.Hover or state == ButtonState.Pressed then
	local slot = self.Entity:GetChildByName("slot").TextComponent.Text
	if _UtilLogic:IsNilorEmptyString(slot) then
		return
	end
	local inv = _UserService.LocalPlayer.PlayerInventory["inv" .. _ShopUILogic.invSlot]
	local item = inv[slot]
	if item == nil then
		return
	end
	_ItemInfoLogic:OpenUI(item, nil)
else
    _ItemInfoLogic:CloseUI()
end
end