return function (self,order) 
self.Entity:GetChildByName("Main").SpriteRendererComponent.OrderInLayer = order
for _, ch in pairs(self.child.Children) do
	ch.SpriteRendererComponent.OrderInLayer = order
end
end