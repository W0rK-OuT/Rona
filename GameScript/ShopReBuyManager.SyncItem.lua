return function (self,item,meso,index) 
if item == nil then
	_UserService.LocalPlayer.PlayerReBuy.shop[index] = nil
else
	_UserService.LocalPlayer.PlayerReBuy.shop[index] = {item, meso}
end

if self.main.Enable then
	self:UpdateUI()
end
end