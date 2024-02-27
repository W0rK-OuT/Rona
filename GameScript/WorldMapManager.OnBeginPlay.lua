return function (self) 
self.main:SetEnable(false)
self.sample:SetEnable(false)
self.player:SetEnable(false)
_UIManager:Remove(self.main)

local worldInfo = _Util:FindTable_All("WorldMapInfo")
local len = #worldInfo
for i = len, 1, -1 do
	local v = worldInfo[i]
	local mapName = v["map"]

	local parentMap = v["parentMap"]
	local ruid = v["ruid"]
	--log(i .. " / " .. mapName .. " / " .. parentMap .. " / " .. ruid)
	table.insert(self.worldInfo, {mapName, parentMap, ruid})
end
end