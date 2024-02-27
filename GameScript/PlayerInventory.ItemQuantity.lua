return function (self,id) 
local tab = math.floor(id / 1000000)
local inv = self:GetInv(tab)
if inv == nil then
	return 0
end
local totCount = 0
for key, value in pairs(inv) do
	if value["id"] == id then
		totCount = totCount + value["quantity"]
	end
end
return totCount
end