return function (self) 
self.main:SetEnable(false)
self.main = self.main:Clone(self.entityName)
self:CloseUI()
end