return function (self,id) 
local ruids = self.ruids[id]
if ruids == nil then
	ruids = {}
	local baseTable = {}
	local hitTable = {}
	ruids["base"] = baseTable
	ruids["hit"] = hitTable
	
	local tables = _Util:FindTable_Values("ReactorRUID", "id", tostring(id))
	if tables == nil then
		self.ruids[id] = ruids
		return ruids
	end

	local load = {}
	for _, v in pairs(tables) do
		local strs = {"base", "hit"}
		for _, str in pairs(strs) do
			local baseData = v[str]
			local baseSpl = _UtilLogic:Split(baseData, "＆")
			for _, baseV in pairs(baseSpl) do
				local baseVV = _UtilLogic:Split(baseV, "=")
				local baseKey = tonumber(baseVV[1])
				local baseValue = baseVV[2]
				
				if str == "base" then
					baseTable[baseKey] = baseValue
				else
					hitTable[baseKey] = baseValue
				end
				if not _UtilLogic:IsNilorEmptyString(baseValue) then
					table.insert(load, baseValue)
				end
			end
		end
	end
	local syncFunc = function()
	end
	_ResourceService:PreloadAsync(load, syncFunc)
	self.ruids[id] = ruids
end
return ruids
end