return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: InventoryComponent
-- Space: Server, Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
local Items = event.Items
---------------------------------------------------------
if Entity ~= self.Entity then
	return	
end
--for k, v in pairs(Items) do
--    log(k, v, v.ItemTypeName)
--end
end