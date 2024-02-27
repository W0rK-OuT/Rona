return function (self) 
self.main:GetChildByName("Input").TextInputComponent.Text = ""
self.main:SetEnable(false)
_UIManager:Remove(self.main)
end