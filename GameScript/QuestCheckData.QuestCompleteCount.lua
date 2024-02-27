return function (self,player) 
local tot = 0
for key, value in pairs(player.PlayerQuest.quest) do
	if value == 2 then
		tot = tot + 1
	end
end
return tot
end