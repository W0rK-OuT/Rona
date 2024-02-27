return function (self,player,combo) 
local comboEntity = player:GetChildByName("combo")
if comboEntity == nil then
	comboEntity = _SpawnService:SpawnByModelId("model://33b36882-b907-49d4-8a30-41eb88238ffa", "combo", Vector3(0, 0.4, -1), player)
end
comboEntity.ComboInfo:UpdateCount(combo)
end