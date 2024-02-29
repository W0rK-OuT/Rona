return function (self,type) 
if _UtilLogic:IsNilorEmptyString(self.type) then
	return false
end

if self.type == type then
	self:CloseUI()
	return true
end
return false
end