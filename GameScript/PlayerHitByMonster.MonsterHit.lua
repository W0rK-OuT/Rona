return function (self,monster) 
local player = _UserService.LocalPlayer
if not player.PlayerStats:IsActing() then
	return
end
if not monster.MobInfo:IsAlive() then
	return
end
if player.PlayerBuff.darkSight > 0 then
	return
end
local now = _UtilLogic.ServerElapsedSeconds
if self.nextHitTime < now then
	self.nextHitTime = now + self.monsterHitDelay
	
	local dir = _PlayerComponent.trans.Position.x > monster.TransformComponent.Position.x and 1 or -1
	self:MonsterHitServer(monster, player, now, dir, _PlayerComponent.move:IsFaceLeft(), "")
end
end