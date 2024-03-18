return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: TriggerComponent
-- Space: Server, Client
---------------------------------------------------------

-- Parameters
local TriggerBodyEntity = event.TriggerBodyEntity
---------------------------------------------------------
local ani = TriggerBodyEntity.DropAni
if ani ~= nil then
	ani:Pickup(true)
end
end