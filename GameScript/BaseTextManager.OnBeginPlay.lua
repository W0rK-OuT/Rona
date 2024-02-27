return function (self) 
self.text = self.main:GetChildByName("Text")
self.sizeX = self.main.UITransformComponent.RectSize.x

self.main:SetEnable(false)
_UIManager:Remove(self.main)
end