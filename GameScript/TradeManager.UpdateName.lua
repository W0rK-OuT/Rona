return function (self,name) 
local topLeft = self.main:GetChildByName("TopLeft")
topLeft:GetChildByName("Name"):GetChildByName("UIText").TextComponent.Text = name
end