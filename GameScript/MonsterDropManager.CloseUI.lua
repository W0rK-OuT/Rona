return function (self) 
local grid = self.mobSample.Parent
for k, v in pairs(grid.Children) do
	v:SetEnable(false)
end
self:UpdateItems(nil, nil)

self.main:SetEnable(false)
_UIManager:Remove(self.main)
_SoundService:PlaySound("8f9f8f7ed3124701a214c5653722ced3", 1)
end