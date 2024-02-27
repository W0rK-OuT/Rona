return function (self,num) 
local str = string.reverse(num)
local total = 0
for idx = 1, #str do
	total = self:ConToInt(string.sub(str, idx, idx)) * math.pow(64, idx - 1) + total
end
return math.floor(total)
end