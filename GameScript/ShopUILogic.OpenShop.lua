return function (self,items,npcTable) 
local npcID = npcTable["id"]
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

local npc = self.clone:GetChildByName("LeftTop"):GetChildByName("Npc")
npc.SpriteGUIRendererComponent.ImageRUID = ruid

local grid = self.clone:GetChildByName("LeftBotton")
for key, value in pairs(grid.Children) do
	value:SetEnable(false)
	value:GetChildByName("SpriteA"):SetEnable(false)
end

if items ~= nil then
	--local worldPos = sample.UITransformComponent.WorldPosition
	for key, value in pairs(items) do
		local id = tonumber(value["itemid"])
		_ItemData:LoadSize(id)
	end
	for key, value in pairs(items) do
		local id = tonumber(value["itemid"])
		if not _ItemData:IsItem(id) then
			continue
		end
		local price = tonumber(value["price"])
		local bundle = math.max(1, _Util:ConvertNumber(value["bundle"]))
		local itemInfo = _ItemData:GetItem(id)
		
		local clone = grid:GetChildByName(tostring(key)) 
		if clone == nil then
			clone = _SpawnService:SpawnByEntity(self.sample, tostring(key), Vector3.zero, grid)
			clone:GetChildByName("SpriteA"):SetEnable(false)
		end
		if id < 2000000 then
			bundle = 1
		end
		if bundle > 1 then
			clone:GetChildByName("quantity").TextComponent.Text = "" .. bundle
		else
			clone:GetChildByName("quantity").TextComponent.Text = ""
		end
		local entity = clone:GetChildByName("RUID")
		_ItemData:SetNativeSize(entity, id)
		entity.SpriteGUIRendererComponent.ImageRUID = _GameUtil:EquipRUID(id, itemInfo["ruid"])
		clone:GetChildByName("Name").TextComponent.Text = itemInfo["name"]
		clone:GetChildByName("Price").TextComponent.Text = _Util:ConvertComma(price) .. " 메소"
		clone:GetChildByName("id").TextComponent.Text = "" .. id

		clone:SetEnable(true)
	end
end

self.shopIndex = 0
self.invIndex = 0
self:OpenUI()
self:UpdateInventory() -- 순서 중요
self:UpdateMeso(nil)
self:UpdateCostume()
end