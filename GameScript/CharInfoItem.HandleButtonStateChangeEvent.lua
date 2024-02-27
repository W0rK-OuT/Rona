return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local state = event.state
---------------------------------------------------------
if state == ButtonState.Hover or state == ButtonState.Pressed then
	local option = _HttpService:JSONDecode(self.Entity:GetChildByName("option").TextComponent.Text)
	_ItemInfoLogic:OpenUI(option, nil)
else
	_ItemInfoLogic:CloseUI()
end
end