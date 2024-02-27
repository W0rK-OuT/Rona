return function (self) 
local modelName = self.Entity.Model.Name
local split = _UtilLogic:Split(modelName, "_")
local nameTag = self.Entity.NameTagComponent

self.id = tonumber(split[1])
self.name = split[2]

if self:IsClient() then
    ---@type Sprite
    local spr
    local bool, action = self.Entity.StateAnimationComponent.ActionSheet:TryGetValue("stand")
    
    if self.isSprite then
        spr = _ResourceService:LoadSpriteAndWait(action)
    else
        local ani = _ResourceService:LoadAnimationClipAndWait(action)
        spr = ani.Frames:ToTable()[1].FrameSprite
    end
    
    self.sizeX = spr.Width
    self.sizeY = spr.Height
	
	local sortLayer = self.Entity.SpriteRendererComponent.SortingLayer
	local orderLayer = self.Entity.SpriteRendererComponent.OrderInLayer
	
	local balloon = _SpawnService:SpawnByModelId("model://b9c6f50c-2e09-49f0-aa21-a71877944335", "QuestBalloon", Vector3(0, self.sizeY * 0.01 - 0.07, -1), self.Entity)
	balloon:SetEnable(false)
	balloon.SpriteRendererComponent.SortingLayer = sortLayer
	balloon.SpriteRendererComponent.OrderInLayer = orderLayer
	local scaleX = self.Entity.TransformComponent.Scale.x
	balloon.TransformComponent.Position.x *= scaleX
	balloon.TransformComponent.Scale.x = scaleX
	
	local tagName = split[2]
	local npcInfoData = _NpcData:NpcInfo(self.id)
	if npcInfoData ~= nil then
		local func = npcInfoData["func"]
		if not _UtilLogic:IsNilorEmptyString(func) then
			local funcEntity = _SpawnService:SpawnByModelId("model://e4a2e96f-7b38-4aa4-9d98-e1514a2380f2", "Func", Vector3(0, -0.25, 0), self.Entity)
			local tag = funcEntity.NameTagComponent
			tag.FontSize = self.nameTagSize
			tag.FontColor = Color.yellow
			tag.Name = func
			tag.Bold = true
			funcEntity.SpriteRendererComponent.SortingLayer = sortLayer
			funcEntity.SpriteRendererComponent.OrderInLayer = orderLayer
		end
		if self.name ~= npcInfoData["name"] then
			tagName = npcInfoData["name"]
			if self.name ~= "n" then
				log(self.id .. " 설정한 이름이 다르다")
			end
			self.name = tagName
		end
	end
	
	nameTag.FontSize = self.nameTagSize
	nameTag.FontColor = Color.yellow
	nameTag.Name = tagName
	nameTag.Bold = true
	
	local info = _NpcData:GetInfo(self.id)
	local hideName = _GameUtil:ConvertValue(info["hideName"], 0)
	if hideName > 0 then
		nameTag.Enable = false
	end
	
	self.init = true
	_QuestManager:UpdateNpc(self.Entity)
	
	local npcDataInfo = npcInfoData["info"]
	
	--dcLeft=-75,dcTop=-92,dcRight=85,dcBottom=0

	local dcTop = _GameUtil:ConvertValue(npcDataInfo["dcTop"], 0)
	local dcBottom = _GameUtil:ConvertValue(npcDataInfo["dcBottom"], 0)
	local dcLeft = _GameUtil:ConvertValue(npcDataInfo["dcLeft"], 0)
	local dcRight = _GameUtil:ConvertValue(npcDataInfo["dcRight"], 0)
	if dcLeft ~= 0 or dcTop ~= 0 or dcRight ~= 0 or dcBottom ~= 0 then
		if self.Entity.TouchReceiveComponent then
			self.Entity.TouchReceiveComponent.Enable = false
		end
		
		local touchUI = _SpawnService:SpawnByModelId("model://9f504d11-487b-46a6-8687-de033411e620", "touchUI", Vector3.zero, self.Entity)
		touchUI.SpriteGUIRendererComponent.SortingLayer = sortLayer
		touchUI.SpriteGUIRendererComponent.OrderInLayer = orderLayer
		
		local uiTrans = touchUI.UITransformComponent
		uiTrans.RectSize.x = (dcRight - dcLeft) * 2.2
		uiTrans.RectSize.y = -(dcTop - dcBottom) * 2.2
		uiTrans.Position.x = (dcRight + dcLeft) / 2 * 0.01
		uiTrans.Position.y = -dcBottom * 0.01
	else
		if self.Entity.TouchReceiveComponent and not self.Entity.TouchReceiveComponent.AutoFitToSize then
			local func = function()
				self.Entity.TouchReceiveComponent.TouchArea = Vector2(0.4, 0.4)
			end
			_TimerService:SetTimerOnce(func, 1)
		end
	end
else
	self.init = true
end
end