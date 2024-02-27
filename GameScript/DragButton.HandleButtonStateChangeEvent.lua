return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local state = event.state
---------------------------------------------------------
if state == ButtonState.Pressed then
	_DragManager:SetMain(self.Entity.Parent)
elseif state == ButtonState.Released then
	_DragManager:Close()
end
end