return function (self,player,questID) 
local quest = self.checkStart[questID]
if quest == nil then
	return false
end

if _Util:ConvertNumber(player.PlayerQuest.quest[questID]) ~= 0 then
	return false
end

local checkNpc = quest["npc"]
if checkNpc == nil then
	return false
end

local checkQuest = quest["quest"]
if checkQuest ~= nil then
	local quests = _UtilLogic:Split(checkQuest, ",")
	for _, questStr in pairs(quests) do
		local qStr = _UtilLogic:Split(questStr, "=")
		local id = tonumber(qStr[1])
		local state = tonumber(qStr[2])
		if _Util:ConvertNumber(player.PlayerQuest.quest[id]) ~= state then
			return false
		end
	end
end

local checkInfoex = quest["infoex"]
if checkInfoex ~= nil then
	local infoCheck = false
	local quests = _UtilLogic:Split(checkInfoex, ",")
	for _, questStr in pairs(quests) do
		local qStr = _UtilLogic:Split(questStr, "=")
		local id = tonumber(qStr[1])
		local state = tonumber(qStr[2])
		local questData = player.PlayerQuest.quest[id]
		if questData == state then -- 하나라도 맞으면 OK
			infoCheck = true
			break
		end
	end
	if not infoCheck then
		return false
	end
end

local checkItem = quest["item"]
if checkItem ~= nil then
	local quests = _UtilLogic:Split(checkItem, ",")
	for _, questStr in pairs(quests) do
		local qStr = _UtilLogic:Split(questStr, "=")
		local id = tonumber(qStr[1])
		local state = tonumber(qStr[2])
		local count = player.PlayerInventory:ItemQuantity(id)
		if state == 0 and count > 0 then
			return false
		end
		if count < state then
			return false
		end
	end
end

local checkJob = quest["job"]
if checkJob ~= nil then
	local jobCheck = false
	local quests = _UtilLogic:Split(checkJob, ",")
	local job = player.PlayerStats.job
	for _, jobValue in pairs(quests) do
		if job == tonumber(jobValue) then -- 하나라도 맞으면 OK
			jobCheck = true
			break
		end
	end
	if not jobCheck then
		return false
	end
end

local checkSKill = quest["skill"]
if checkSKill ~= nil then
	local quests = _UtilLogic:Split(checkSKill, ",")
	for _, questStr in pairs(quests) do
		local qStr = _UtilLogic:Split(questStr, "=")
		local id = tonumber(qStr[1])
		local state = tonumber(qStr[2])
		local skillLevel = player.PlayerSkill:GetSkillLevel(id)
		if state == -1 and skillLevel ~= 0 then
			return false
		end
		if skillLevel < state then
			return false
		end
	end
end

local playerLevel = player.PlayerStats.level
local checkLvMin = quest["lvmin"]
if checkLvMin ~= nil then
	if playerLevel < tonumber(checkLvMin) then
		return false
	end
end

local checkLvMax = quest["lvmax"]
if checkLvMax ~= nil then
	if playerLevel > tonumber(checkLvMax) then
		return false
	end
end

local checkDay = quest["dayByDay"]
if checkDay ~= nil then
	-- 코딩
	return false
end

local checkInterval = quest["interval"]
if checkInterval ~= nil then
	-- 코딩
	return false
end

local checkStart = quest["start"]
if checkStart ~= nil then
	-- 코딩
	return false
end

local checkEnd = quest["end"]
if checkEnd ~= nil then
	-- 코딩
	return false
end

local playerSub = player.PlayerStats.subJob
local checkSub = quest["subJobFlags"]
if checkSub ~= nil then
	if playerSub < tonumber(checkSub) then
		return false
	end
end

local playerPop = player.PlayerStats.pop
local checkPop = quest["pop"]
if checkPop ~= nil then
	if playerPop < tonumber(checkPop) then
		return false
	end
end

local checkPetTam = quest["pettamenessmin"]
if checkPetTam ~= nil then
	-- 코딩
	return false
end

local checkPremium = quest["premium"] -- 피시방
if checkPremium ~= nil then
	return false
end

local checkQuestComplete = quest["questComplete"]
if checkQuestComplete ~= nil then
	if self:QuestCompleteCount(player) < tonumber(checkQuestComplete) then
		return false
	end
end

-- normalAutoStart

local checkMbmin = quest["mbmin"]
if checkMbmin ~= nil then
	-- 카드 코딩
	return false
end

local checkTamingmoblevelmin = quest["tamingmoblevelmin"]
if checkTamingmoblevelmin ~= nil then
	-- 라이딩 코딩
	return false
end

local checkPartyQuestS = quest["partyQuest_S"]
if checkPartyQuestS ~= nil then
	-- 파퀘 S랭크 코딩
	return false
end

local checkMorph = quest["morph"]
if checkMorph ~= nil then
	-- 변신 코딩
	return false
end

local checkExceptbuff = quest["exceptbuff"]
if checkExceptbuff ~= nil then
	-- 버프 코딩
	return false
end

local checkBuff = quest["buff"]
if checkBuff ~= nil then
	-- 버프 코딩
	return false
end

local checkFieldEnter = quest["fieldEnter"]
if checkFieldEnter ~= nil then
	local fieldCheck = false
	local quests = _UtilLogic:Split(checkFieldEnter, ",")
	local mapID = player.CurrentMap.MapInfo.id
	for _, nValue in pairs(quests) do
		if mapID == nValue then -- 하나라도 맞으면 OK
			fieldCheck = true
			break
		end
	end
	if not fieldCheck then
		return false
	end
end

local checkEquipAllNeed = quest["equipAllNeed"]
if checkEquipAllNeed ~= nil then
	local quests = _UtilLogic:Split(checkEquipAllNeed, ",")
	for _, nValue in pairs(quests) do
		if not player.PlayerInventory:HasEquipped(tonumber(nValue)) then
			return false
		end
	end
end

local checkEquipSelectNeed = quest["equipSelectNeed"]
if checkEquipSelectNeed ~= nil then
	local eqselCheck = false
	local quests = _UtilLogic:Split(checkEquipSelectNeed, ",")
	for _, nValue in pairs(quests) do
		if player.PlayerInventory:HasEquipped(tonumber(nValue)) then
			eqselCheck = true
			break
		end
	end
	if not eqselCheck then
		return false
	end
end

local checkPets = quest["pet"]
if checkPets ~= nil then
	-- 펫 코딩
	return false
end

local checkMbcard = quest["mbcard"]
if checkMbcard ~= nil then
	-- 카드 코딩
	return false
end

return true
end