return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local state = event.state
---------------------------------------------------------
if state == ButtonState.Hover or state == ButtonState.Pressed then
	local num = tonumber(self.Entity:GetChildByName("code").TextComponent.Text)
	if num == nil then
		_ItemInfoLogic:CloseUI()
		return
	end
	_ItemInfoLogic:OpenUI(_ItemData:GetItemInfo(num), nil)
else
	_ItemInfoLogic:CloseUI()
end
end