return function (self) 
local nTable = _UserService.LocalPlayer.PlayerSetting.petOption
for k, v in pairs(nTable) do
	self:Update(k, tonumber(v))
end
end