return function (self) 
if self.cloneItem.Enable then
	self.cloneItem:SetEnable(false)
	_UIManager:Remove(self.cloneItem)
end
if self.cloneEquip.Enable then
	self.cloneEquip:SetEnable(false)
	_UIManager:Remove(self.cloneEquip)
end
end