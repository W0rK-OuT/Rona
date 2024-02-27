return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local state = event.state
---------------------------------------------------------
if state == ButtonState.Hover or state == ButtonState.Pressed then
	local index = tonumber(self.Entity.Name)
	local item = _UserService.LocalPlayer.PlayerReBuy.shop[index][1]
	_ItemInfoLogic:OpenUI(item, nil)
else
	_ItemInfoLogic:CloseUI()
end
end