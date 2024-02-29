return function (self,skills) 
if self.Entity ~= _UserService.LocalPlayer then
	return
end
self.skills = skills
_SkillUIManager:UpdateSkills(_UserService.LocalPlayer.PlayerStats.job)
end