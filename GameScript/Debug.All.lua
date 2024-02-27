return function (self,entity) 
for k, v in pairs(entity.Children) do
	self:All(v)
end
if entity.TriggerComponent ~= nil then
	local clone = entity:GetChildByName("HitBoxUI")
	if clone == nil then
		clone = _SpawnService:SpawnByModelId("model://43635326-d16b-4f57-8d38-ca594e88c9a1", "HitBoxUI", Vector3.zero, entity)
	end
	local tri = entity.TriggerComponent
	local ui = clone.UITransformComponent
	--spawn.UITransformComponent.pos tri.ColliderOffset.x
	ui.Position.x = tri.ColliderOffset.x
	ui.Position.y = tri.ColliderOffset.y
	ui.RectSize.x = tri.BoxSize.x * 220
	ui.RectSize.y = tri.BoxSize.y * 220
elseif entity.NpcInfo ~= nil then
	local touchUI = entity:GetChildByName("touchUI")
	if touchUI ~= nil then
		touchUI.SpriteGUIRendererComponent.Color.a = 0.6
	end
end
end