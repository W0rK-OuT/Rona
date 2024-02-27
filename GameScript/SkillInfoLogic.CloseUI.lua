return function (self) 
if self.main.Enable then
	self.main:SetEnable(false)
	_UIManager:Remove(self.main)
end
end