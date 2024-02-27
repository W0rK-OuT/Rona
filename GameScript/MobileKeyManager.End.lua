return function (self) 
if self.changed then
	_UserService.LocalPlayer.PlayerKey:SetMobileButtons(self.keys)
	self.changed = false
end
if self.colorChanged then
	self:SetJoystic(_UserService.LocalPlayer, false, "a", self.colorValue)
	self.colorChanged = false
end
self:UpdateButtons()
end