return function (self) 
if not _LoadingSetting.mapNameData then
	return
end

local mTable = _Util:FindTable_All("MapStringData")
for key, value in pairs(mTable) do
	local id = tonumber(value["id"])
	self.mapString[id] = {["streetName"] = value["streetName"], ["mapName"] = value["mapName"]}
end
self.init = true
end