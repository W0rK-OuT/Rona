return function (self,name) 
local num = tonumber(name)
if num == nil then
	return
end

local player = _UserService.LocalPlayer
local ruid = self:GetString(num)
local deco = player:GetChildByName("deco")
if deco == nil then
	deco = _SpawnService:SpawnByModelId("model://3568125b-e614-4b86-9f3a-f40db6009ef8", "deco", Vector3(0, -0.35, -1), player)
	deco.SpriteRendererComponent.SortingLayer = player.AvatarRendererComponent.SortingLayer
	deco.SpriteRendererComponent.OrderInLayer = player.AvatarRendererComponent.OrderInLayer
end
if _UtilLogic:IsNilorEmptyString(ruid) then
	deco.SpriteRendererComponent.SpriteRUID = ""
	deco:SetEnable(false)
else
	deco.SpriteRendererComponent.SpriteRUID = ruid
	deco:SetEnable(true)
end
end