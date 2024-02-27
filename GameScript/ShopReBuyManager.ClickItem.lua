return function (self,num) 
if num == nil then
	num = -1
end

local ori = self.clickIndex
if ori == num then
	num = -1
end
self.clickIndex = num

for k, v in pairs(self.grid.Children) do
	if v.Name == tostring(num) then
		v.SpriteGUIRendererComponent.Color = Color(118 / 255, 88 / 255, 88 / 255)
	else
		v.SpriteGUIRendererComponent.Color = Color(243 / 255, 192 / 255, 91 / 255)
	end
end
end