return function (self,arg1) 
for key, value in pairs(self.mobileKey) do
	if value == arg1 then
		return true
	end
end
return false
end