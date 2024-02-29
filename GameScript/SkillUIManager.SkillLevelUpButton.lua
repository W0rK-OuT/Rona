return function (self,skillID) 
local player = _UserService.LocalPlayer
if self:CheckLevelUp(player, skillID) then
	_SoundService:PlaySound("69b517263dac4edb8e6f09040177c938", 1)
	self:SkillLevelUp(player, skillID)
end
end