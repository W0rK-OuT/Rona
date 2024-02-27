return function (self) 
local shopTable = _Util:FindTable_All("Shops")
for key, value in pairs(shopTable) do
	local id = tonumber(value["id"])
	self.shops[id] = value
end
end