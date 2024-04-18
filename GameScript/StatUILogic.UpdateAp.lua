return function (self,ap) 
self.ap.Text = tostring(ap)
local turn = ap > 0

local mater
local statMater
if turn then
	mater = "material://8e34ae89-6f30-4845-9b1f-c1832328ad2b"
	statMater = "21eec1e109b74cd1a37b1bdd21362158"
else
	mater = "material://98eda30f-57d2-4ec7-8585-58533fcd7bb7"
	statMater = "17d5223c1b074592bbe05a7b188a5dda"
end
self.clone:GetChildByName("AutoButton").SpriteGUIRendererComponent:ChangeMaterial(mater)
self.clone:GetChildByName("AutoButton1").SpriteGUIRendererComponent:ChangeMaterial(mater)
self.clone:GetChildByName("AutoButton2").SpriteGUIRendererComponent:ChangeMaterial(mater)

local bottom = self.clone:GetChildByName("Bottom")
bottom:GetChildByName("StrStatButton").SpriteGUIRendererComponent.ImageRUID = statMater
bottom:GetChildByName("DexStatButton").SpriteGUIRendererComponent.ImageRUID = statMater
bottom:GetChildByName("IntStatButton").SpriteGUIRendererComponent.ImageRUID = statMater
bottom:GetChildByName("LukStatButton").SpriteGUIRendererComponent.ImageRUID = statMater
end