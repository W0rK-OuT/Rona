return function (self,skillID) 
if skillID == nil then
	self.clickSkill = 0
	self.clickDelay = 0
	_DragBackManager:CheckClose("all")
	return
end

local time = _UtilLogic.ServerElapsedSeconds
if self.clickDelay < time then	
	if _DragBackManager:IsClick() then
		self.clickSkill = 0
		self.clickDelay = 0
		_DragBackManager:CloseUI()
	else
		self.clickSkill = skillID
		self.clickDelay = time + 0.3
		_DragBackManager:OpenUI("skill", tostring(skillID), "")
	end
	return
end

if self.clickSkill == skillID then
	if _SkillInfo:IsDoubleClick(skillID) then
		_KeyOperation:ActionSkill(skillID)
	end
end
self.clickSkill = 0
self.clickDelay = 0
_DragBackManager:CloseUI()
end