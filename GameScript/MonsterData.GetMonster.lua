return function (self,id) 
local monsterInfo = self.monsterInfo[id]
if monsterInfo ~= nil then
	return monsterInfo
end

local nTable = {}

local value = _Util:FindTable_Value("MonsterData", "id", tostring(id))
if value ~= nil then
	nTable["name"] = value["name"]
	for _, keyValue in pairs(_UtilLogic:Split(value["info"], ",")) do
		local spl = _UtilLogic:Split(keyValue, "=")
		local splName = spl[1]
		local splValue = spl[2]
		if splName == "elemAttr" then
			local len = utf8.len(splValue)
			local eleTable = {}
			for idx = 1, len, 2 do
				local ele = _UtilLogic:SubString(splValue, idx, 1)
				local val = _UtilLogic:SubString(splValue, idx + 1, 1)
				eleTable[ele] = tonumber(val)
			end
			nTable[splName] = eleTable
		elseif splName == "revive" then
			local revTable = {}
			local revIndex = 1
			for kkk, vvv in pairs(_UtilLogic:Split(splValue, "@")) do
				local mobID = tonumber(vvv)
				if mobID ~= nil then
					revTable[revIndex] = tonumber(vvv)
					revIndex += 1
				end
			end
			nTable[splName] = revTable
		else
			if splName == "exp" then
				if id // 10000 == 881 then
					splValue = 0
				end
			end
			nTable[splName] = splValue
		end		
	end
end
self.monsterInfo[id] = nTable
return nTable
end