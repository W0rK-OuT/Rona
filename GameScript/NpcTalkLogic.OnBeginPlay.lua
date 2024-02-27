return function (self) 
self.main:SetEnable(false)
self.entityName = self.main.Name
_UIManager:Remove(self.main)
end