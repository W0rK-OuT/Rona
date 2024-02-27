return function (self) 
self.grid = self.main:GetChildByName("Grid")
self.sample = self.grid:GetChildByName("Sample")

self.sample:SetEnable(false)

self.main:SetEnable(false)
_UIManager:Remove(self.main)
end