return function (self,type) 
local nColor
if type == 3 then -- 회색
	nColor = Color(187 / 255, 187 / 255, 187 / 255)
elseif type == 4 then -- 노랑
	nColor = Color(1, 1, 0)
elseif type == 5 then -- red
	nColor = Color(255 / 255, 170 / 255, 170 / 255)
elseif type == 6 then -- blue
	nColor = Color(102 / 255, 204 / 255, 255 / 255)
else
	nColor = Color(1, 1, 1)
end
return nColor
end