return function (self,event) 
local TriggerBodyEntity = event.TriggerBodyEntity
if TriggerBodyEntity == _UserService.LocalPlayer then
	_PlayerHitByMonster:MonsterAttack(self.monster, self.attackName)
end
end