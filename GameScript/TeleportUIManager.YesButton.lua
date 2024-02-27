return function (self) 
if self.yesNoType == 1 then
	local p = self.players[self.select]
	if p == nil then
		return
	end
	self:TargetMove(_UserService.LocalPlayer, p[2])
end
self:CloseYesNo()
end