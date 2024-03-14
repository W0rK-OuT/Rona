return function (self,skillID) 
if self.stun then
	return true
end
if self.seduce > 0 then
	if _SkillInfo:IsHeroWill(skillID) then
		return false
	end
	return true
end
return false
end