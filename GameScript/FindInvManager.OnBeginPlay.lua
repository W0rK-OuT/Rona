return function (self) 
self.main:SetEnable(false)
_UIManager:Remove(self.main)

local topGrid = self.main:GetChildByName("TopGrid")
local sample = topGrid:GetChildByName("Sample")
sample:SetEnable(false)
for idx = 0, _StartGame.maxCount -1 do
	local clone = sample:Clone("" .. idx)
	clone:GetChildByName("UIText").TextComponent.Text = "" .. idx
end

local grid = self.main:GetChildByName("Grid")
local gridSample = grid:GetChildByName("Sample")
gridSample:SetEnable(false)

for idx = 1, 96 do
	local clone = gridSample:Clone("" .. idx)
	clone:SetEnable(false)
end
end