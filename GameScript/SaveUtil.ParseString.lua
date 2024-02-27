return function (self,tbl) 
local result = {}
local index = 1
for key, value in pairs(tbl) do
	if type(value) == "table" then
		result[index] = key .. "=[" .. self:ParseString(value) .. "]"
	else
		result[index] = key .. "=" .. value
	end
	index += 1
end
return table.concat(result, ",")
end