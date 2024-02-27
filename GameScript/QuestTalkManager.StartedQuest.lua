return function (self,questID) 
local questData = _QuestData:GetData(questID)
if questData == nil then
	return
end
if _GameUtil:IsGameMaster(_UserService.LocalPlayer) then
	_MessageLogic:ChatMessage(5, "진행중 : " .. _QuestData:GetName(questID) .. " (" .. questID .. ")")
end

self.questData = questData
self.questID = questID
self.status = 0
self.state = 1
self.questState = 1
self.curState = "stop"

local curState2 = ""

local check0 = questData["check0"]
local checkNpc = check0["npc"]

local check1 = questData["check1"]
local check1Npc = check1["npc"]

local say1 = questData["say1"]
local stop = say1["stop"]
if stop ~= nil then
	if self.id == checkNpc and self.id ~= check1Npc then
		local npc = stop["npc"]
		if npc ~= nil then
			curState2 = "npc"
		end
	else
		local player = _UserService.LocalPlayer
		local checkValue = _QuestManager:CheckStart(player, questID, 1)
		local item = stop["item"]
		local mob = stop["mob"]
		local default = stop["default"]
		
		if item ~= nil and checkValue == -1 then
			curState2 = "item"
		elseif mob ~= nil and checkValue == -2 then
			curState2 = "mob"
		elseif default ~= nil then
			curState2 = "default"
		end
	end
end
self.curState2 = curState2

self:QuestTalkMore(1, -1)
end