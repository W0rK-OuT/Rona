return function (self) 
local inven = _UserService.LocalPlayer.PlayerInventory
for idx = 1, 5 do
	local items = inven:GetInv(idx)
	if items == nil then
		return
	end
	for key, value in pairs(items) do
		local id = value["id"]
		_ItemData:LoadSize(id)
	end
end
end