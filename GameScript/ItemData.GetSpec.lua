return function (self,id) 
local itemType = math.floor(id / 10000)
local findSpec = self.spec[itemType]
if findSpec == nil then
	local nTable = {}
	self.spec[itemType] = nTable
	findSpec = nTable
end

local specInfo = findSpec[id]
if specInfo ~= nil then
	return specInfo
end

local cure = {}
local nTable = {}
local itemTable = _Util:FindTable_Value("Spec" .. itemType, "id", tostring(id))
if itemTable ~= nil then
	local specs = itemTable["spec"]
	for k, v in pairs(_UtilLogic:Split(specs, ",")) do
		local spl = _UtilLogic:Split(v, "=")
		local nKey = spl[1]
		local nValue = spl[2]
		if nKey == "poison" or nKey == "seal" or nKey == "darkness" or nKey == "weakness" or nKey == "curse" then
			table.insert(cure, nKey)
		else
			nTable[nKey] = nValue
		end
        --local num = tonumber(nValue)
        --if num == nil then
        --    nTable[nKey] = nValue
        --else
        --    nTable[nKey] = num
        --end
	end
end
if #cure > 0 then
	nTable["cure"] = cure
end
findSpec[id] = nTable
return nTable
end