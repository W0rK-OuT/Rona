return function (self,msg,textType,npcTable) 
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

local clone = self.main

if textType > 0 then
	self:TextRemove()
end
local grid = clone:GetChildByName("TextGrid")

if textType == 5 then
	local selTable = _TextManager:MapleQuestSelect(msg)
	msg = _UtilLogic:TrimEnd(selTable[1], "\n")
	local selects = selTable[2]
	
	for k, v in pairs(selects) do
		local spawn = _SpawnService:SpawnByEntity(_QuestTalkManager.select, "sel" .. (v[1] - 1), Vector3.zero, grid)
		local textCom = spawn.TextComponent
		
		local selStr = _TextManager:MapleStr(v[2])
		
		textCom.Text = "<color=navy>" .. selStr .. "</color>"
		--local rect = spawn.UITransformComponent.RectSize
		--rect.y = math.max(rect.y, textCom:GetPreferredHeight(selStr, rect.x))
	end
end
grid:GetChildByName("NpcText").TextComponent.Text = _TextManager:MapleStr(msg)

clone:GetChildByName("NpcRUID").SpriteGUIRendererComponent.ImageRUID = ruid
clone:GetChildByName("NpcBack"):GetChildByName("NpcName").TextComponent.Text = name

local nTable = {"Ok", "Next", "Prev", "Yes", "No", "Accept", "Decline", "NumText", "StrText"}
for _, value in pairs(nTable) do
	clone:GetChildByName(value).Visible = false
end
if textType == 1 then
	clone:GetChildByName("Ok").Visible = true
elseif textType == 2 then
	clone:GetChildByName("Next").Visible = true
elseif textType == 3 then
	clone:GetChildByName("Next").Visible = true
	clone:GetChildByName("Prev").Visible = true
elseif textType == 4 then
	clone:GetChildByName("Prev").Visible = true
	clone:GetChildByName("Ok").Visible = true
elseif textType == 5 then
	-- simple
elseif textType == 6 then
	clone:GetChildByName("Yes").Visible = true
	clone:GetChildByName("No").Visible = true
elseif textType == 7 then
	clone:GetChildByName("Accept").Visible = true
	clone:GetChildByName("Decline").Visible = true
elseif textType == 8 then
	--npcTable["default"]
	self.min = npcTable["min"]
	self.max = npcTable["max"]
	local numEntity = self.main:GetChildByName("NumText")
	local spawn = _SpawnService:SpawnByEntity(numEntity, "NumText", Vector3.zero, grid)
	spawn.TextInputComponent.Text = npcTable["default"]
	
	if Environment:IsPCPlatform() then
		spawn.TextInputComponent:ActivateInputField()
	end
elseif textType == 9 then
	local strEntity = self.main:GetChildByName("StrText")
	local spawn = _SpawnService:SpawnByEntity(strEntity, "StrText", Vector3.zero, grid)
	spawn.TextInputComponent.Text = ""
	
	if Environment:IsPCPlatform() then
		spawn.TextInputComponent:ActivateInputField()
	end
end

_SpawnService:SpawnByEntity(_QuestTalkManager.empty, "empty", Vector3.zero, grid)
self:OpenUI()
end