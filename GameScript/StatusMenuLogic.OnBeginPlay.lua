return function (self) 
self.pc:SetEnable(false)
self.clone = self.pc:Clone(self.entityName)
self.clone:SetEnable(false)
end