return function (self,startPos,offset) 
_EffectService:PlayEffect("291c1214d5464b0fb710a6d5a24fdd73", self.Entity, startPos, 0, Vector3.one)
local start = function()
	if not isvalid(self.Entity) then
		return
	end
	_EventBossManager:AreaDamage(self.Entity, startPos, offset, 3, 0)
end
_TimerService:SetTimerOnce(start, 1.2)
end