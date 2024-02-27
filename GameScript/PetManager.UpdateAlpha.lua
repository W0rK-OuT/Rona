return function (self) 
local pet = _UserService.LocalPlayer:GetChildByName("pet")
if pet ~= nil then
	local value = _GameUtil:ConvertValue(_UserService.LocalPlayer.PlayerSetting.petOption["Alpha"], 100)
	pet.SpriteRendererComponent.Color.a = value / 100
end
end