return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: RigidbodyComponent
-- Space: Server, Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
local Foothold = event.Foothold
---------------------------------------------------------
if self.motion == "jump" then
	if self.Entity.RigidbodyComponent.MoveVelocity.x ~= 0 then
		self:ChangeMotion("move")
	else
		self:ChangeMotion("stand1")
	end
end
end