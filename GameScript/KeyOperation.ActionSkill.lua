return function (self,id) 
if _PlayerWeather:CheckSkillStop(id) then
	return
end

if _SkillInfo:IsMoveSkill(id) then
	_SkillMove:ActionMove(id)
else
	if _CoolTime.attackDelay >= 0 then
		local now = _UtilLogic.ServerElapsedSeconds
		if _RaidManager.nextAttackDelay < now then
			_CoolTime.attackDelay = -0.03
			if _SkillInfo:IsBuff(id) then
				_SkillBuff:StartBuff(id, now)
			elseif _SkillInfo:IsCharge(id) then
				self:StartKeyDonwSkill(false, id)
			elseif _SkillInfo:IsRapid(id) then
				self:StartKeyDonwSkill(true, id)
			else
            	_RaidManager:Gain(id, now, 0, 0)
			end
		end
	end
end
end