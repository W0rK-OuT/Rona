return function (self,player,equipSlot,scrollSlot) 
local playerInventory = player.PlayerInventory
local inv0 = playerInventory.inv0
local inv2 = playerInventory.inv2

if _UtilLogic:IsNilorEmptyString(equipSlot) then
	return 1
end
if _UtilLogic:IsNilorEmptyString(scrollSlot) then
	return 2
end
local eq = inv0[equipSlot]
if eq == nil then
	return 3
end
local sc = inv2[scrollSlot]
if sc == nil then
	return 4
end
local equipID = eq["id"]
local scrollID = sc["id"]
if not _GameUtil:IsScroll(scrollID) then
	return 5
end
if not self:CheckEquipAndScroll(equipID, scrollID) then
	return 6
end

return 0
end