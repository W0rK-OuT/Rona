return function (self,id) 
local itemType = math.floor(id / 10000)
if itemType >= 130 and itemType < 140 then
	return true
end
return false
end