return function (self,id) 
local skillLevel = _UserService.LocalPlayer.PlayerSkill:GetTotalSkillLevel(id)
if skillLevel <= 0 then
	self:SetLastClick(nil)
elseif not _SkillInfo:IsActive(id) then
	self:SetLastClick(nil)
else
	self:SetLastClick(id)
end
end