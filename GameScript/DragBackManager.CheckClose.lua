return function (self,type) 
if self.type ~= type then
	self:CloseUI()
	return true
end
return false
end