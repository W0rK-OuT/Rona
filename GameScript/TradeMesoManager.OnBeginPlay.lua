return function (self) 
self.main:SetEnable(false)
self.main = self.main:Clone(self.entityName)
self.input = self.main:GetChildByName("Input").TextInputComponent

self.main:SetEnable(false)
_UIManager:Remove(self.main)
end