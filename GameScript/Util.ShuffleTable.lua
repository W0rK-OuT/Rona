return function (self,t) 
local n = #t
for i = n, 2, -1 do
	local j = math.random(i)
	t[i], t[j] = t[j], t[i]
end
return t
end