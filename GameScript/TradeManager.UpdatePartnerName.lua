return function (self,name,id) 
local topLeft = self.main:GetChildByName("TopLeft")
topLeft:GetChildByName("PName"):GetChildByName("UIText").TextComponent.Text = name
self.partnerID = id
end