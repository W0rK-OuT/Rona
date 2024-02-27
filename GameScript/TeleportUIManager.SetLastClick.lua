return function (self,num) 
if num == nil or num < 0 or num > self.maxValue then
	num = 0
end
if self.selectIndex == num then
	num = 0
end
local grid = self.main:GetChildByName("MapGrid")
for k, v in pairs(grid.Children) do
	if v.Name == "" .. num then
		v.SpriteGUIRendererComponent:ChangeMaterial("material://478a25a6-3a75-4df0-ae8b-764f74a26250")
	else
		v.SpriteGUIRendererComponent:ChangeMaterial("")
	end
end
self.selectIndex = num
end