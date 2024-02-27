return function (self,npcEntity) 
local player = _UserService.LocalPlayer
local npcTalk = player.PlayerNpcTalk
if npcTalk.dispose then
	return
end
if _QuestTalkManager.main.Enable then
	return
end

local info = npcEntity.NpcInfo

local npcInfo = _NpcData:GetInfo(info.id)
if npcInfo["trunkPut"] ~= nil then
	_StorageManager:OpenUI()
	return
end

if _ShopData:IsShop(info.id) then
	if _GameUtil:IsGameMaster(player) then
		_MessageLogic:ChatMessage(6, info.id .. " touch shop")
	end
	npcTalk:TouchShop(npcEntity)
	return
end

if _QuestTalkManager:TouchNpc(npcEntity) then
	return
end
_QuestTalkManager:DisposeQuest()

-- 엔피시 정보 script 확인, 퀘스트 확인, 스크립트 열기
if _GameUtil:IsGameMaster(player) then
	_MessageLogic:ChatMessage(6, info.id .. " touch npc")
end
npcTalk:TouchNpc(npcEntity)
end