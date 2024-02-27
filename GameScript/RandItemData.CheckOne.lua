return function (self,player,arg1,codeIndex) 
local itemType = {}
for k, v in pairs(arg1) do
	itemType[math.floor(v[codeIndex] / 1000000)] = true
end

for k, v in pairs(itemType) do
	if player.PlayerInventory:GetFreeSlot(k) == 0 then
		return false
	end
end

return true
end