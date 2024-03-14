return function (self,sort) 
local pet = self.pet
if isvalid(pet) then
	pet.SpriteRendererComponent.SortingLayer = sort
end
end