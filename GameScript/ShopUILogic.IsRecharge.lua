return function (self,id) 
local itemType = math.floor(id / 10000)
if itemType == 207 or itemType == 233 then
	return true
end
return false
end