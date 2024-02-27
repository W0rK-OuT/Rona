return function (self,slot) 
if slot == "none" then
	return
end
if _UtilLogic:IsNilorEmptyString(self.lastClick) then
	if _UserService.LocalPlayer.PlayerKey.mainKey[slot] == nil then
		return
	end
	self:SetLastClick("T-" .. slot)
else
	self:SwitchKey(self.lastClick, "T-" .. slot)
	self:SetLastClick("")
end
end