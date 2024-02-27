return function (self) 
_UIManager:Remove(self.drop)
self.drop:SetEnable(false)
self.dropText.TextComponent.Text = ""
end