return function (self,id) 
local events = self.events[id]
if events == nil then
	local tables = _Util:FindTable_Value("ReactorEvent", "id", tostring(id))
	if tables == nil then
		events = {}
		self.events[id] = events
		return events
	end
	
	events = {}
	local info = tables["info"]
	local spl = _UtilLogic:Split(info, "＆")
	for index, splV in pairs(spl) do
		local splV1 = _UtilLogic:Split(splV, "＠")
		local state = tonumber(splV1[1])
		local splV2 = _UtilLogic:Split(splV1[2], "※")
		local evTable = {}
		for _, splV3 in pairs(splV2) do
			local splV4 = _UtilLogic:Split(splV3, "＃")
			local nTable = {}
			for _, splV5 in pairs(splV4) do
				local splV6 = _UtilLogic:Split(splV5, "=")
				local splV6Key = splV6[1]
				local splV6Value = splV6[2]
				nTable[splV6Key] = splV6Value
			end
			if not _Util:IsTableEmpty(nTable) then
				table.insert(evTable, nTable)
			end
		end
		if not _Util:IsTableEmpty(evTable) then
			events[state] = evTable
		end
	end
	self.events[id] = events
end
return events
end