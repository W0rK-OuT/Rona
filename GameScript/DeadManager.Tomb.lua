return function (self,player,isDead) 
local tomb = player:GetChildByName("tomb")
if tomb == nil then
	tomb = _SpawnService:SpawnByModelId("model://88b98f67-609f-40e6-8e8d-73d1b63b5282", "tomb", Vector3(0, 0, 0.999), player)
	tomb:SetEnable(false)
end

if isDead then
	tomb.SpriteRendererComponent.SortingLayer = player.AvatarRendererComponent.SortingLayer
	tomb.SpriteRendererComponent.OrderInLayer = player.AvatarRendererComponent.OrderInLayer
	tomb.SpriteRendererComponent.SpriteRUID = ""
	tomb.SpriteRendererComponent.SpriteRUID = "728c238517ef4aa596974358de21da15"
	tomb.TombInfo:Start()
	tomb:SetEnable(true)
else
	tomb:SetEnable(false)
end
end