return function (self) 
local option = _UserService.LocalPlayer.PlayerSetting.petOption
local hpCode = _SkillStart:ConvertValue(option["HpCode"], 0)
local mpCode = _SkillStart:ConvertValue(option["MpCode"], 0)
if hpCode > 0 then
	self:Update("HpCode", hpCode)
end
if mpCode > 0 then
	self:Update("mpCode", mpCode)
end
end