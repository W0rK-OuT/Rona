return function (self) 
if not self.init then
	return
end
_KeyOperation.openShopAndNpc = false
self.clone:SetEnable(false)
_UIManager:Remove(self.clone)
_UserService.LocalPlayer.PlayerNpcTalk:Dispose()
self:CloseBuy()
self:CloseSell()
self:CloseRecharge()
end