return function (self,id) 
local skillLevel = _UserService.LocalPlayer.PlayerSkill:GetTotalSkillLevel(id)
if skillLevel <= 0 then
	return
end
if not _SkillInfo:IsActive(id) then
	return
end
if _SkillInfo:IsCharge(id) then
	return
end
if _SkillInfo:IsRapid(id) then
	return
end

local time = _UtilLogic.ServerElapsedSeconds
if self.clickDelay < time then
	self.clickDelay = time + 0.3
	_DragBackManager:OpenUI("skill", tostring(id), "")
	return
end
self.clickDelay = 0
_DragBackManager:CheckClose("all")
_KeyOperation:ActionSkill(id)
--self:SetKeySkill(id, _UserService.LocalPlayer)
end