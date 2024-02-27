return function (self,id) 
for key, value in pairs(self.inv0) do
	if value["id"] == id then
		return true
	end
end
return false
end