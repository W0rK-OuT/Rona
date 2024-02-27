return function (self,mapID) 
if mapID == nil then
	return 1
end
local info = _MapData:GetMapInfo(mapID)
local fieldLimit = _SkillStart:ConvertValue(info["fieldLimit"], 0)
local forcedReturn = _SkillStart:ConvertValue(info["forcedReturn"], 999999999)

if _FieldLimit:Check(fieldLimit, _FieldLimit.MoveSkill) then
	return 2
end
if _FieldLimit:Check(fieldLimit, _FieldLimit.TeleportItem) then
	return 2
end
if mapID >= 900000000 then
	return 2
end
if mapID < 100000000 then
	return 2
end
if mapID ~= info.forcedReturn then
	if forcedReturn ~= 999999999 then
		return 2
	end
end
return 0
end