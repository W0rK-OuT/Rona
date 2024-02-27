return function (self,id) 
local itemType = math.floor(id / 1000000)
local inv = self:GetInv(itemType)
if inv == nil then
	return nil
end
local maxSlot = self:GetMaxSlot(itemType)
for index = 1, maxSlot do
	local item = inv[tostring(index)]
	if item == nil then
		continue
	end
	if item["id"] == id then
		return tostring(index)
	end
end
return nil
end