return function (self) 
--check [mob, equipAllNeed, infoNumber, tamingmoblevelmin, infoex, exceptbuff, quest, fieldEnter, dayByDay, pettamenessmin, pop, premium, skill, subJobFlags, end, questComplete, startscript, equipSelectNeed, pet, npc, lvmin, item, level, start, worldmin, normalAutoStart, endscript, endmeso, lvmax, mbmin, mbcard, interval, partyQuest_S, worldmax, job, morph, buff]

--info parent, selectedMob, selectedSkillID, type, demandSummary, showEffect, medalCategory, sortkey, viewMedalItem, showLayerTag, autoAccept, autoCancel, order, area, summary, autoComplete, autoStart, dailyPlayTime, 0, timeLimit, 1, 2, timerUI, rewardSummary, name, autoPreComplete, timeLimit2, oneShot

--say [no, yes, 0, 1, 2, 3, 4, 5, 6, 7, 8, ask, stop, lost]

for k, v in pairs(_G) do
	if _UtilLogic:Contains(k, "_Q_") then
		local num = tonumber(_UtilLogic:SubString(k, 4))
		if num == nil then
			continue
		end
		self.quests[num] = v
	end
end

for questID, _ in pairs(self.quests) do
	local nData = self:GetData(questID)
	if nData == nil then
		continue
	end
	local check0 = nData["check0"]
	if check0 == nil then
		continue
	end
	local check1 = nData["check1"]
	if check1 == nil then
		continue
	end
	
	local npc = _SkillStart:ConvertValue(check0["npc"], 0)
	self.npcQuest[npc] = 1 + _SkillStart:ConvertValue(self.npcQuest[npc], 0)
	
	local mob = check1["mob"]
	if mob ~= nil then
		self.mobQuest[questID] = mob
	end
	
	if self:IsClient() then
		local item0 = check0["item"]
		if item0 ~= nil then
			self.itemQuest0[questID] = item0
		end
		
		local item1 = check1["item"]
		if item1 ~= nil then
			self.itemQuest1[questID] = item1
		end
		
		local endmeso = check1["endmeso"]
		if endmeso ~= nil then
			self.mesoQuest[questID] = true
		end
		
        --local fieldEnter0 = check0["fieldEnter"]
        --local fieldEnter1 = check1["fieldEnter"]
        --if fieldEnter0 ~= nil or fieldEnter1 then
        --    self.mapQuest[questID] = true
        --end
	end
end
end