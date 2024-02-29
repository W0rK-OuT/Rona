return function (self,slot) 
if _UtilLogic:IsNilorEmptyString(_DragBackManager.type) then
	_DragBackManager:OpenUI("key", "bot", slot)
elseif _DragBackManager.type == "key" then
	if _DragBackManager.slot == "top" then
		if not _UtilLogic:IsNilorEmptyString(_DragBackManager.subSlot) then
			_UserService.LocalPlayer.PlayerKey:NewRemoveKey(_DragBackManager.subSlot)
		end
	end
	_DragBackManager:CloseUI()
else
	_DragBackManager:CloseUI()
end

--if _UtilLogic:IsNilorEmptyString(self.lastClick) then
--    self:SetLastClick("B-" .. slot)
--else
--    self:SwitchKey(self.lastClick, "B-" .. slot)
--    self:SetLastClick("")
--end
end