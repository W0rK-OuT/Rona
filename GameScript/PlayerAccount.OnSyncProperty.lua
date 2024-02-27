return function (self,name,value) 
if _UserService.LocalPlayer ~= _UserService.LocalPlayer then
	return
end

if name == "meso" then
	_PlayerAccountManager:UpdateMeso(value)
end
end