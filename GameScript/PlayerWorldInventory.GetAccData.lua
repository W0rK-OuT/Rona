return function (self,key) 
local accData = self.Entity.InventoryComponent:GetItemsWithType(AccData)
---@type AccData
local acc = accData[1]
if acc == nil then
	return 0
end
return acc:GetKey(key)
end