return function (self,id) 
self.id = id

self.main:SetEnable(true)
_UIManager:Add(self.main)

self.main:GetChildByName("Input").TextInputComponent.Text = ""
end