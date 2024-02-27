return function (self,npcEntity) 
local npcInfo = npcEntity.NpcInfo
if not npcInfo.init then
	return
end
local balloon = npcEntity:GetChildByName("QuestBalloon")
if balloon == nil then
	return
end
balloon.TransformComponent.Scale.x = npcEntity.TransformComponent.Scale.x
balloon:SetEnable(true)

local player = _UserService.LocalPlayer
local playerQuest = player.PlayerQuest

for questID, questNpc in pairs(self.possibleQuest) do
	if npcInfo.id == questNpc then
		balloon.SpriteRendererComponent.SpriteRUID = "7cbc3c0f8d92406893968e2c0422c4c8" -- 완료
		return
	end
end

for questID, questNpcs in pairs(self.startedQuest) do
	local npc0 = questNpcs[1]
	local npc1 = questNpcs[2]
	if npcInfo.id == npc0 or npcInfo.id == npc1 then
		balloon.SpriteRendererComponent.SpriteRUID = "170a0ae9ccfd4233b2029832dd34b886" -- 진행
		return
	end
end

for questID, questNpc in pairs(self.canStartQuest) do
	if npcInfo.id == questNpc then
		balloon.SpriteRendererComponent.SpriteRUID = "d404f0995121497c8185b0473619b9bc" -- 전구
		return
	end
end

balloon:SetEnable(false)
end