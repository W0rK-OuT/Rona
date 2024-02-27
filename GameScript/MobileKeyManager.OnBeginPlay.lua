return function (self) 
self.entityName = self.main.Name
self.settingMain:SetEnable(false)
self.Parent.UITransformComponent.RectSize = Vector2(self.rectSizeX, self.rectSize)
self.main:SetEnable(false)
_UIManager:Remove(self.main)
end