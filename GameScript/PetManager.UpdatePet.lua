return function (self) 
local pet = _UserService.LocalPlayer:GetChildByName("pet")
if pet ~= nil then
	local value = _GameUtil:ConvertValue(_UserService.LocalPlayer.PlayerSetting.petOption["Pet"], 0)
	pet.PetInfo:ChangeCode(value)
end
end