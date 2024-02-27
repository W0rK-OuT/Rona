return function (self,id) 
local itemType = math.floor(id / 10000)
if itemType == 180 then -- 펫장비
	return true
end
if itemType == 181 then -- 뱃지
	return true
end
if itemType == 182 then -- 상장
	return true
end
if itemType == 111 then -- 반지
	return true
end
if itemType == 112 then -- 목걸이
	return true
end
if itemType == 113 then -- 벨트
	return true
end
if itemType == 114 then -- 훈장
	return true
end
if itemType == 115 then -- 어깨장식
	return true
end
return false
end