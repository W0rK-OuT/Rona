return function (self,ap) 
self.ap.Text = tostring(ap)
local turn = ap > 0

local mater
local statMater
if turn then
	mater = "material://8e34ae89-6f30-4845-9b1f-c1832328ad2b"
	statMater = ""
else
	mater = "material://98eda30f-57d2-4ec7-8585-58533fcd7bb7"
	statMater = mater
end
self.clone:GetChildByName("AutoButton").SpriteGUIRendererComponent:ChangeMaterial(mater)
self.clone:GetChildByName("AutoButton1").SpriteGUIRendererComponent:ChangeMaterial(mater)
self.clone:GetChildByName("AutoButton2").SpriteGUIRendererComponent:ChangeMaterial(mater)

local bottom = self.clone:GetChildByName("Bottom")
bottom:GetChildByName("StrStatButton").SpriteGUIRendererComponent:ChangeMaterial(statMater)
bottom:GetChildByName("DexStatButton").SpriteGUIRendererComponent:ChangeMaterial(statMater)
bottom:GetChildByName("IntStatButton").SpriteGUIRendererComponent:ChangeMaterial(statMater)
bottom:GetChildByName("LukStatButton").SpriteGUIRendererComponent:ChangeMaterial(statMater)
end