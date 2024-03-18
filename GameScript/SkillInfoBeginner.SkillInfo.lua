return function (self,id,level) 
local skillTable = {}
if id == 1000 then -- 달팽이 세마리
	skillTable["mpCon"] = 1 + level * 2
	skillTable["fixDamage"] = 10 + (level - 1) * 15
	skillTable["yRange"] = 100
	skillTable["fixSpeed"] = 6
	skillTable["oneHand"] = 1
	skillTable["motion"] = {"swingO1", "swingO3"}
	skillTable["skillRange"] = Vector2(3, 0.4)
elseif id == 1001 then -- 회복
	skillTable["mpCon"] = 5 * level
	skillTable["time"] = 30
	skillTable["incTotalHp"] = 6 * 4 * level
	skillTable["cooltime"] = 120
	skillTable["buff"] = 1
elseif id == 1002 then -- 민첩한 몸놀림
	skillTable["mpCon"] = 4 + (level - 1) * 3
	skillTable["incSpeed"] = 5 + level * 5
	skillTable["cooltime"] = 60
	skillTable["time"] = 4 * level
	skillTable["buff"] = 1
elseif id == 1012 then -- 정령의 축복
	skillTable["pad"] = level
	skillTable["mad"] = level * 2
	skillTable["acc"] = level
	skillTable["eva"] = level
end
return skillTable
end