return function (self,mode,selection) 
if self.nextDispose then
	self:DisposeQuest()
	return true
end

if mode == 1 then
	self.status = self.status + 1
else
	self.status = self.status - 1
end
local status = self.status
if status == 0 then
	local player = _UserService.LocalPlayer
	local playerQuest = player.PlayerQuest
	
	local comCount = 0
	for k, v in pairs(_QuestManager.completeQuest) do
		if v == self.id then
			comCount += 1
		end
	end
	
	local npcStr = _NpcData:NpcInfo(self.id)
	local questTalk = npcStr[comCount == _QuestData.npcQuest[self.id] and "d1" or "d0"]
	local msg = ""
	if questTalk ~= nil then
		msg = msg .. questTalk
	end
	
	local totalCount = 0
	local checkOk = true
	local grid = self.main:GetChildByName("TextGrid")
	----
	local questCount = {}
	for quest, npc in pairs(_QuestManager.canStartQuest) do
		if self.id == npc then
			table.insert(questCount, quest)
		end
	end
	for quest, _ in pairs(_QuestManager.completeQuest) do
		if self.id == _QuestManager:CheckStart(player, quest, 0) then
			table.insert(questCount, quest)
		end
	end
	totalCount += #questCount
	---- 시작가능
	if totalCount > 0 then
		checkOk = false
		_SpawnService:SpawnByEntity(self.questStart, "start", Vector3.zero, grid)
		--msg = msg .. "\n\n<color=brown>수행 가능한 퀘스트</color>"
	end
	for key, value in pairs(questCount) do
		local select = _SpawnService:SpawnByEntity(self.select, "S0-" .. value, Vector3.zero, grid)
		select.TextComponent.Text = "<color=navy>" .. _QuestData:GetName(value) .. "</color>"
	end
	----
	local startedCount = {}
	local possibleCount = {}
	for quest, npcs in pairs(_QuestManager.startedQuest) do
		local npc0 = npcs[1]
		local npc1 = npcs[2]
		if self.id == _QuestManager:CheckStart(player, quest, 1) then
			table.insert(possibleCount, quest)
		elseif self.id == npc0 or self.id == npc1 then
			table.insert(startedCount, quest)
		end
	end
	---- 진행중
	local totalStartedCount = #startedCount
	totalCount += totalStartedCount
	if totalStartedCount > 0 then
		checkOk = false
		_SpawnService:SpawnByEntity(self.questStarted, "started", Vector3.zero, grid)
	end
	for key, value in pairs(startedCount) do
		local select = _SpawnService:SpawnByEntity(self.select, "S1-" .. value, Vector3.zero, grid)
		select.TextComponent.Text = "<color=navy>" .. _QuestData:GetName(value) .. " (진행중)</color>"
	end
	---- 완료
	local totalPossibleCount = #possibleCount
	totalCount += totalPossibleCount
	if totalPossibleCount > 0 then
		checkOk = false
		_SpawnService:SpawnByEntity(self.questEnd, "end", Vector3.zero, grid)
	end
	for key, value in pairs(possibleCount) do
		local select = _SpawnService:SpawnByEntity(self.select, "S2-" .. value, Vector3.zero, grid)
		select.TextComponent.Text = "<color=navy>" .. _QuestData:GetName(value) .. " (완료가능)</color>"
	end
	----------------------------
	local npcInfo = _NpcData:GetInfo(self.id)
	
	if not _UtilLogic:IsNilorEmptyString(npcInfo["script"]) then
		checkOk = false
		_SpawnService:SpawnByEntity(self.etc, "ETC", Vector3.zero, grid)
		local select = _SpawnService:SpawnByEntity(self.select, "script", Vector3.zero, grid)
		select.TextComponent.Text = "<color=navy>" .. npcInfo["script"] .. "</color>"
		
		if totalCount == 0 then
			return false
		end
	else
		if totalCount == 0 and _UtilLogic:IsNilorEmptyString(questTalk) then
			return false
		end
	end

	if checkOk then
		self:SendOk(msg)
	else
		self:SendBase(msg)
	end
else
	local questData = self.questData
	if questData == nil then
		self:DisposeQuest()
		return
	end
	local say = questData["say" .. self.state]
	if say == nil then
		self:AskAcceptDecline("")
	else
		--local isAsk = _SkillStart:ConvertValue(say["ask"], 0) > 0		
		local base = say[self.curState]
		if base == nil then
			if self.questState == 0 then
				if self.curState == "base" then
					self:AskAcceptDecline("")
				else
					self:DisposeQuest()
				end
			elseif self.questState == 1 then
				if self.curState2 == "end" then
					if _QuestManager:CheckInvMsg(_UserService.LocalPlayer, self.questID, 1, true) then
						_QuestManager:CompleteQuest(_UserService.LocalPlayer, self.questID, self.npcEntity, selection)
						self:ClearQuest(self.questID)
					else
						self:DisposeQuest()
					end
				else
					local npcStr = _NpcData:NpcInfo(self.id)
					self:SendOk(npcStr["d0"])
					self:SetNextDispose()
				end
			else
				self:DisposeQuest()
			end
		else
			if self.curState == "stop" then
				base = base[self.curState2]
				if base == nil then
					local npcStr = _NpcData:NpcInfo(self.id)
					base = {["1"] = npcStr["d0"]}
				end
			end
			
			local length = _Util:TableKeyLen(base)
			
			if selection > 0 then
				if status > length then
					if _QuestManager:CheckInvMsg(_UserService.LocalPlayer, self.questID, 1, true) then
						_QuestManager:CompleteQuest(_UserService.LocalPlayer, self.questID, self.npcEntity, selection)
						self:ClearQuest(self.questID)
					else
						self:DisposeQuest()
					end
				end
				
				local stop = say["stop"]
				if stop == nil then
					self:DisposeQuest()
					return true
				end
				local stopStatus = stop["" .. self.status - 2]
				if stopStatus == nil then
					self:DisposeQuest()
					return true
				end
                local answer = stopStatus["answer"]
                --if _UtilLogic:IsNilorEmptyString(answer) then
                --    self:DisposeQuest()
                --    return true
                --end
				
				local selStr = tostring(selection)
				if answer ~= nil and answer ~= selStr then
					self:SendOk(stopStatus[selStr])
					self:SetNextDispose()
					return true
				end
			end
			
			local strStatus = tostring(status)
			if self.curState == "base" then
				if self.state == 0 then
					if status > length then
						self:DisposeQuest()
					elseif status == length then
						self:AskAcceptDecline(base[strStatus])
					elseif status == 1 then
						self:SendNext(base[strStatus])
					else
						self:SendNextPrev(base[strStatus])
					end
				else
					if status > length then
						if _QuestManager:CheckInvMsg(_UserService.LocalPlayer, self.questID, 1, true) then
							_QuestManager:CompleteQuest(_UserService.LocalPlayer, self.questID, self.npcEntity, selection)
							self:ClearQuest(self.questID)
						else
							self:DisposeQuest()
						end
					elseif status == length then
						self:SendReward(base[strStatus])
					elseif status == 1 then
						self:SendNext(base[strStatus])
					else
						self:SendNextPrev(base[strStatus])
					end
				end
			else
				if status == 1 then
					if status == length then
						self:SendOk(base[strStatus])
					else
						self:SendNext(base[strStatus])
					end
				elseif status == length then
					self:SendPrev(base[strStatus])
				elseif status > length then
					self:DisposeQuest()
				else
					self:SendNextPrev(base[strStatus])
				end
			end
		end
	end
	--self:DisposeQuest()
end

return true
end