return function (self,event) 
-- Parameters
local OrderInLayer = event.OrderInLayer
---------------------------------------------------------
self.Entity.SpriteRendererComponent.OrderInLayer = OrderInLayer
end