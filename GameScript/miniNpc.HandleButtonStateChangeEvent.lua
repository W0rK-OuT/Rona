return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local state = event.state
---------------------------------------------------------
if state == ButtonState.Hover or state == ButtonState.Pressed then
	local name = _NpcData:NpcInfo(self.id)["name"]
	if name ~= nil then
		_BaseTextManager:OpenUI(name)
	else
		_BaseTextManager:CloseUI()
	end
else
	_BaseTextManager:CloseUI()
end
end