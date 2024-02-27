return function (self) 
local mapID = _UserService.LocalPlayer.CurrentMap.MapInfo.id
local findMap = self:FindWorldMapByID(mapID)
if findMap == nil then
	_MessageLogic:DropMessage("현재 월드맵 보기가\n지원되지 않는 곳에 있습니다.")
	return
end

self.main:GetChildByName("map").SpriteGUIRendererComponent.ImageRUID = self:FindRuidByName(findMap)
local objects = self.main:GetChildByName("Objects")
for k, v in pairs(objects.Children) do
	v:Destroy()
end
local imgs = {"1c03a3938c1d445a93bca57c47887454", "a3cc0898eaa34f4b9d2d45b1c0b5f1cb", "d568b8a82ff3459a84a630f0c204b563", "2f6c8f71f747479db76c3cd7906d2a95"}

local dataTable = _Util:FindTable_All(findMap)
for k, v in pairs(dataTable) do
	local type = tonumber(v["type"])
	local x = tonumber(v["x"])
	local y = tonumber(v["y"])
	local info = v["info"]
	
	local entityName
	if not _UtilLogic:IsNilorEmptyString(info) then
		local check = false
		local spl = _UtilLogic:Split(info, ",")
		for _, mapName in pairs(spl) do
			if tonumber(mapName) == mapID then
				check = true
				break
			end
		end
		entityName = spl[1]
		if check then
			local player = self.player
			--player.SpriteGUIRendererComponent.ImageRUID = "4e53baa9f53c400a9248c629d24fedfa"
			local playerPos = player.UITransformComponent.anchoredPosition
			playerPos.x = x * 2
			playerPos.y = -y * 2
			self.player:SetEnable(true)
		end
	end
	if _UtilLogic:IsNilorEmptyString(entityName) then
		entityName = ""
	end
	
	local clone = _SpawnService:SpawnByEntity(self.sample, entityName, Vector3.zero, objects)
	clone.SpriteGUIRendererComponent.ImageRUID = imgs[type + 1]
	local pos = clone.UITransformComponent.anchoredPosition
	pos.x = x * 2
	pos.y = -y * 2
end

self.lastWorldMapName = findMap
self.main:SetEnable(true)
_UIManager:Add(self.main)
_SoundService:PlaySound("78e0569463004fd6aeb113b2c8e6222d", 1)
end