return function (self,id,quantity) 
if id == 0 then
	return true
end
if _GameUtil:IsCard(id) then
	return true
end
if _ItemData:IsOnly(_ItemData:GetItemInfo(id)) then
	if self:HaveItem(id, 1) then
		return false
	end
	if self:HasEquipped(id) then
		return false
	end
end
local itemType = math.floor(id / 1000000)
local inv = self:GetInv(itemType)
if inv == nil then
	return false
end
if itemType == 1 or _ShopUILogic:IsRecharge(id) then
	return self:GetFreeSlot(itemType) > 0
end
for index, item in pairs(inv) do
	local itemID = item["id"]
	if itemID == id then
		return true
	end
end
return self:GetFreeSlot(itemType) > 0
end