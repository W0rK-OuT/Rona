return function (self,id) 
local itemType = math.floor(id / 10000)
if itemType >= 111 and itemType <= 113 then -- 펜던트 벨트 반지
	return true
end
return false
end