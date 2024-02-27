return function (self,str) 
for key, value in pairs(self.hexTable) do
	if value == str then
		return key - 1
	end
end
return 0
end