return function (self) 
self.main:SetEnable(false)
_UIManager:Remove(self.main)

self.grid:GetChildByName("Sample"):SetEnable(false)
self.worldPos = self.main:GetChildByName("ExitButton").UITransformComponent.WorldPosition:Clone()
end