return function (self,slot) 
if _UtilLogic:IsNilorEmptyString(self.lastClick) then
	self:SetLastClick("B-" .. slot)
else
	self:SwitchKey(self.lastClick, "B-" .. slot)
	self:SetLastClick("")
end
end