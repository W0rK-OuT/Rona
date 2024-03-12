return function (self,fix) 
for _, v in pairs(self.main.Children) do
	v:SetEnable(not fix)
end
self.main.JoystickComponent.Enable = fix
end