return function (self) 
local text = self.main:GetChildByName("Input").TextInputComponent.Text
self:ShootEvent2(text)
end