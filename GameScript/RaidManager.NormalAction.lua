return function (self,actionName,weaponSpeed,masteryEff,lastTick) 
_TimerService:ClearTimer(self._T.endTimer)

local oriDelay = _MotionDelayManager.motionDelay[actionName]
local delay = _SkillHelper:CalcSpeed(oriDelay, weaponSpeed)
local playRate = oriDelay / delay

self.nextAttackDelay = lastTick + delay / 1000
self.isMotion = true

_PlayerComponent:SetState(false, false)
_PlayerComponent.controller.Enable = false

_UserService.LocalPlayer.PlayerMotion.attState = actionName
if _UserService.LocalPlayer.PlayerBuff.incTaming == 0 then
	local event = ActionStateChangedEvent(actionName, actionName, playRate, SpriteAnimClipPlayType.Onetime)
	self:NormalServer(_UserService.LocalPlayer, actionName, playRate, delay, masteryEff)
	self.body:SendEvent(event)
end

local motionDelay = function()
	_UserService.LocalPlayer.PlayerMotion.attState = ""
	self.isMotion = false
	if not _RapidSkill.rapid then
		_PlayerComponent:SetState(false, true)
		_PlayerComponent.controller.Enable = true
	end
end
self._T.endTimer = _TimerService:SetTimerOnce(motionDelay, delay / 1000)

return playRate
end