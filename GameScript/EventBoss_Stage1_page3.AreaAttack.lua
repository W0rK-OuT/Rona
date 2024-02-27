return function (self,startPos,offset) 
_EffectService:PlayEffect("8c63017c3e0641fda3f40791aab76a2d", self.Entity, startPos, 0, Vector3.one)
local start = function()
	_EventBossManager:AreaDamage(self.Entity, startPos, offset, 4, 0)
end
_TimerService:SetTimerOnce(start, 2.6)
end