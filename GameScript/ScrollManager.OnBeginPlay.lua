return function (self) 
self.main:SetEnable(false)
self.main = self.main:Clone(self.entityName)
self.main:SetEnable(false)
_UIManager:Remove(self.main)
end