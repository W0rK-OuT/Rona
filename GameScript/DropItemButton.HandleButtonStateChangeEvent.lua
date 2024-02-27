return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local state = event.state
---------------------------------------------------------
if state == ButtonState.Hover or state == ButtonState.Pressed then
	local itemID = tonumber(self.Entity:GetChildByName("code").TextComponent.Text)
	if itemID == 0 or itemID == nil then
		_ItemInfoLogic:CloseUI()
		return
	end
	_ItemInfoLogic:OpenUI(_ItemData:GetItemInfo(itemID), nil)
else
	_ItemInfoLogic:CloseUI()
end
end