return function (self,value) 
local toStr = tostring(value)

local reverse = string.reverse(toStr)
local str = ""
for i = 1, #toStr do
	str = str .. string.sub(reverse, i, i)
	if i % 3 == 0 and i < #toStr then
		str = str .. ","
	end
end
return string.reverse(str)
end