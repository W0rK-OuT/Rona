return function (self,player) 
local canCount = 200
local nowCount = 0
local level = player.PlayerStats.level

local inv = player.PlayerInventory:GetInv(2)
local maxSlot = player.PlayerInventory:GetMaxSlot(2)
for idx = 1, maxSlot do
	local item = inv[tostring(idx)]
	if item == nil then
		continue
	end
	local itemID = item["id"]
	if math.floor(itemID / 10000) == 207 then
		local quantity = item["quantity"]
		if quantity > 0 then
			local throwInfo = _ItemData:GetThrowInfo(itemID)
			local throwLevel = _SkillStart:ConvertValue(throwInfo["reqLevel"], 0)
			if level >= throwLevel then
				nowCount += quantity
				if nowCount >= canCount then
					return true
				end
			end
		end
	end
end
return false
end