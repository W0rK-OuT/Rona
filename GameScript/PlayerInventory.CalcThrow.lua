return function (self,findNItem,weaponID,count,level) 
if weaponID == 0 then
	return nil
end
if self.Entity.PlayerBuff.incShadow > 0 then
	count = count * 2
end

if findNItem > 0 then
	for idx = 1, self.ms2 do
		local item = self.inv2[tostring(idx)]
		if item == nil then
			continue
		end
		local itemID = item["id"]
		if itemID == findNItem and item["quantity"] >= count then
			local throwInfo = _ItemData:GetThrowInfo(itemID)
			local throwLevel = _GameUtil:ConvertValue(throwInfo["reqLevel"], 0)
			if level >= throwLevel then
				return tostring(idx)
			end
		end
	end
end

local findItem = self:FindThrow(weaponID)
if findItem == 0 then
	return nil
end
for idx = 1, self.ms2 do
	local item = self.inv2[tostring(idx)]
	if item == nil then
		continue
	end
	local itemID = item["id"]
	local findType = math.floor(item["id"] / 1000)
	if findType == findItem and item["quantity"] >= count then
		local throwInfo = _ItemData:GetThrowInfo(itemID)
		local throwLevel = _GameUtil:ConvertValue(throwInfo["reqLevel"], 0)
		if level >= throwLevel then
			return tostring(idx)
		end
	end
end
return nil
end