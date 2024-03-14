return function (self,player,slot) 
if _UtilLogic:IsNilorEmptyString(slot) then
	return false
end
local item = player.PlayerInventory.inv2[slot]
if item == nil then
	return false
end
local itemID = item["id"]
if not self:IsRecharge(itemID) then
	return false
end
local info = _ItemData:GetItemInfo(itemID)
local unitPrice = _GameUtil:ConvertValue(info["unitPrice"], 0)
if unitPrice <= 0 then
	return false
end
local max = _GameUtil:ConvertValue(info["slotMax"], 0)
local jobType = _GameUtil:JobType(player.PlayerStats.job)
if (math.floor(itemID / 10000) == 207 and jobType == 4) or (math.floor(itemID / 10000) == 233 and jobType == 5) then
	max += player.PlayerSkill.recharge			
end
if item["quantity"] >= max then
	return false
end
return true
end