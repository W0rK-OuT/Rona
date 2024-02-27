return function (self,event) 
if self.noTrigger then
	return
end

local TriggerBodyEntity = event.TriggerBodyEntity
if TriggerBodyEntity == _UserService.LocalPlayer then
	_PlayerHitByMonster:MonsterHit(self.Entity)
end
end