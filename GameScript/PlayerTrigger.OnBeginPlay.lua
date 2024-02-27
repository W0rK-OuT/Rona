return function (self) 
if self.Entity == _UserService.LocalPlayer then
	self.Entity.TriggerComponent.Enable = true
else
	self.Entity.TriggerComponent.Enable = false
end
end