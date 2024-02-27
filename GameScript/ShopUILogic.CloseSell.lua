return function (self) 
self.sellIsEquip = false
self.sellClone:GetChildByName("Input").TextInputComponent.Text = ""

self.sellClone:SetEnable(false)
_UIManager:Remove(self.sellClone)
end