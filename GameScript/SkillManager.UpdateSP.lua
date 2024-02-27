return function (self) 
local spTable = _UserService.LocalPlayer.PlayerStats.sp
for key, value in pairs(spTable) do
	if key == self.lastTab then
		self.sp.Text = tostring(value)
		break
	end
end
end