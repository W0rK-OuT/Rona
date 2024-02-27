return function (self,tab) 
local inv = self:GetInv(tab)
if inv == nil then
	return 0
end
local count = 0
local last = self:GetMaxSlot(tab)
for idx = 1, last do
	if inv[tostring(idx)] == nil then
		count += 1
	end
end
return count
end