return function (self,event) 
-- Parameters
local OrderInLayer = event.OrderInLayer
---------------------------------------------------------
_TamingManager:UpdateOrder(self.Entity, OrderInLayer)
_DecoManager:UpdateOrder(self.Entity, OrderInLayer)
end