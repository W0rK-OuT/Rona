return function (self,sort) 
local pet = _UserService.LocalPlayer:GetChildByName("pet")
if pet ~= nil then
	pet.SpriteRendererComponent.SortingLayer = sort
end
end