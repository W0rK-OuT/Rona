return function (self) 
self.yesNoBox = _YesNoBoxManager.main:Clone(self.yesNoName)
self.yesNoBox:GetChildByName("Text").TextComponent.Text = "이 아이템은 버린 후 다시 회수할 수 없습니다\n그래도 버리시겠습니까?"
self.yesNoBox:SetEnable(false)
_UIManager:Remove(self.yesNoBox)

self.countBox = _TextBoxManager.main:Clone(self.countBoxName)
self.countBox:GetChildByName("Text").TextComponent.Text = "\n몇 개나 버리시겠습니까?"
self.countBox:GetChildByName("Input").TextInputComponent.ContentType = InputContentType.IntegerNumber
self.countBox:SetEnable(false)
_UIManager:Remove(self.countBox)
end