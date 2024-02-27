return function (self,id) 
local itemType = math.floor(id / 10000)
if itemType == 112 then -- 목걸이
	return true
end
return false
end