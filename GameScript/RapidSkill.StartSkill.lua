return function (self,id) 
if id <= 0 then
	return
end
if self.rapid then
	return
end
--if _PlayerComponent.state.CurrentStateName == "CROUCH" then
--    return
--end
--if _PlayerWeather:IsKeyStop() then
--    return
--end
--if not _PlayerComponent.state.Enable then
--    return
--end
--if not _PlayerComponent.controller.Enable then
--    return
--end
--if _RaidManager.nextAttackDelay >= _UtilLogic.ServerElapsedSeconds then
--    return
--end

_KeyOperation.rapidID = id
self.rapid = true

local player = _UserService.LocalPlayer

_PlayerComponent:SetState(true, false)
_PlayerComponent.controller.Enable = false

self:UseSound(id)

local motion = self:Motion(id)
local index = self:Index(id)
local event = ActionStateChangedEvent(motion, motion, 1, SpriteAnimClipPlayType.Loop, index, index)
_RaidManager.body:SendEvent(event)
self:EffectPlayer(player, _PlayerComponent.move:IsFaceLeft(), true, id)

--_TimerService:ClearTimer(self._T.timer)
--local func = function()
--    if not self.rapid then
--        _TimerService:ClearTimer(self._T.timer)
--        return
--    end
--    local now = _UtilLogic.ServerElapsedSeconds
--    if _RaidManager.nextAttackDelay < now then
--        _RaidManager.nextAttackDelay = now + 0.12
--        _SoundService:PlaySound(self:AttackSound(id), 1)
--        local result = _RaidManager:Gain(id, now, 0, 0)
--        if result == 1 then
--            self:EndSkill()
--            _TimerService:ClearTimer(self._T.timer)
--            return
--        end
--    end
--end
--self._T.timer = _TimerService:SetTimerRepeat(func, 1 / 60, 0)
end