return function (self) 
for k, v in pairs(self.tabGrid.Children) do
	if v.Name == "" .. self.tab then
		v.SpriteGUIRendererComponent:ChangeMaterial("material://68bca359-8e12-4688-9bcf-0c6de3c5060d")
	else
		v.SpriteGUIRendererComponent:ChangeMaterial("")
	end
end
end