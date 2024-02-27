return function (self,state) 
self.tradeState = state
local ok = self.main:GetChildByName("TopLeft"):GetChildByName("Ok")
if state then
	ok.SpriteGUIRendererComponent.Color = Color(255 / 255, 153 / 255, 85 / 255)
else
	ok.SpriteGUIRendererComponent.Color = Color(187 / 255, 187 / 255, 187 / 255)
end
end