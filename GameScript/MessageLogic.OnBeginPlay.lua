return function (self) 
self.show:SetEnable(false)
self.drop:SetEnable(false)
self.drop = self.drop:Clone(self.entityName)
self.dropText = self.drop:GetChildByName("Back"):GetChildByName("Text")
self:CloseDropMessage()

self.bigDropText = self.bigDrop:GetChildByName("Back"):GetChildByName("Text")
self.bigName = self.bigDrop.Name

self.topSample = self.topMain:GetChildByName("Sample")
self.topSample:SetEnable(false)
end