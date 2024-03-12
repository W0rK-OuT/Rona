return function (self,player,sort) 
local deco = player:GetChildByName("deco")
if deco ~= nil then
	deco.SpriteRendererComponent.SortingLayer = sort
end
end