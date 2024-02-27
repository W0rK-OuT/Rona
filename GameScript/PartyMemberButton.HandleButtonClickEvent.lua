return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
---------------------------------------------------------
local id = tonumber(Entity.Name)
if id == nil then
	return
end
_PartyManager:SetSelect(id)
end