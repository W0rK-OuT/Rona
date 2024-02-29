return function (self) 
self.main_mobile:SetEnable(false)
self.main_pc:SetEnable(false)
if Environment:IsMobilePlatform() then
	self.main = self.main_mobile:Clone(self.entityName)
else
	self.main = self.main_pc:Clone(self.entityName)
end
self.main:SetEnable(false)

self.grid = self.main:GetChildByName("Grid")
self.lastGain = self.main:GetChildByName("LastGain")
self.mesoBar = self.main:GetChildByName("MesoText").TextComponent

local sample = self.sample
sample:GetChildByName("ruid").SpriteGUIRendererComponent.ImageRUID = "3e9d52ed52d64794bbd6f72bab8ee3d9"
sample:SetEnable(false)
self.main:AttachChild(sample)

local grid = self.main:GetChildByName("Grid")
for _, v in pairs(grid.Children) do
	v:Destroy()
end
for idx = 1, self.invMaxCount do
	local item = _SpawnService:SpawnByEntity(sample, "" .. idx, Vector3.zero, grid)
	item:GetChildByName("Num").TextComponent.Text = "" .. idx
	if idx >= 33 then
		item:SetEnable(false)
	end
end
self.worldPos = grid.UITransformComponent.WorldPosition

local tabs = self.main:GetChildByName("Tabs")
for key, value in pairs(tabs.Children)  do
	value:GetChildByName("UISprite"):SetEnable(false)
end
self:UpdateTabColor(self.tab)

--local grid = self.clone:GetChildByName("Grid")
--grid:SetEnable(false)

--
--for idx = 1, 1 do
--    local nClone = grid:Clone("inv" .. idx)
--    local sample = nClone:GetChildByName("Sample")
--    for slot = 1, 96 do
--        sample:Clone("" .. slot)
--    end
--    sample:Destroy()
--    nClone:SetEnable(self.tab == idx and true or false)
--end

self.main:SetEnable(false)
_UIManager:Remove(self.main)
self:DataClose()
end