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
if self:IsServer() then
	self:Init()
else
	_StorageManager:UpdateMeso()
end

end