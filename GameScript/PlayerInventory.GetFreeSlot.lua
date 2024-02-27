return function (self,tab) 
local inv = self:GetInv(tab)
if inv == nil then
	return 0
end
local last = self:GetMaxSlot(tab)
for idx = 1, last do
	if inv[tostring(idx)] == nil then
		return idx
	end
end
return 0
end