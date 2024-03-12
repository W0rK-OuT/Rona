return function (self,player,key,index) 
if index == nil then
	return 2
end
if player.PlayerKey.pcButtons["" .. index] == nil then
	return 3
end

for k, v in pairs(player.PlayerKey.pcButtons) do
	if v == key then
		return 4
	end
end

local nTable = _PlayerKeyLogic:BaseTable()
for k, v in pairs(nTable) do
	if v[1] == key then
		return 0
	end
end
return 1
end