return function (self,value,def) 
if value == nil then
	return def
end
local con = tonumber(value)
if con == nil then
	return def
end
return con
end