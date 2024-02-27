return function (self,id) 
local itemType = math.floor(id / 10000)
if itemType == 228 or itemType == 229 then
	return true
end
return false
end