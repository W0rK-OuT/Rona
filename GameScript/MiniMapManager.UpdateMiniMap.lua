return function (self,mapID) 
self.init = false
if mapID == -1 then
	self.main:SetEnable(false)
	return
end

local mapType = math.floor(mapID / 100000000)
local miniData = _Util:FindTable_Value("minimap" .. mapType, "id", "" .. mapID)
if miniData == nil then
	self.main:SetEnable(false)
	return
end

local ruid = miniData["ruid"]
if _UtilLogic:IsNilorEmptyString(ruid) then
	self.main:SetEnable(false)
	return
end
self.init = true

local canvosX = tonumber(miniData["canvasX"]) * 2
local canvosY = tonumber(miniData["canvasY"]) * 2
local centerX = tonumber(miniData["centerX"])
local centerY = tonumber(miniData["centerY"])
local fieldX = tonumber(miniData["fieldX"])
local fieldY = tonumber(miniData["fieldY"])

local names = _MapData:GetMapName(mapID)
local street = _GameUtil:ConvertString(names["streetName"], "")
local mapName = _GameUtil:ConvertString(names["mapName"], "")

local textName = street .. "\n" .. mapName
local textCom = self.main:GetChildByName("Name").TextComponent
textCom.Text = textName

local calSizeX = textCom:GetPreferredWidth(textName)
if self.main:GetChildByName("Icon").Enable then
	calSizeX += 100
end
local sizeX = math.max(canvosX + 20, math.ceil(calSizeX + 10))
if sizeX > 560 then
	sizeX = 444
end

local maxSizeX = sizeX - 20
local maxSizeY = math.min(230, canvosY)

local mianTrans = self.main.UITransformComponent
mianTrans.RectSize.x = sizeX
mianTrans.RectSize.y = 150 + maxSizeY

self.main:GetChildByName("MidTop").SpriteGUIRendererComponent.LocalScale.x = sizeX - 24
self.main:GetChildByName("MidBotton").SpriteGUIRendererComponent.LocalScale.x = sizeX - 24

self.main:GetChildByName("LeftCenter").SpriteGUIRendererComponent.LocalScale.y = maxSizeY - 4
self.main:GetChildByName("RightCenter").SpriteGUIRendererComponent.LocalScale.y = maxSizeY - 4

local infoRect = self.main:GetChildByName("Info").UITransformComponent.RectSize
infoRect.x = maxSizeX
infoRect.y = maxSizeY

self.miniInfo.SpriteGUIRendererComponent.ImageRUID = ruid
self.miniInfo.UITransformComponent.RectSize.x = canvosX
self.miniInfo.UITransformComponent.RectSize.y = canvosY

local miniCom = self.main.MiniMapComponent
miniCom.canvosX = canvosX
miniCom.canvosY = canvosY
miniCom.centerX = centerX
miniCom.centerY = centerY
miniCom.fieldX = fieldX
miniCom.fieldY = fieldY
miniCom.maxSizeX = maxSizeX
miniCom.maxSizeY = maxSizeY

if canvosX < maxSizeX then
	miniCom.minX = 0
	miniCom.maxX = 0
else
	miniCom.minX = -(canvosX - maxSizeX) / 2
	miniCom.maxX = (canvosX - maxSizeX) / 2
end
if canvosY < maxSizeY then
	miniCom.minY = 0
	miniCom.maxY = 0
else
	miniCom.minY = -(canvosY - maxSizeY) / 2
	miniCom.maxY = (canvosY - maxSizeY) / 2
end
for _, v in pairs(self.static.Children) do
	v:Destroy()
end

local oneX = (fieldX / 2 - centerX) / 100
local oneY = (fieldY / 2 - centerY) / 100

local map = _UserService.LocalPlayer.CurrentMap
local tables = {
	{"portals", "portal", "a001f83f278c4ece9e2a1e7411228f41"},
	{"npcs", "npc", "a4599b2dcb5e443fabcb515f94c15406"},
}
for _, nTable in pairs(tables) do
	local child = map:GetChildByName(nTable[1])
	if child ~= nil then
		for k, v in pairs(child.Children) do
			if v.Name ~= "mysticDoor" and v.Enable and v.Visible and v.SpriteRendererComponent.Color.a == 1 then
				local spawn
				if nTable[2] == "npc" then
					if v.NpcInfo.miniHide then
						continue
					end
					spawn = _SpawnService:SpawnByModelId("model://d0ba5491-ef9a-4cc9-928d-800637a118f1", nTable[2], Vector3.zero, self.static)
					spawn.miniNpc.id = v.NpcInfo.id
				else
					spawn = _SpawnService:SpawnByModelId("model://d99096db-d79a-45f6-9077-4d7e8b016912", nTable[2], Vector3.zero, self.static)
				end
				spawn.SpriteGUIRendererComponent.ImageRUID = nTable[3]
				
				local pos = v.TransformComponent.WorldPosition
				local objX = oneX - pos.x
				local objY = oneY - pos.y
				
				local miniX = objX * 100 / fieldX * canvosX
				local miniY = objY * 100 / fieldY * canvosY
				
				spawn.UITransformComponent.anchoredPosition.x = -miniX
				spawn.UITransformComponent.anchoredPosition.y = -miniY
			end
		end
	end
end

if self.first then
	self.main:SetEnable(true)
end
end