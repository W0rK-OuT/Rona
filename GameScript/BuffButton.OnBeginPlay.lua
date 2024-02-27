return function (self) 
self.text = self.Entity:GetChildByName("Timer").TextComponent
self.cool = self.Entity:GetChildByName("Cool").SpriteGUIRendererComponent
end