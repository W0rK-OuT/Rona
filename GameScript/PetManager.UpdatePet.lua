return function (self) 
local pet = self.pet
if isvalid(pet) then
	local value = _GameUtil:ConvertValue(_UserService.LocalPlayer.PlayerSetting.petOption["Pet"], 0)
	pet.PetInfo:ChangeCode(value)
end
end