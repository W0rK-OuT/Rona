return function (self) 
self.main = _YesNoBoxManager.main:Clone(self.entityName)
self.main:SetEnable(false)
self.main:GetChildByName("Text").TextComponent.Text = "정말로 교환하시겠습니까?"
_UIManager:Remove(self.main)
end