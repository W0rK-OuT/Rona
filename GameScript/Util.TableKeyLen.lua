return function (self,nTable) 
local len = 0
for _ in pairs(nTable) do
	len += 1
end
return len
end