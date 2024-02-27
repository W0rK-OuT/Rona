return function (self,id) 
local info = self.npcInfo[id]
if info ~= nil then
	return info
end

local nTable = {}
local value = _Util:FindTable_Value("NpcInfoData", "id", tostring(id))
if value ~= nil then
	for nKey, nValue in pairs(value) do
		if nKey ~= "id" then
			if nKey == "info" then
				local infoTable = {}
				if _UtilLogic:IsNilorEmptyString(nValue) then
					nTable[nKey] = infoTable
				else
					local spl = _UtilLogic:Split(nValue, ",")
					for k, v in pairs(spl) do
						local spl2 = _UtilLogic:Split(v, "=")
						infoTable[spl2[1]] = spl2[2]
					end
					nTable[nKey] = infoTable
				end
			else
				nTable[nKey] = nValue
			end
		end
	end
end

self.npcInfo[id] = nTable
return nTable
end