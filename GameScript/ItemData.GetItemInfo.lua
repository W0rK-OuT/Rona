return function (self,id) 
local itemType = math.floor(id / 1000000)
local idType = math.floor(id / 10000)
local info = self.infos[idType]
if info == nil then
	info = {}
	self.infos[idType] = info
end

local find = info[id]
if find ~= nil then
	return find
end

local dataName
if itemType == 1 then
	dataName = "EquipInfoData"
elseif itemType == 2 then
	dataName = "ConsumeInfoData"
elseif itemType == 3 then
	dataName = "InstallInfoData"
elseif itemType == 4 then
	dataName = "EtcInfoData"
else
	dataName = "CashInfoData"
end

local itemTable = _Util:FindTable_Value(dataName, "id", tostring(id))
if itemTable ~= nil then
	local nTable = {["id"] = id}
	local infoA = itemTable["info"]
	local spl = _UtilLogic:Split(infoA, ",")
	for key, value in pairs(spl) do
		local kv = _UtilLogic:Split(value, "=")
		nTable[kv[1]] = kv[2]
	end
	info[id] = nTable
	return nTable
end

local nTable = {}
nTable["id"] = id
info[id] = nTable
return nTable
end