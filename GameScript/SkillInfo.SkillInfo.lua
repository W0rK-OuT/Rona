return function (self,id,level) 
if id == 0 then
	return {}
end

local skillType = math.floor(id / 10000)
local type = _GameUtil:JobType(skillType)
if type == 0 then
	return _SkillInfoBeginner:SkillInfo(id, level)
elseif type == 1 then
	return _SkillInfoWarrior:SkillInfo(id, level)
elseif type == 2 then
	return _SkillInfoMagician:SkillInfo(id, level)
elseif type == 3 then
	return _SkillInfoArcher:SkillInfo(id, level)
elseif type == 4 then
	return _SkillInfoLog:SkillInfo(id, level)
elseif type == 5 then
	return _SkillInfoPirate:SkillInfo(id, level)
end
return {}
end