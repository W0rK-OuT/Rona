return function (self,player,id) 
local stat = player.PlayerStats
return self:CanEquipStat(player, id, stat:TotalStat("str"), stat:TotalStat("dex"), stat:TotalStat("int"), stat:TotalStat("luk"))
end