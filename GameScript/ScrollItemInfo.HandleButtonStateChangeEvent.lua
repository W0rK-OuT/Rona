return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local state = event.state
---------------------------------------------------------
if state == ButtonState.Hover or state == ButtonState.Pressed then
	local slot
	local inv
	if self.Entity.Name == "Equip" then
		slot = _ScrollManager.equipSlot
		inv = _UserService.LocalPlayer.PlayerInventory.inv0
	else
		slot = _ScrollManager.scrollSlot
		inv = _UserService.LocalPlayer.PlayerInventory.inv2
	end
	if _UtilLogic:IsNilorEmptyString(slot) then
		_ItemInfoLogic:CloseUI()
		return
	end
	local item = inv[slot]
	if item == nil then
		_ItemInfoLogic:CloseUI()
		return
	end
	_ItemInfoLogic:OpenUI(item, nil)
else
    _ItemInfoLogic:CloseUI()
end

--Equip
--Scroll
end