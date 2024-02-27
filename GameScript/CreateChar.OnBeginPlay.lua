return function (self) 
self.main:SetEnable(false)
self.clone = self.main:Clone(self.entityName)
self:CloseUI()
end