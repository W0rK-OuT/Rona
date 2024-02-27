return function (self,mapid) 
local findInfo = self.infos[mapid]
if findInfo == nil then
	findInfo = {}
	local findTable = _Util:FindTable_Value("MapInfoData", "id", tostring(mapid))
	if findTable ~= nil then
		local sTable = _UtilLogic:Split(findTable["info"], ",")
		for k, v in pairs(sTable) do
			local spl = _UtilLogic:Split(v, "=")
			local key = spl[1]
			local value = spl[2]
			findInfo[key] = value
		end
	end
	self.infos[mapid] = findInfo
end
return findInfo
end