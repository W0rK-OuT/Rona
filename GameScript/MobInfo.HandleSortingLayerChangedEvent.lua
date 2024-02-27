return function (self,event) 
-- Parameters
local SortingLayer = event.SortingLayer
---------------------------------------------------------
if self.hpBar ~= nil then
	self.hpBar.SpriteRendererComponent.SortingLayer = SortingLayer
	self.black.SpriteRendererComponent.SortingLayer = SortingLayer
end
end