return function (self) 
local mainEntity = self.mainQuickSlot
local player = _UserService.LocalPlayer
for key, value in pairs(player.PlayerKey.mainKey) do
	local keyboard = KeyboardKey[key]
	if keyboard ~= nil then
		if not _UtilLogic:Contains(value, "I-") then
			continue
		end
		local itemID = tonumber(string.sub(value, 3))
		local count = player.PlayerInventory:ItemQuantity(itemID)
		
		local info = self:GetKeyInfo(value)
		local findMobile = mainEntity:GetChildByName(key)
		if findMobile ~= nil then
			local fin = findMobile:GetChildByName("Key")
			if fin ~= nil then
				if count >= 1000 then
					fin:GetChildByName("Desc").TextComponent.Text = "999+"
				else
					fin:GetChildByName("Desc").TextComponent.Text = tostring(count)
				end
			end
		end
	end
end	
end