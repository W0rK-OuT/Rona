return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local state = event.state
---------------------------------------------------------
if state == ButtonState.Hover or state == ButtonState.Pressed then
	local char = _FindInvManager.inv[_FindInvManager.lastPlayerSlot]
	if char == nil then
		_ItemInfoLogic:CloseUI()
		return
	end
	local inv = char[_FindInvManager.lastTab]
	if inv == nil then
		_ItemInfoLogic:CloseUI()
		return
	end
	local item = inv[self.Entity.Name]
	if item == nil then
		_ItemInfoLogic:CloseUI()
		return
	end
	_ItemInfoLogic:OpenUI(item, nil)
else
	_ItemInfoLogic:CloseUI()
end
end