return function (self,skillID,lastTick) 
if skillID <= 0 then
	return
end
local player = _UserService.LocalPlayer

local skillLevel = player.PlayerSkill:GetTotalSkillLevel(skillID)
if skillLevel <= 0 then
	return
end
local skillInfo = _SkillInfo:SkillInfo(skillID, skillLevel)

--if self:CheckBuff(player, skillID, lastTick, skillInfo) then
--    self:AutoBuffServer(player, skillID, lastTick)
--end
player.PlayerEtc.autoBuffTick = lastTick + 1
end