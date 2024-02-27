return function (self,event) 
local FrameIndex = event.FrameIndex
---------------------------------------------------------
if self.Entity.StateComponent.CurrentStateName == "ATTACK" then
	if FrameIndex >= 32 and FrameIndex <= 49 then
		self.Entity.TriggerComponent.Enable = false
	else
		self.Entity.TriggerComponent.Enable = true
	end
end
end