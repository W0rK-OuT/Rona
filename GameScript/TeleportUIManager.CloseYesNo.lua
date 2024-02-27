return function (self) 
self.yesNoType = 0
self.select = 0
self.yesNoBox:GetChildByName("Text").TextComponent.Text = ""
self.yesNoBox:SetEnable(false)
_UIManager:Remove(self.yesNoBox)
end