return function (self) 
self.itemID = 0
self.slot = ""
self.main:GetChildByName("Text").TextComponent.Text = ""
self.main:SetEnable(false)
_UIManager:Remove(self.main)
end