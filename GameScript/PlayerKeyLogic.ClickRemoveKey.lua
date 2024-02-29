return function (self) 
if _DragBackManager.type == "key" and _DragBackManager.slot == "top" then
	if not _UtilLogic:IsNilorEmptyString(_DragBackManager.subSlot) then
		_UserService.LocalPlayer.PlayerKey:NewRemoveKey(_DragBackManager.subSlot)
	end
end
_DragBackManager:CloseUI()
end