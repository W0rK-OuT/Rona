return function (self,id) 
local calcID = math.floor(id / 10000)
if calcID == 104 then
	return 6
elseif calcID == 134 then -- 블레이드
	return 10
elseif calcID >= 130 and calcID <= 149 then -- 무기
	return 31
end
return calcID - 99
end