return function (self) 
self.main:GetChildByName("Text").TextComponent.Text = ""
self.main:SetEnable(false)

self.main.CanvasGroupComponent.GroupAlpha = 0
end