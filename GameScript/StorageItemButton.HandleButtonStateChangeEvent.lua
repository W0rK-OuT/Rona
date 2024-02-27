return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local state = event.state
---------------------------------------------------------
if state == ButtonState.Hover or state == ButtonState.Pressed then
	local items = _StorageManager.lastShowItems
	local item = items[tonumber(self.Entity.Name)]
	if item == nil then
		_ItemInfoLogic:CloseUI()
		return
	end	
	_ItemInfoLogic:OpenUI(item, nil)
else
	_ItemInfoLogic:CloseUI()
end
end