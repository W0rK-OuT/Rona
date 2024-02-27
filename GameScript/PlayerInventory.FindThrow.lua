return function (self,weaponID) 
local itemType = math.floor(weaponID / 10000)
if itemType == 145 then
	return 2060
elseif itemType == 146 then
	return 2061
elseif itemType == 147 then
	return 2070
elseif itemType == 149 then
	return 2330
end
return 0
end