return function (self) 
for key, value in pairs(self.grid.Children) do
	self:UpdateSlot(value.Name)
end
end