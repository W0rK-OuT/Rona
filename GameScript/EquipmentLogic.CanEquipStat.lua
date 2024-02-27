return function (self,player,id,str,dex,int,luk) 
local item = _ItemData:GetItemInfo(id)
if item == nil then
	return 1
end
local stat = player.PlayerStats
local job = stat.job
local jobType = _GameUtil:JobType(job)
local level = stat.level
local pop = stat.pop
local gender = stat.gender
local subJob = stat.subJob

local reqJob = _SkillStart:ConvertValue(item["reqJob"], 0)
if not _GameUtil:ReqJob(jobType, reqJob) then
	return 2
end

local reqLevel = _SkillStart:ConvertValue(item["reqLevel"], 0)
if reqLevel > level then
	return 3
end
local reqPOP = _SkillStart:ConvertValue(item["reqPOP"], 0)
if reqPOP > 0 and reqPOP > pop then
	return 4
end

if str < _SkillStart:ConvertValue(item["reqSTR"], 0) then
	return 5
end
if dex < _SkillStart:ConvertValue(item["reqDEX"], 0) then
	return 5
end
if int < _SkillStart:ConvertValue(item["reqINT"], 0) then
	return 5
end
if luk < _SkillStart:ConvertValue(item["reqLUK"], 0) then
	return 5
end

local itemGender = _GameUtil:ItemGender(id)
if itemGender > -1 and itemGender ~= gender then
	return 6
end

if _GameUtil:IsBlade(id) and subJob == 0 then
	return 7
end

return 0
end