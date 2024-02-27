return function (self) 
self.isRemove = true

for key, value in pairs(self.grid.Children) do
	if value.Name ~= "Sample" then
		value:Destroy()
	end
end
self.totalCount = 0
self:Down()
self.isRemove = false
end