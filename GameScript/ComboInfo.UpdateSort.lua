return function (self,sort) 
self.Entity:GetChildByName("Main").SpriteRendererComponent.SortingLayer = sort
for _, ch in pairs(self.child.Children) do
	ch.SpriteRendererComponent.SortingLayer = sort
end
end