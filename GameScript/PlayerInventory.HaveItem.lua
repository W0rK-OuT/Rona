return function (self,id,quantity) 
local tab = math.floor(id / 1000000)
local inv = self:GetInv(tab)
if inv == nil then
	return false
end
local totCount = 0
for key, value in pairs(inv) do
	if value["id"] == id then
		totCount = totCount + value["quantity"]
		if totCount >= quantity then
			return true
		end
	end
end
if totCount >= quantity then
	return true
end
return false
end