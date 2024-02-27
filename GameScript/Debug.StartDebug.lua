return function (self) 
local player = _UserService.LocalPlayer
local clone = player:GetChildByName("HitBoxUI")
if clone == nil then
	clone = _SpawnService:SpawnByModelId("model://43635326-d16b-4f57-8d38-ca594e88c9a1", "HitBoxUI", Vector3.zero, player)
end
local tri = player.TriggerComponent
local ui = clone.UITransformComponent
ui.Position.x = tri.ColliderOffset.x
ui.Position.y = tri.ColliderOffset.y
ui.RectSize.x = tri.BoxSize.x * 220
ui.RectSize.y = tri.BoxSize.y * 220

self:All(player.CurrentMap)
end