return function (self,player,skillID) 
if not _SkillData.init then
	return false
end

local skillType = math.floor(skillID / 10000)
local jobLevel = _SkillManager:CalcSkillNum(skillType)

local stat = player.PlayerStats

local playerSkill = player.PlayerSkill
local sp = _Util:ConvertNumber(stat.sp[jobLevel])

if sp <= 0 then
	return false
end
if not _GameUtil:CheckJobSkill(stat.job, skillID) then
	return false
end
local skill = _SkillData:GetSkill(skillID)
if skill == nil then
	return false
end

local sInfo = skill["info"]
if _GameUtil:ConvertValue(sInfo["noTeach"], 0) == 1 then
	return false
end

local reqSkill = skill["req"]
if not _SkillData:CheckReqSkill(player, skill["req"]) then
	return false
end

local oriSkillLevel = playerSkill:GetSkillLevel(skillID)

local baseLevel = _GameUtil:ConvertValue(skill["baseLevel"], -1)
if baseLevel >= 0 then
	if oriSkillLevel >= playerSkill:GetMasterLevel(skillID) then
		return false
	end
end

local masterLevel = tonumber(skill["masterLevel"])
if masterLevel == nil or oriSkillLevel >= masterLevel then
	return false
end

return true
end