return function (self,player,sort) 
local tomb = player:GetChildByName("tomb")
if tomb ~= nil then
	tomb.SpriteRendererComponent.SortingLayer = sort
end
end