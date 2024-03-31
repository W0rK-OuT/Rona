return function (self,power,time) 
local camera = _CameraService:GetCurrentCameraComponent()
if camera ~= nil then
	camera:ShakeCamera(power, time)
end
end