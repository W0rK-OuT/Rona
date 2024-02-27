return function (self,id) 
local itemType = math.floor(id / 10000)
local info = self.items[itemType]
if info == nil then
	info = {}
	self.items[itemType] = info
end

local item = info[id]
if item == nil then
	local dataName
	if id < 2000000 then
		dataName = "EquipData"
	elseif id < 3000000 then
		dataName = "ConsumeData"
	elseif id < 4000000 then
		dataName = "InstallData"
	elseif id < 5000000 then
		dataName = "EtcData"
	else
		dataName = "CashData"
	end

	local itemTable = _Util:FindTable_Value(dataName, "id", tostring(id))
	if itemTable == nil then
		info[id] = {}
		return {}
	end
	info[id] = itemTable
	return itemTable
end
return item
end