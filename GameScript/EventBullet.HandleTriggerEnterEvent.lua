return function (self,event) 
if not self.start then
	return
end

local TriggerBodyEntity = event.TriggerBodyEntity
---------------------------------------------------------
if TriggerBodyEntity ~= _UserService.LocalPlayer then
	return
end
if not TriggerBodyEntity.PlayerEventStat:IsAlive() then
	return
end
if self.isHit then
	return
end
if not self.multiHit then
	self.isHit = true
end

if self.leftShiled ~= 0 then
	local isLeft = TriggerBodyEntity.TransformComponent.WorldPosition.x < self.Entity.TransformComponent.WorldPosition.x
	local faceLeft = TriggerBodyEntity.MovementComponent:IsFaceLeft()
	if self.leftShiled == -1 then
		if isLeft == faceLeft then
			_EventStatManager:EventGaurd()
			return
		end
	else
		if isLeft ~= faceLeft then
			_EventStatManager:EventGaurd()
			return
		end
	end
end
_EventStatManager:EventDamage(false, 0, self.damage, self.hitDelay)
end