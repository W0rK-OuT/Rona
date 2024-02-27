return function (self) 
self.tabGrid = self.main:GetChildByName("TabGrid")
self.tabSample = self.tabGrid:GetChildByName("Sample")
self.tabSample:SetEnable(false)

self.itemGrid = self.main:GetChildByName("ItemGrid")
self.itemSample = self.itemGrid:GetChildByName("Sample")
self.itemSample:SetEnable(false)

self.countBox = _TextBoxManager.main:Clone(self.countBoxName)
self.countBox:SetEnable(false)
self.countBox:GetChildByName("Text").TextComponent.Text = "\n몇 개를 넣으시겠습니까?"
self.countBox:GetChildByName("Input").TextInputComponent.ContentType = InputContentType.IntegerNumber
_UIManager:Remove(self.countBox)

self.mesoBox = _TextBoxManager.main:Clone(self.mesoBoxName)
self.mesoBox:SetEnable(false)
self.mesoBox:GetChildByName("Input").TextInputComponent.ContentType = InputContentType.IntegerNumber
_UIManager:Remove(self.mesoBox)

self.main:SetEnable(false)
_UIManager:Remove(self.main)
end