return function (self,value1,value2) 
if value2 <= 0 then
	return tostring(value1)
end
return (value1 + value2) .. " (" .. value1 .. "+" .. value2 ..")"
end