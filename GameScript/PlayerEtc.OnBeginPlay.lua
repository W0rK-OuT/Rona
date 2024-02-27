return function (self) 
if self.Entity ~= _UserService.LocalPlayer then
	_MiniMapManager:CreatePlayer(self.Entity)
end
end