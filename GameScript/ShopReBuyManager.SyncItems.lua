return function (self,items) 
_UserService.LocalPlayer.PlayerReBuy.shop = items
if self.main.Enable then
	self:UpdateUI()
end
end