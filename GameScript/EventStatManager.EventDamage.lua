return function (self,isKnockback,dir,damage,delay) 
if damage <= 0 then
	return
end

local player = _UserService.LocalPlayer
if player.PlayerEventStat:IsAlive() then
	_SoundService:PlaySound("76da2c05646a4772bb03172f59977438", 1)
	_PlayerHitByMonster:DamageClient(isKnockback, dir, 1)
	player.PlayerEventStat:Damage(damage)
end
end