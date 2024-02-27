return function (self,isDark) 
if self.camera == nil then
	self.camera = _SpawnService:SpawnByModelId("model://7a571f10-8f43-4718-9179-e54a5aa762dc", "cameraDark", Vector3(0, 0.4, 0), _UserService.LocalPlayer)
	self.camera:SetEnable(false)
	self.camera.SpriteRendererComponent.SpriteRUID = "28c486da4fb6440892866cfc8091f644"
end

if isDark then
	self.camera:SetEnable(true)
else
	self.camera:SetEnable(false)
end

--local camera = _CameraService:GetCurrentCameraComponent()
--if isDark then
--    camera:ChangeMaterial("material://a5bfb6fe-46b8-4252-919c-8f948af1097b")
--else
--    camera:ChangeMaterial("")
--end
end