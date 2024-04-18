return function (self) 
if Environment:IsMobilePlatform() then
	self.mobile = true
end

if self.mobile then
	self.clone = self.mobilever:Clone(self.entityName)
	self.sample = self.mobilever:GetChildByName("Grid"):GetChildByName("Sample")
	self.clone.UITransformComponent.UIScale = Vector3(1.5, 1.5, 1.5)
else
	self.clone = self.pc:Clone(self.entityName)
	self.sample = self.pc:GetChildByName("Grid"):GetChildByName("Sample")
end
self.mobilever:SetEnable(false)
self.pc:SetEnable(false)

self.clone:SetEnable(false)
_UIManager:Remove(self.clone)

local grid = self.clone:GetChildByName("Grid")
for key, value in pairs(grid.Children) do
	value:Destroy()
end
self.grid = grid
self.tabs = self.clone:GetChildByName("Tab")
self.sp = self.clone:GetChildByName("Value").TextComponent
self.jobDesc = self.clone:GetChildByName("Desc").TextComponent
self.book = self.clone:GetChildByName("Book").SpriteGUIRendererComponent
self:SwitchTab(0)
end