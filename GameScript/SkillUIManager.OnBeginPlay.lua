return function (self) 
if Environment:IsMobilePlatform() then
	self.mobile = true
end

if self.mobile then
	self.clone = self.mobilever:Clone(self.entityName)
	self.sample = self.mobilever:GetChildByName("Mid"):GetChildByName("Grid"):GetChildByName("Sample")
else
	self.clone = self.pc:Clone(self.entityName)
	self.sample = self.pc:GetChildByName("Mid"):GetChildByName("Grid"):GetChildByName("Sample")
end
self.mobilever:SetEnable(false)
self.pc:SetEnable(false)

self.clone:SetEnable(false)
_UIManager:Remove(self.clone)

local grid = self.clone:GetChildByName("Mid"):GetChildByName("Grid")
for key, value in pairs(grid.Children) do
	value:Destroy()
end
self.grid = grid
self.tabs = self.clone:GetChildByName("Mid"):GetChildByName("Tab")
self.sp = self.clone:GetChildByName("Bottom"):GetChildByName("SP"):GetChildByName("Value").TextComponent
self:SwitchTab(0)
end