return function (self,stat) 
local player = _UserService.LocalPlayer
if player.PlayerStats.ap <= 0 then
	return
end
_SoundService:PlaySound("69b517263dac4edb8e6f09040177c938", 1)
self:UseAP(stat, player)
end