return function (self,event) 
local FrameIndex = event.FrameIndex
---------------------------------------------------------
local state = self.Entity.StateComponent.CurrentStateName
if state == "ATTACK" and FrameIndex == 8 then
	self:AttackType(state)
elseif state == "ATTACK2" and FrameIndex == 10 then
	self:AttackType(state)
elseif state == "SKILL" and FrameIndex == 12 then
	self:AttackType(state)
elseif state == "SKILL2" and FrameIndex == 11 then
	self:AttackType(state)
end
end