return function (self,meso) 
if self.clone.Enable then
	if meso == nil then
		self.meso.Text = _Util:ConvertComma(_UserService.LocalPlayer.PlayerInventory:GetMeso())
	else
		self.meso.Text = meso
	end
end
end