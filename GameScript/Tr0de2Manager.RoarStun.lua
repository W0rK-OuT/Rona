return function (self,stunTime) 
_TimerService:ClearTimer(self._T.endTimer)


_PlayerComponent:SetState(false, false)
_PlayerComponent.controller.Enable = false
self.nextAttackDelay = _UtilLogic.ServerElapsedSeconds + stunTime

local motionDelay = function()
	_PlayerComponent:SetState(false, true)
	_PlayerComponent.controller.Enable = true
	if _PlayerComponent.state.CurrentStateName == "MOVE" then
		_PlayerComponent.state:ChangeState("IDLE")
	end
end
self._T.endTimer = _TimerService:SetTimerOnce(motionDelay, stunTime)
end