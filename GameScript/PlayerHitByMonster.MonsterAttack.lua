return function (self,monster,attackName) 
local player = _UserService.LocalPlayer
if not player.PlayerStats:IsActing() then
	return
end
if not monster.MobInfo:IsAlive() then
	return
end

local now = _UtilLogic.ServerElapsedSeconds
if self.nextHitTime < now then
	self.nextHitTime = now + self.monsterHitDelay
	local lastNumber = tonumber(string.match(attackName, "%d+$"))
	if lastNumber ~= nil then
		local sound = _MosterSound:GetSound(monster.MobInfo.id)["CHARDAM" .. lastNumber]
		if not _UtilLogic:IsNilorEmptyString(sound) then
			_SoundService:PlaySound(sound, 2)
		end
	end
	
	local dir = _PlayerComponent.trans.Position.x > monster.TransformComponent.Position.x and 1 or -1
	self:MonsterHitServer(monster, player, now, dir, _PlayerComponent.move:IsFaceLeft(), attackName)
end
end