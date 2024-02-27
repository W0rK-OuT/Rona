return function (self,event) 
local FrameIndex = event.FrameIndex
---------------------------------------------------------
local state = self.Entity.StateComponent.CurrentStateName
if state == "ATTACK" and FrameIndex == 6 then
	self:AttackType(state)
elseif state == "SKILL" and FrameIndex == 10 then
	self:AttackType(state)
end
end