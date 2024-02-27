return function (self) 
self.mesoBox:GetChildByName("Input").TextInputComponent.Text = ""
self.mesoBox:SetEnable(false)
_UIManager:Remove(self.mesoBox)
end