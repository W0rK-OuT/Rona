return function (self,id) 
local itemType = math.floor(id / 10000)
if itemType >= 200 and itemType <= 202 then -- 포션
	return true
end
if itemType == 205 then -- 성수, 만통
	return true
end
if itemType == 221 then -- 변신 아이템
	return true
end
return false
end