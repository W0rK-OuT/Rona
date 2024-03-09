return function (self,ruid,skillID) 
self.skillID = skillID

if _UtilLogic:IsNilorEmptyString(ruid) then
	self.Entity.SpriteRendererComponent.SpriteRUID = ""
	self.Entity:SetEnable(false)
else
	self.Entity.SpriteRendererComponent.SpriteRUID = ruid
	self:ChangeLook(_UserService.LocalPlayer.PlayerControllerComponent.LookDirectionX < 0)
	self.Entity:SetEnable(true)
end
end