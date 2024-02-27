return function (self) 
local option = _UserService.LocalPlayer.PlayerSetting.petOption
local hpCode = _GameUtil:ConvertValue(option["HpCode"], 0)
local mpCode = _GameUtil:ConvertValue(option["MpCode"], 0)
if hpCode > 0 then
	self:Update("HpCode", hpCode)
end
if mpCode > 0 then
	self:Update("mpCode", mpCode)
end
end