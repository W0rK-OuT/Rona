return function (self,arg1) 
for key, value in pairs(self.mainKey) do
	if value == arg1 then
		return true
	end
end
for key, value in pairs(self.listKey) do
	if value == arg1 then
		return true
	end
end
return false
end