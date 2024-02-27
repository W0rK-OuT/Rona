return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local state = event.state
---------------------------------------------------------
if state == ButtonState.Hover or state == ButtonState.Pressed then
	_SkillInfoLogic:OpenUI(tonumber(self.Entity.Parent.Name))
else
	_SkillInfoLogic:CloseUI()
end
end