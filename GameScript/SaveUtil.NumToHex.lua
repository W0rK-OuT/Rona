return function (self,num) 
local bit = 64

local str = ""
while true do
	str = self:ConToStr(num % bit) .. "" .. str
	num = math.floor(num / bit)
	if num == 0 then
		break
	end
end
return str
end