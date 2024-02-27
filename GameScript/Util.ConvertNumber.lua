return function (self,value) 
if value == nil then
	return 0
end
local com = tonumber(value)
if com == nil then
	return 0
end
if math.ceil(com) == math.floor(com) then
	return math.floor(com)
end
return com
end