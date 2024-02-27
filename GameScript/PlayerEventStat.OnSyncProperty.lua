return function (self,name,value) 
if self.Entity ~= _UserService.LocalPlayer then
	return
end

if name == "hp" then
	_EventStatManager:UpdateHP(value)
	_DeadManager:DeadManager()
elseif name == "state" then
	_EventStatManager:UpdateState(value)
end
end