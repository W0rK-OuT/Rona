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
	self.check = true
else
	for idx = 1, 10 do
		if self.check then
			break
		end
		wait(0.01)
	end
	_SkillInfoLogic:CloseUI()
	self.check = false
end
end