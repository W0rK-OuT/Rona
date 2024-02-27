return function (self,id) 
if id == 0 then
	return "오류"
end
if id <= 3 then
	return "매우 빠름"
elseif id <= 5 then
	return "빠름"
elseif id == 6 then
	return "보통"
elseif id <= 8 then
	return "느림"
else
	return "매우 느림"
end
end