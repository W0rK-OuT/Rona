return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: Entity
-- Space: Server, Client
---------------------------------------------------------

-- Parameters
local NewMap = event.NewMap
local OldMap = event.OldMap
local Entity = event.Entity
---------------------------------------------------------
if Entity == _UserService.LocalPlayer then
	_FadeManager:FadeIn()
end
end