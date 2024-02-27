return function (self) 
self.back = _SpawnService:SpawnByModelId("model://36b4749b-91db-4bd0-ac91-e54c275c976e", "back", Vector3(0, 0, 2), self.Entity)
local player = self.Entity.Parent
self.root = player.AvatarRendererComponent:GetAvatarRootEntity()
end