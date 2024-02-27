return function (self,newTab) 
local tabs = self.main:GetChildByName("Tabs")
for key, value in pairs(tabs.Children)  do
    if value.Name == "inv" .. newTab then
		--value.SpriteGUIRendererComponent.Color = Color(238 / 255, 102 / 255, 136 / 255)
		value.SpriteGUIRendererComponent.ImageRUID = "39d7ad8a97ee426f946dcf136aa4ec2c"
    else
		--value.SpriteGUIRendererComponent.Color = Color(173 / 255, 173 / 255, 173 / 255)
		value.SpriteGUIRendererComponent.ImageRUID = "5dd6518bb00f4b88b013175a12280814"
	end
end
end