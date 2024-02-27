return function (self,hp,maxHp,other) 
if self.Entity == other then
	return
end

local myIndex = self.partyIndex
local on = myIndex > 0 and other.PlayerParty.partyIndex == myIndex

local partyHp = other:GetChildByName("partyHp")
if partyHp == nil then
	partyHp = _SpawnService:SpawnByModelId("model://049c5690-5fe0-4b52-bf82-0ffa5fbde29b", "partyHp", Vector3(0, 0.85, 0), other)
	local order = other.AvatarRendererComponent.OrderInLayer
	partyHp.SpriteRendererComponent.SortingLayer = other.AvatarRendererComponent.SortingLayer
	partyHp.SpriteRendererComponent.OrderInLayer = order == 0 and 3 or order
	partyHp.TransformComponent.Position.z = -0.0001
	local black = partyHp:GetChildByName("Black")
	black.SpriteRendererComponent.SortingLayer = other.AvatarRendererComponent.SortingLayer
	black.SpriteRendererComponent.OrderInLayer = order == 0 and 3 or order
	black.TransformComponent.Position.z = -0.0001
end
if on then	
	local black = partyHp:GetChildByName("Black")
	local per = math.floor(hp / maxHp * 100) / 100
	if per < 0 then
		per = 0
	elseif per > 1 then
		per = 1
	end
	black.TransformComponent.Scale.x = 1 - per
	
	if not partyHp.Enable then
		partyHp:SetEnable(true)
	end
else
	if partyHp.Enable then
		partyHp:SetEnable(false)
	end
end
end