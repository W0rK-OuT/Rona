return function (self) 
local player = _UserService.LocalPlayer
local pet = player:GetChildByName("pet")
if pet == nil then
	pet = _SpawnService:SpawnByModelId("model://bf7c7dd4-d888-4a14-a5e0-178ed4b2a8ba", "pet", Vector3.zero, player)
	
	local order = player.AvatarRendererComponent.OrderInLayer
	pet.SpriteRendererComponent.OrderInLayer = (order == 0 and 3 or order) + 1
	
	if player == _UserService.LocalPlayer then
		pet.TriggerComponent.Enable = true
	end
	
    --if player == _UserService.LocalPlayer then
    --    pet.TriggerComponent.Enable = true
    --    self:UpdateAlpha()
    --    self:UpdatePet()
    --end
end
end