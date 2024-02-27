return function (self,event) 
-- Parameters
local OrderInLayer = event.OrderInLayer
---------------------------------------------------------
local partyHp = self.Entity:GetChildByName("partyHp")
if partyHp ~= nil then
	partyHp.SpriteRendererComponent.OrderInLayer = OrderInLayer
	partyHp:GetChildByName("Black").SpriteRendererComponent.OrderInLayer = OrderInLayer
end
end