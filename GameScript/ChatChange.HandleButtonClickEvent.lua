return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
---------------------------------------------------------
local name = Entity.Name
if name == "PCChange" or name == "MobileChange" then
	_ChatChangeManager:OpenUI()
end
end