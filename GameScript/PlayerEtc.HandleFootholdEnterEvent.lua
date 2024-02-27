return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: RigidbodyComponent
-- Space: Server, Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
local Foothold = event.Foothold
---------------------------------------------------------
if Entity == _UserService.LocalPlayer then
	_SkillMove.jump = false
	_SkillMove:CancelWings(true)
end
end