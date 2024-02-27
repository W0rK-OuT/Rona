return function (self,npcID) 
local name = _NpcData:NpcInfo(npcID)["name"]

local findModel = _EntryService:GetModelIdByName(_GameUtil:CodeConvert(npcID) .. "_" .. name)
if findModel == nil then
	findModel = _EntryService:GetModelIdByName(_GameUtil:CodeConvert(npcID) .. "_n")
end

local ruid = ""

---@type Entity
local npcEntity
if findModel ~= nil then
	npcEntity = _SpawnService:SpawnByModelId(findModel, "dummy", Vector3(99999, 99999, 0), _UserService.LocalPlayer.CurrentMap)
	if npcEntity ~= nil then
		ruid = npcEntity.SpriteRendererComponent.SpriteRUID
		npcEntity:Destroy()
	end
end
return ruid
end