return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local state = event.state
---------------------------------------------------------
if state == ButtonState.Hover or state == ButtonState.Pressed then
	local id = tonumber(self.Entity:GetChildByName("id").TextComponent.Text)
	if id == nil then
		return
	end
    _ItemInfoLogic:OpenUI(_ItemData:GetItemInfo(id), nil)
else
    _ItemInfoLogic:CloseUI()
end
end