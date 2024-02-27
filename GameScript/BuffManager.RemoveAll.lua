return function (self) 
for k, v in pairs(self.main.Children) do
	if v.Name ~= "Sample" then
		v:Destroy()
	end
end
end