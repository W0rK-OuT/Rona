return function (self) 
self.main = _YesNoBoxManager.main:Clone(self.entityName)
self.main:SetEnable(false)

_UIManager:Remove(self.main)
end