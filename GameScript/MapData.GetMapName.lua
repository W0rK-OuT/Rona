return function (self,id) 
local mstr = self.mapString[id]
if mstr == nil then
	local info = self:GetMapInfo(id)
	local link = _GameUtil:ConvertValue(info["link"], 0)
	local mapID
	if link > 0 then
		mapID = tostring(link)
	else
		mapID = tostring(id)
	end
	local mTable = _Util:FindTable_Value("MapStringData", "id", mapID)
	if mTable == nil then
		mstr = {["streetName"] = "", ["mapName"] = ""}
	else
		mstr = {["streetName"] = mTable["streetName"], ["mapName"] = mTable["mapName"]}
	end
	self.mapString[id] = mstr
end
return mstr
end