return function (self) 
if self.main.Enable then
	self:CloseUI()
else
	self:OpenUI()
end
end