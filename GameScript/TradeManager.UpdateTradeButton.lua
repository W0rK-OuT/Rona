return function (self,state) 
self.tradeState = state
local ok = self.main:GetChildByName("TopLeft"):GetChildByName("Ok")
if state then
	ok.SpriteGUIRendererComponent.ImageRUID = "5bfa805e0ace40a6a35f35de190f327f"
else
	ok.SpriteGUIRendererComponent.ImageRUID = "d8b506925314494a8ac3ead8a42463fb"
end
end