return function (self,player,questID,status) 
local questData = _QuestData:GetData(questID)
if questData == nil then
	return 0
end

local checkData = questData["check" .. status]
if checkData == nil then
	return 0
end

local playerQuest = player.PlayerQuest
local pStatus = playerQuest:QuestStatus(questID)

if status == 0 and pStatus == 2 then
	local interval = _GameUtil:ConvertValue(checkData["interval"], -1)
	local dayByDay = _GameUtil:ConvertValue(checkData["dayByDay"], 0)
	local isRepete = interval >= 0 or dayByDay >= 1
	if not isRepete then
		return 0
	end
	
	local lvmax = _GameUtil:ConvertValue(checkData["lvmax"], 0)
	if lvmax > 0 and player.PlayerStats.level > lvmax then
		return 0
	end
	
	if interval >= 0 then
		local time = DateTime.UtcNow
		local nowElapsed = time.Elapsed
		local clearElapsed = playerQuest:ClearTimer(questID)
		
		if clearElapsed + interval * 60 * 1000 > nowElapsed then
			return 0
		end
	end
	if dayByDay > 0 then
		return 0
	end
else
	-- 현재 상태랑 퀘스트 상태가 다르면
	if pStatus ~= status then
		return 0
	end
end

local npcID = 0
for k, v in pairs(checkData) do
	if k == "npc" then
		npcID = v
	elseif k == "job" then
		local job = player.PlayerStats.job
		local check = false
		for _, vv in pairs(v) do
			if vv == 0 then -- 초보자 퀘스트 가능
				check = true
				break
			end
			if job == vv then
				check = true
				break
			end
		end
		if not check then
			return 0
		end
	elseif k == "quest" then
		for _, vv in pairs(v) do
			local id = vv["id"]
			local state = _GameUtil:ConvertValue(vv["state"], 0)
			if playerQuest:QuestStatus(id) ~= state then
				return 0
			end
		end
	elseif k == "lvmax" then
        --local level = player.PlayerStats.level
        --if level > v then
        --    return 0
        --end
	elseif k == "lvmin" or k == "level" then
        local level = player.PlayerStats.level
        if level < v then
            return 0
        end
	elseif k == "infoex" then
		local infoNumber = _GameUtil:ConvertValue(checkData["infoNumber"], questID)
		local data = player.PlayerQuest:QuestInfoData(infoNumber)
		local check = false
		for _, vv in pairs(v) do
			if data == vv then
				check = true
				break
			end
		end
		if not check then
			return 0
		end
	elseif k == "fieldEnter" then
		local mapID = player.CurrentMap.MapInfo.id
		local check = false
		for _, vv in pairs(v) do
			if vv == mapID then
				check = true
				break
			end
		end
		if not check then
			return 0
		end
	elseif k == "item" then
		local pi = player.PlayerInventory
		for _, vv in pairs(v) do
			local id = vv["id"]
			local count = _GameUtil:ConvertValue(vv["count"], 0)
			local quantity = pi:ItemQuantity(id)
			if count <= 0 then
				if quantity > 0 then
					return -1
				end
			else
				if quantity < count then
					return -1
				end
			end
		end
	elseif k == "mob" then
		for kk, vv in pairs(v) do
			local monsterID = vv["id"]
			local count = vv["count"]
			if playerQuest:GetMobKill(questID, kk) < count then
				return -2
			end
		end
	elseif k == "skill" then
		local job = player.PlayerStats.job
		local ps = player.PlayerSkill
		for _, vv in pairs(v) do
			local id = _GameUtil:ConvertValue(vv["id"], -1)
			if id == -1 then
				continue
			end
			local acquire = _GameUtil:ConvertValue(vv["acquire"], -1)
			if acquire == -1 then
				if ps:GetSkillLevel(id) > 0 or ps:GetMasterLevel(id) > 0 then
					return 0
				end
			else
				if not _GameUtil:CheckJobSkill(job, id) then
					return 0
				end
				local gs = _SkillData:GetSkill(id)
				if gs == nil then
					return 0
				end
				local baseSkill = _GameUtil:ConvertValue(gs["baseSkill"], -1)
				if baseSkill >= 0 and ps:GetSkillLevel(id) <= 0 and ps:GetMasterLevel(id) <= 0 then
					return 0
				end
			end
		end
	elseif k == "equipAllNeed" then
		local pi = player.PlayerInventory
		for _, vv in pairs(v) do
			if not pi:HasEquipped(vv) then
				return 0
			end
		end
	elseif k == "subJobFlags" then
		local sub = player.PlayerStats.subJob
		if 2^sub & v == 0 then
			return 0
		end
	elseif k == "endmeso" then
		if player.PlayerInventory:GetMeso() < v then
			return -1
		end
	elseif k == "mbcard" then
		local cards = player.PlayerStats.card
		for _, vv in pairs(v) do
			local id = tonumber(vv["id"])
			local min = _GameUtil:ConvertValue(vv["min"], 0)
			local cardCount = _GameUtil:ConvertValue(cards[tostring(id % 10000)], 0)
			if cardCount < min then
				return 0
			end
		end
	elseif k == "mbmin" then
		local cardCount = _Util:TableKeyLen(player.PlayerStats.card)
		if cardCount < v then
			return 0
		end
	elseif k == "pop" then
		if player.PlayerStats.pop < v then
			return 0
		end		
	--------
	-- 코딩 필요
	elseif k == "partyQuest_S" or k == "questComplete" or k == "buff" or k == "exceptbuff" or k == "equipSelectNeed" then
		return 0
	--------
	elseif k == "pet" or k == "tamingmoblevelmin" or k == "pettamenessmin" then -- 불가능 퀘스트
		return 0
	--------
	elseif k == "infoNumber" then
	elseif k == "start" then
	elseif k == "dayByDay" or k == "interval" then
	elseif k == "startscript" or k == "endscript" then
	elseif k == "normalAutoStart" then
	--------
	else
		log(k .. " / coding / status " .. status)
		return 0
	end
end

return npcID
end