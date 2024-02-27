return function (self,str) 
local idx, _ = string.find(str, "+")

if idx ~= nil then
	return self:Con(string.sub(str, 1, idx - 1)) + self:Con(string.sub(str, idx + 1))
end

idx, _ = string.find(str, "-")
if idx ~= nil then
	return self:Con(string.sub(str, 1, idx - 1)) - self:Con(string.sub(str, idx + 1))
end

idx, _ = string.find(str, "*")
if idx ~= nil then
	return self:Con(string.sub(str, 1, idx - 1)) * self:Con(string.sub(str, idx + 1))
end

idx, _ = string.find(str, "/")
if idx ~= nil then
	return self:Con(string.sub(str, 1, idx - 1)) / self:Con(string.sub(str, idx + 1))
end

local data, _ = string.gsub(str, " ", "")
local num = tonumber(data)

return num
end