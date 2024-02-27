return function (self,itmes) 
local invs = {}
for _, value in pairs(itmes) do
	local itemID = value["id"]
	local quantity = value["quantity"]
	
	if _ItemData:IsOnly(_ItemData:GetItemInfo(itemID)) then
		if self:HaveItem(itemID, 1) then
			return false
		end
		if self:HasEquipped(itemID) then
			return false
		end
	end
	
	local itemType = math.floor(itemID / 1000000)
	if _ItemData:IsOneItem(value) then
		invs[itemType] = _GameUtil:ConvertValue(invs[itemType], 0) + 1
	else
		if self:ItemQuantity(itemID) == 0 then -- 소지 중이면 x
			invs[itemType] = _GameUtil:ConvertValue(invs[itemType], 0) + 1
		end
	end
end

for key, value in pairs(invs) do
	local inv = self:GetInv(key)
	if inv == nil then
		return false
	end
	local last = self:GetMaxSlot(key)
	local count = 0
	for idx = 1, last do
		if inv[tostring(idx)] == nil then
			count = count + 1
		end
	end
	if count < value then
		return false
	end
end
return true
end