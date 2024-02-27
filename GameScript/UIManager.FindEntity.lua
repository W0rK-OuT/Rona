return function (self,name) 
for key, value in pairs(self.openUI.Children) do
	if value.Name == name then
		return value
	end
end
return nil
end