return function (self,mapID) 
if self.on then
	_UserService.LocalPlayer.CameraComponent.ConfineCameraArea = not (mapID >= 103000101 and mapID <= 103000202)
else
	_UserService.LocalPlayer.CameraComponent.ConfineCameraArea = false
end
end