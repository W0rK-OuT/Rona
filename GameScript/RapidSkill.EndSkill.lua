return function (self) 
if _KeyOperation.rapidID > 0 then
	self:EffectPlayer(_UserService.LocalPlayer, _PlayerComponent.move:IsFaceLeft(), false, _KeyOperation.rapidID)
	_KeyOperation.rapidID = 0
end
if self.rapid then
    --local now = _UtilLogic.ServerElapsedSeconds
    --self.lastTick = now + 0.12
	self.rapid = false
	
	if not _RaidManager.isMotion then
		_PlayerComponent:SetState(true, true)
		_PlayerComponent.controller.Enable = true
		if _PlayerComponent.state.CurrentStateName ~= "DEAD" then
			_PlayerComponent.state:ChangeState("MOVE")
			_PlayerComponent.state:ChangeState("IDLE")
		end
	end
end
end