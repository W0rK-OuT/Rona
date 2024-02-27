return function (self,isEquip) 
if isEquip then
	self.cloneEquip:SetEnable(false)
	_UIManager:Remove(self.cloneEquip)
else
	self.cloneItem:SetEnable(false)
	_UIManager:Remove(self.cloneItem)
end
end