return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
---------------------------------------------------------
local num = tonumber(Entity.Name)
if num == nil then
	return
end
_MonsterDropManager:GetItems(num)
end