return function (self,name,value) 
if self.Entity ~= _UserService.LocalPlayer then
	return
end

if name == "total" then
	_PetManager:UpdateSpecial(value >= 3)
end
end