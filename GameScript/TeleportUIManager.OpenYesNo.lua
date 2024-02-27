return function (self,text,type) 
self.yesNoType = type
self.yesNoBox:GetChildByName("Text").TextComponent.Text = text
self.yesNoBox:SetEnable(true)
_UIManager:Add(self.yesNoBox)
end