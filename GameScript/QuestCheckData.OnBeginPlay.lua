return function (self) 
if not _LoadingSetting.questLoad then
	return
end
local check = _Util:FindTable_All("QuestCheck")
for _, value in pairs(check) do
	local questID = tonumber(value["id"])
	local state = tonumber(value["state"])
	
	local checkTable = {}
	for key, nValue in pairs(value) do
		if key ~= "id" and key ~= "state" then
			if #nValue ~= 0 then
				checkTable[key] = nValue
			end
		end
	end
	
	if state == 0 then
		self.checkStart[questID] = checkTable 
	else
		self.checkEnd[questID] = checkTable 
	end
	
	if state == 0 then
		local npcID = tonumber(checkTable["npc"])
		if npcID ~= nil then
			local nTable = {}
			if self.npcQuest[npcID] ~= nil then
				nTable = self.npcQuest[npcID]
			end
			table.insert(nTable, questID)
			self.npcQuest[npcID] = nTable
		end
	end
end

self.init = true
end