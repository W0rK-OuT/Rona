return function (self,type) 
if type == 1 then
	return "맵 정보가 없습니다."
elseif type == 2 then
	return "순간이동이 불가능한 지역입니다."
end
return ""
end