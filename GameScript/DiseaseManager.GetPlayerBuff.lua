return function (self,id) 
local playerBuff
if id == 120 then -- 봉인(캐릭터)
	playerBuff = "seal"
elseif id == 121 then -- 암흑(캐릭터)
	playerBuff = "darkness"
elseif id == 122 then -- 허약(캐릭터)
	playerBuff = "weakness"
elseif id == 123 then -- 스턴(캐릭터)
	playerBuff = "stun"
elseif id == 124 then -- 저주(캐릭터)
	playerBuff = "curse"
elseif id == 125 then -- 독(캐릭터)
	playerBuff = "poison"
elseif id == 126 then -- 슬로우(캐릭터)
	playerBuff = "slow"
elseif id == 127 then -- 디스펠(캐릭터)
	playerBuff = "dispel"
elseif id == 128 then -- 유혹(캐릭터)
	playerBuff = "seduce"
elseif id == 129 then -- 밴(캐릭터 추방)
	playerBuff = "ban"	
elseif id == 132 then -- 방향변경(캐릭터)
	playerBuff = "reverse"
elseif id == 133 then -- 좀비피(캐릭터)
	playerBuff = "undead"
elseif id == 134 then -- 포션금지(캐릭터)
	playerBuff = "potion"
elseif id == 135 then -- 그림자 지속피해(캐릭터)
	playerBuff = "shadow"
elseif id == 136 then -- 블라인드(캐릭터)
	playerBuff = "blind"
elseif id == 137 then -- 프리즈(캐릭터)
	playerBuff = "freeze"	
end
return playerBuff
end