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
local checkTable = {}
for k, v in pairs(Items) do
	checkTable[v.ItemTypeName] = true
end

for k, _ in pairs(checkTable) do
	if k == "Storage" then
		_StorageManager:UpdateItems()
		_StorageManager:UpdateMeso()
	end
end
end