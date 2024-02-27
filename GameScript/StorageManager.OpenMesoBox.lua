return function (self,isGet) 
self.isGet = isGet
self.mesoBox:SetEnable(true)
self.mesoBox:GetChildByName("Text").TextComponent.Text = isGet and "\n얼마를 꺼내시겠습니까?" or "\n얼마를 보관하시겠습니까?"
self.mesoBox:GetChildByName("Input").TextInputComponent.Text = ""
_UIManager:Add(self.mesoBox)
end