return function (self,id,skill) 
if self.Entity ~= _UserService.LocalPlayer then
	return
end
self.skills[tostring(id)] = skill
_SkillUIManager:UpdateSkills(_UserService.LocalPlayer.PlayerStats.job)
end