return function (self) 
_KeyOperation.openShopAndNpc = false
self:TextRemove()
_UserService.LocalPlayer.PlayerNpcTalk.dispose = false
self.main:SetEnable(false)
_UIManager:Remove(self.main)
end