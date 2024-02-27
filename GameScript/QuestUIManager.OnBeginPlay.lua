return function (self) 
self.mainEntityName = self.main.Name
self.sample:SetEnable(false)

self.acceptBox = _YesNoBoxManager.main:Clone(self.acceptBoxName)
self.acceptBox:SetEnable(false)
self.acceptBox:GetChildByName("Text").TextComponent.Text = "정말 포기하시겠습니까?"
_UIManager:Remove(self.acceptBox)

self.main:SetEnable(false)
_UIManager:Remove(self.main)

self.textInfo = self.descInfo:GetChildByName("Grid"):GetChildByName("Desc")

self.gridSample:SetEnable(false)
end