return function (self,ruid,skillID) 
self.skillID = skillID
self.check = false

if _UtilLogic:IsNilorEmptyString(ruid) then
	self.Entity.SpriteRendererComponent.SpriteRUID = ""
	self.Entity:SetEnable(false)
elseif skillID == 3221001 then
	self.Entity.SpriteRendererComponent.SpriteRUID = "167381972db04abf830ea927629249eb"
	self.nextRUID = ruid
	self:ChangeLook(_UserService.LocalPlayer.PlayerControllerComponent.LookDirectionX < 0)
	self.Entity:SetEnable(true)
else
	self.Entity.SpriteRendererComponent.SpriteRUID = ruid
	self:ChangeLook(_UserService.LocalPlayer.PlayerControllerComponent.LookDirectionX < 0)
	self.Entity:SetEnable(true)
end
end