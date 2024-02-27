return function (self) 
self.lastWorldMapName = ""
self.player:SetEnable(false)
self.main:SetEnable(false)
_UIManager:Remove(self.main)
_SoundService:PlaySound("ea70a0ed373d4b9cb0696a4474162423", 1)
end