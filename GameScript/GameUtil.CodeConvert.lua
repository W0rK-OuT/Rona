return function (self,id) 
id = math.floor(id)
if id < 10 then
	return "000000" .. id
elseif id < 100 then
	return "00000" .. id
elseif id < 1000 then
	return "0000" .. id
elseif id < 10000 then
	return "000" .. id
elseif id < 100000 then
	return "00" .. id
elseif id < 1000000 then
	return "0" .. id
end
return tostring(id)
end