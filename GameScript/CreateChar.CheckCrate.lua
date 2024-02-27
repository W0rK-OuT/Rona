return function (self,gender,items) 
if gender < 0 or gender > 1 then
	return 1
end
local charItems = self:CharInfo(gender)
for key, value in pairs(items) do
	local itemType = value[1]
	local itemIndex = value[2]
	
	local find = charItems[itemType]
	if find == nil then
		return 2
	end
	local findItem = find[itemIndex]
	if findItem == nil then
		return 2
	end
end
end