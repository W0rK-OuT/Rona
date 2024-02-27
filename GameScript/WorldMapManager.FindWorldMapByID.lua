return function (self,id) 
for k, v in pairs(self.worldInfo) do
	local worldMapName = v[1]
	local dataTable = _Util:FindTable_All(worldMapName)
	for kk, vv in pairs(dataTable) do
		local info = vv["info"]
		if not _UtilLogic:IsNilorEmptyString(info) then
			for _, mapName in pairs(_UtilLogic:Split(info, ",")) do
				if tonumber(mapName) == id then
					return worldMapName
				end
			end
		end
	end
end
return nil
end