return function (self) 
if _UtilLogic:IsNilorEmptyString(self.lastClick) then
	return
end
if _UtilLogic:Contains(self.lastClick, "T-") then
	local slot = string.sub(self.lastClick, 3)
	_UserService.LocalPlayer.PlayerKey:RemoveMainKey(slot)
end
self:SetLastClick("")
end