return function (self) 
local player = _UserService.LocalPlayer
local inven = player.PlayerInventory
local items = inven:GetInv(self.tab)
if items == nil then
	return
end

local slotMax = inven:GetMaxSlot(self.tab)

--for key, value in pairs(items) do
--    local id = value["id"]
--    _ItemData:LoadSize(id)
--end

local updateTable = {}
for key, value in pairs(items) do
	updateTable[key] = 1
	self:UpdateItem(self.tab, key, value)
end

self:UpdateSlot(slotMax)

for idx = 1, slotMax do
	if updateTable["" .. idx] == nil then
		self:UpdateItem(self.tab, tostring(idx), nil)
	end
end
end