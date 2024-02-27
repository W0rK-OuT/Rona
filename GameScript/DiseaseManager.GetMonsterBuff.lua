return function (self,id) 
local monsterBuff
if id == 100 or id == 110 or id == 150 then -- 물리업
	monsterBuff = "weaponUp"
elseif id == 101 or id == 111 or id == 151 then -- 매직업
	monsterBuff = "magicUp"
elseif id == 102 or id == 112 or id == 152 then -- 물리방어
	monsterBuff = "pddUp"
elseif id == 102 or id == 112 or id == 153 then -- 마법방어
	monsterBuff = "mddUp"
elseif id == 115 or id == 156 then -- 스피드업
	monsterBuff = "speed"
elseif id == 154 then -- 명중업
	monsterBuff = "acc"
elseif id == 155 then -- 회피업
	monsterBuff = "eva"
elseif id == 157 then -- 스킬봉인
	monsterBuff = "seal"
elseif id == 140 then -- 웨폰 이뮨
	monsterBuff = "weaponImmunity"
elseif id == 141 then -- 매직 이뮨
	monsterBuff = "magicImmunity"
elseif id == 142 then -- 데미지 이뮨
	monsterBuff = "damageImmunity"
elseif id == 143 then -- 물리 반사
	monsterBuff = "weaponReflect"
elseif id == 144 then -- 마법 반사
	monsterBuff = "magicReflect"
elseif id == 145 then -- 데미지 반사
	monsterBuff = "damageReflect"
end
return monsterBuff
end