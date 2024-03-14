return function (self) 
if isvalid(self.pet) then
	return
end
local player = _UserService.LocalPlayer
local map = player.CurrentMap 
local pet = _SpawnService:SpawnByModelId("model://bf7c7dd4-d888-4a14-a5e0-178ed4b2a8ba", "pet", Vector3.zero, map)
self.pet = pet

local order = player.AvatarRendererComponent.OrderInLayer
pet.SpriteRendererComponent.OrderInLayer = (order == 0 and 3 or order) + 1

if player == _UserService.LocalPlayer then
	pet.TriggerComponent.Enable = true
	
    --    pet.TriggerComponent.Enable = true
    --    self:UpdateAlpha()
    --    self:UpdatePet()
end
end