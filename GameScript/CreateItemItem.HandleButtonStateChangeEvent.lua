return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local state = event.state
---------------------------------------------------------
if state == ButtonState.Hover or state == ButtonState.Pressed then
	local pi = _UserService.LocalPlayer.PlayerInventory
	local inv = pi:GetInv(self.tab)
	if inv == nil then
		_ItemInfoLogic:CloseUI()
		return
	end
	
	local item = inv[self.slot]
	if item == nil then
		_ItemInfoLogic:CloseUI()
		return
	end
	
	_ItemInfoLogic:OpenUI(item, nil)
else
	_ItemInfoLogic:CloseUI()
end
end