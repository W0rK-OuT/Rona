return function (self,id) 
local itemType = math.floor(id / 10000)
if itemType == 101 then -- 얼굴장식
	return true
end
if itemType == 102 then -- 안경
	return true
end
if itemType == 103 then -- 귀고리
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
if itemType == 115 then -- 어깨장식
	return true
end
return false
end