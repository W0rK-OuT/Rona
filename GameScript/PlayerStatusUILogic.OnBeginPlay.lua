return function (self) 
self.hpPercent = self.main:GetChildByName("Mid"):GetChildByName("Hp"):GetChildByName("Mask").UITransformComponent
self.mpPercent = self.main:GetChildByName("Mid"):GetChildByName("Mp"):GetChildByName("Mask").UITransformComponent
self.expPercent = self.main:GetChildByName("Mid"):GetChildByName("Exp"):GetChildByName("Mask").UITransformComponent
self.name.Text = _UserService.LocalPlayer.PlayerComponent.Nickname
end