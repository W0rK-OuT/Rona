return function (self) 
for _, v in pairs(self.textGrid.Children) do
	v:Destroy()
end
end