return function (self,id) 
local itemType = math.floor(id / 10000)
if itemType == 111 then -- 반지
	return true
end
return false
end