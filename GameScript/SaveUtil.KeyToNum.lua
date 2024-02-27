return function (self,str) 
for key, value in pairs(self.keyTable) do
	if value == str then
		return key
	end
end
return 0
end