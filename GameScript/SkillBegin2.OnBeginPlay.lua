return function (self) 
self.simulator = _CollisionService:GetSimulator(_UserService.LocalPlayer.CurrentMap)
self.body = _UserService.LocalPlayer.AvatarRendererComponent:GetBodyEntity()
self.root = _UserService.LocalPlayer.AvatarRendererComponent:GetAvatarRootEntity()
end