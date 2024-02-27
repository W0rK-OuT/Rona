return function (self,layer) 
if self.main ~= nil and self.main.Enable then
	for k, v in pairs(self.main.Children) do
		v.SpriteRendererComponent.SortingLayer = layer
	end
end
end