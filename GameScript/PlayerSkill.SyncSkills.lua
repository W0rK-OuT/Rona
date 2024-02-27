return function (self,skills) 
if self.Entity ~= _UserService.LocalPlayer then
	return
end
self.skills = skills
_SkillManager:UpdateSkills(_UserService.LocalPlayer.PlayerStats.job)
end