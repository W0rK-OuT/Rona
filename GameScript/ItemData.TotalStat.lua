return function (self,info) 
local total = 0
for k, v in pairs(info) do
	if k == "incCraft" then
		-- 무시
	elseif k == "incMHP" or k == "incMMP" then
		total += math.ceil(v / 10)
	elseif _UtilLogic:Contains(k, "inc") then
		total += v
	end
end
return total
end