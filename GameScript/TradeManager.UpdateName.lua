return function (self,name) 
local topLeft = self.main:GetChildByName("TopLeft")
topLeft:GetChildByName("Name").TextComponent.Text = name
end