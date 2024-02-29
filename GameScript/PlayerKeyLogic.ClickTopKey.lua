return function (self,slot) 
if _UtilLogic:IsNilorEmptyString(_DragBackManager.type) then
	if _UtilLogic:IsNilorEmptyString(slot) or slot == "none" then
		return
	end
	local findKey = _UserService.LocalPlayer.PlayerKey.mainKey[slot]
	if findKey == nil then
		return
	end
	_DragBackManager:OpenUI("key", "top", slot)
elseif _DragBackManager.type == "key" then
	if _DragBackManager.slot == "top" then
		if _DragBackManager.subSlot ~= slot then
			_UserService.LocalPlayer.PlayerKey:NewChangeKey(_DragBackManager.subSlot, slot)
		end
	elseif _DragBackManager.slot == "bot" then
		_UserService.LocalPlayer.PlayerKey:NewUpKey(_DragBackManager.subSlot, slot)
	end
	_DragBackManager:CloseUI()
elseif _DragBackManager.type == "inv" then
	local invTab = tonumber(_DragBackManager.slot)
	local invSlot = _DragBackManager.subSlot
	if invTab ~= 2 then
		_DragBackManager:CloseUI()
		return
	end
	local inv = _UserService.LocalPlayer.PlayerInventory:GetInv(invTab)
	local item = inv[invSlot]
	if item == nil then
		_DragBackManager:CloseUI()
		return
	end
	local itemID = item["id"]
	_UserService.LocalPlayer.PlayerKey:NewAddKey(slot, -itemID)
	_DragBackManager:CloseUI()
elseif _DragBackManager.type == "skill" then
	local skillID = tonumber(_DragBackManager.slot)
	_UserService.LocalPlayer.PlayerKey:NewAddKey(slot, skillID)
	_DragBackManager:CloseUI()
else
	_DragBackManager:CloseUI()
end


--if slot == "none" then
--    return
--end
--if _UtilLogic:IsNilorEmptyString(self.lastClick) then
--    if _UserService.LocalPlayer.PlayerKey.mainKey[slot] == nil then
--        return
--    end
--    self:SetLastClick("T-" .. slot)
--else
--    self:SwitchKey(self.lastClick, "T-" .. slot)
--    self:SetLastClick("")
--end
end