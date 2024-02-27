return function (self) 
self.buyIsEquip = false
self.buyClone:GetChildByName("Input").TextInputComponent.Text = ""
self.buyClone:SetEnable(false)
_UIManager:Remove(self.buyClone)
end