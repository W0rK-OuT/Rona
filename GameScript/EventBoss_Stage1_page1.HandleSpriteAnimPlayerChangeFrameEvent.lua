return function (self,event) 
local FrameIndex = event.FrameIndex
---------------------------------------------------------
local state = self.Entity.StateComponent.CurrentStateName
if state == "ATTACK" and FrameIndex == 9 then
	self:JumpAttack()
elseif state == "SKILL2" and FrameIndex == 11 then
	self:Cloud()
end
end