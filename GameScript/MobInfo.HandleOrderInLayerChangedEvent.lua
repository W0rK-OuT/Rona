return function (self,event) 
-- Parameters
local OrderInLayer = event.OrderInLayer
---------------------------------------------------------
if self.hpBar ~= nil then
	self.hpBar.SpriteRendererComponent.OrderInLayer = OrderInLayer
	self.black.SpriteRendererComponent.OrderInLayer = OrderInLayer
end
end