return function (self,player,order) 
local deco = player:GetChildByName("deco")
if deco ~= nil then
	deco.SpriteRendererComponent.OrderInLayer = order
end
end