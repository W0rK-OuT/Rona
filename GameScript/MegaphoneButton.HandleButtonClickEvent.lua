return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
---------------------------------------------------------
local name = Entity.Name
if name == "Yes" then
	_MegaphoneManager:ShootEvent()
elseif name == "No" then
	_MegaphoneManager:CloseUI()
end
end