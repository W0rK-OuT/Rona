return function (self,id,level) 
local skillTable = {}
local type = math.floor(id / 10000)
if type == 200 then
	if id == 2000000 then -- MP 회복량 향상
		skillTable["recoverMp"] = level
	elseif id == 2000001 then -- MP 증가량 향상
		skillTable["levelMp"] = level * 2
		skillTable["apMp"] = level
	elseif id == 2001002 then -- 매직 가드
		skillTable["incMagicGuard"] = math.min(100, 20 + level * 3)
		skillTable["time"] = 100 + level * 25
		skillTable["mpCon"] = 6 + math.floor((level - 1) / 5) * 2
		skillTable["buff"] = 1
	elseif id == 2001003 then -- 매직 아머
		skillTable["incPDD"] = level * 2
		skillTable["time"] = 60 + level * 17
		skillTable["mpCon"] = 8 + math.floor(level / 20 * 8)
		skillTable["buff"] = 1
	elseif id == 2001004 then -- 에너지 볼트
		skillTable["damage"] = 20 + level + math.floor(level / 4)
		skillTable["mastery"] = math.floor(level / 2)
		skillTable["mpCon"] = 6 + math.floor(level / 20 * 8)
		skillTable["mastery"] = math.ceil(level / 2)
		skillTable["calMastery"] = math.ceil(level / 2) * 5 + 10
		skillTable["motion"] = {"swingO1", "swingO3"}
		skillTable["yRange"] = 100
		skillTable["fixSpeed"] = 6
		skillTable["skillRange"] = Vector2(3, 0.4)
		skillTable["oneHand"] = 1
		skillTable["noMastery"] = 1
	elseif id == 2001005 then -- 매직 클로
		skillTable["attackCount"] = 2
		skillTable["damage"] = 11 + level + math.floor(level / 20 * 9)
		skillTable["mpCon"] = 10 + math.floor(level / 2)
		skillTable["mastery"] = math.ceil(level / 2)
		skillTable["calMastery"] = math.ceil(level / 2) * 5 + 10
		skillTable["motion"] = {"swingO1", "swingO3"}
		skillTable["yRange"] = 100
		skillTable["fixSpeed"] = 6
		skillTable["skillRange"] = Vector2(3, 0.4)
		skillTable["oneHand"] = 1
		skillTable["noMastery"] = 1
	end
elseif type == 210 then
	if id == 2100000 then -- MP 이터
		skillTable["absorbRand"] = 10 + level
		skillTable["absorbMPR"] = 20 + level
	elseif id == 2101001 then -- 메디테이션
		skillTable["mpCon"] = 10 * math.floor(1 + (level - 1) / 10)
		skillTable["incMAD"] = level
		skillTable["time"] = level * 10
		skillTable["buff"] = 1
		skillTable["partyBuff"] = level <= 10 and Vector2(5, 3) or Vector2(6, 4)
	elseif id == 2101002 then -- 텔레포트
		if level <= 10 then
			skillTable["teleport"] = 130
			skillTable["mpCon"] = math.max(1, 63 - level * 3)
		else
			skillTable["teleport"] = 130 + 2 * (level - 10)
			skillTable["mpCon"] = math.max(1, 33 - 2 * (level - 10))
		end
		skillTable["move"] = 1
	elseif id == 2101003 then -- 슬로우
		skillTable["mpCon"] = 8 * math.ceil(level / 10)
		skillTable["buff"] = 1
		skillTable["mobCount"] = 6
		skillTable["skillRange"] = Vector2(4, 3)
		skillTable["skillPos"] = Vector2(0, 0)
		
		skillTable["debTime"] = level * 2
		skillTable["debBuffs"] = {
			{
				["key"] = "speed",
				["value"] = -level * 2,
			},
		}
	elseif id == 2101004 then -- 파이어 에로우
		skillTable["mpCon"] = 14 * math.floor(1 + (level - 1) / 15)
		skillTable["damage"] = 30 + level * 3
		skillTable["elemAttr"] = "F"
		skillTable["calMastery"] = math.ceil(level / 3) * 5 + 10
		skillTable["mastery"] = math.ceil(level / 3)
		skillTable["mobCount"] = 3
		skillTable["fixSpeed"] = 6
		skillTable["skillRange"] = Vector2(4, 0.8)
	elseif id == 2101005 then -- 포이즌 브레스
		skillTable["mpCon"] = 10 * math.floor(1 + (level - 1) / 15)
		skillTable["damage"] = 10 + level * 2
		skillTable["elemAttr"] = "S"
		skillTable["calMastery"] = math.ceil(level / 3) * 5 + 10
		skillTable["mastery"] = math.ceil(level / 3)
		skillTable["yRange"] = 100
		skillTable["fixSpeed"] = 6
		skillTable["skillRange"] = Vector2(3, 0.4)
		skillTable["noMastery"] = 1
		
        skillTable["debRand"] = 30 + level
        skillTable["debTime"] = math.ceil(level / 3) * 4
        skillTable["debBuffs"] = {
            {
                ["key"] = "poison",
                ["value"] = level,
            },
        }
	end
elseif type == 220 then
	if id == 2200000 then -- MP 이터
		skillTable["absorbRand"] = 10 + level
		skillTable["absorbMPR"] = 20 + level
	elseif id == 2201001 then -- 메디테이션
		skillTable["mpCon"] = 10 * math.floor(1 + (level - 1) / 10)
		skillTable["incMAD"] = level
		skillTable["time"] = level * 10
		skillTable["buff"] = 1
		skillTable["partyBuff"] = level <= 10 and Vector2(5, 3) or Vector2(6, 4)
	elseif id == 2201002 then -- 텔레포트
		if level <= 10 then
			skillTable["teleport"] = 130
			skillTable["mpCon"] = math.max(1, 63 - level * 3)
		else
			skillTable["teleport"] = 130 + 2 * (level - 10)
			skillTable["mpCon"] = math.max(1, 33 - 2 * (level - 10))
		end
		skillTable["move"] = 1
	elseif id == 2201003 then -- 슬로우
		skillTable["mpCon"] = 8 * math.ceil(level / 10)
		skillTable["buff"] = 1
		skillTable["mobCount"] = 6
		skillTable["skillRange"] = Vector2(4, 3)
		skillTable["skillPos"] = Vector2(0, 0)
		
		skillTable["debTime"] = level * 2
		skillTable["debBuffs"] = {
			{
				["key"] = "speed",
				["value"] = -level * 2,
			},
		}
	elseif id == 2201004 then -- 콜드 빔
		skillTable["mpCon"] = 12 * math.floor(1 + (level - 1) / 15)
		skillTable["damage"] = 10 + level * 3
		skillTable["elemAttr"] = "I"
		skillTable["calMastery"] = math.ceil(level / 3) * 5 + 10
		skillTable["mastery"] = math.ceil(level / 3)
		skillTable["motion"] = {"swingO1", "swingO3"}
		skillTable["yRange"] = 100
		skillTable["fixSpeed"] = 6
		skillTable["skillRange"] = Vector2(3, 0.4)
		skillTable["oneHand"] = 1
		skillTable["noMastery"] = 1
		
		skillTable["debTime"] = math.ceil(level / 15)
		skillTable["debBuffs"] = {
			{
				["key"] = "freeze",
				["value"] = 1,
			},
		}
	elseif id == 2201005 then -- 선더 볼트
		skillTable["mpCon"] = 20 * math.floor(1 + (level - 1) / 15)
		skillTable["damage"] = level * 2
		skillTable["elemAttr"] = "L"
		skillTable["calMastery"] = math.ceil(level / 3) * 5 + 10
		skillTable["mastery"] = math.ceil(level / 3)
		skillTable["mobCount"] = 6
		skillTable["motion"] = {"swingO1", "swingO3"}
		skillTable["fixSpeed"] = 6
		skillTable["skillRange"] = Vector2(4, 1)
		skillTable["skillPos"] = Vector2(0, 0)
		skillTable["oneHand"] = 1
		skillTable["noMastery"] = 1
	end
elseif type == 230 then
	if id == 2300000 then -- MP 이터
		skillTable["absorbRand"] = 10 + level
		skillTable["absorbMPR"] = 20 + level
	elseif id == 2301001 then -- 텔레포트
		if level <= 10 then
			skillTable["teleport"] = 130
			skillTable["mpCon"] = math.max(1, 63 - level * 3)
		else
			skillTable["teleport"] = 130 + 2 * (level - 10)
			skillTable["mpCon"] = math.max(1, 33 - 2 * (level - 10))
		end
		skillTable["move"] = 1
	elseif id == 2301002 then -- 힐
		skillTable["mpCon"] = 12 * math.floor(1 + (level - 1) / 16)
		skillTable["heal"] = level * 10
		skillTable["mobCount"] = 6
		skillTable["fixSpeed"] = 6
		skillTable["jumpAttack"] = 1
		skillTable["skillRange"] = Vector2(3, 2)
		skillTable["skillPos"] = Vector2(0, 0)
		skillTable["partyBuff"] = level <= 15 and Vector2(5, 3) or Vector2(6, 4)
	elseif id == 2301003 then -- 인빈서블
		skillTable["mpCon"] = 15 * math.floor(1 + (level - 1) / 10)
		skillTable["incDamageReduce"] = 10 + level
		skillTable["time"] = 15 * level
		skillTable["buff"] = 1
	elseif id == 2301004 then -- 블레스
		skillTable["mpCon"] = 12 * math.floor(1 + (level - 1) / 10)
		skillTable["incACC"] = level
		skillTable["incEVA"] = level
		skillTable["incMDD"] = level
		skillTable["incPDD"] = level
		skillTable["time"] = level * 10
		skillTable["buff"] = 1
		skillTable["partyBuff"] = level <= 10 and Vector2(5, 3) or Vector2(6, 4)
	elseif id == 2301005 then -- 홀리 에로우
		skillTable["mpCon"] = 12 * math.floor(1 + (level - 1) / 15)
		skillTable["damage"] = 20 + level * 2
		skillTable["elemAttr"] = "H"
		skillTable["calMastery"] = math.ceil(level / 3) * 5 + 10
		skillTable["mastery"] = math.ceil(level / 3)
		skillTable["yRange"] = 100
		skillTable["fixSpeed"] = 6
		skillTable["skillRange"] = Vector2(3, 0.4)
	end
elseif type == 211 then
	if id == 2110000 then -- 파셜 레지스턴스
		skillTable["resistance_F"] = level <= 10 and 20 + level * 3 or 30 + level * 2
		skillTable["resistance_S"] = level <= 10 and 20 + level * 3 or 30 + level * 2
	elseif id == 2110001 then -- 엠플
		skillTable["mpAmplification"] = level <= 10 and level * 5 or 50 + math.floor(50 * (level - 10) / 20)
		skillTable["damageAmplification"] = level <= 17 and 3 + level * 2 or 20 + level
	elseif id == 2111002 then -- 익스플로젼
		skillTable["fixSpeed"] = 6
		skillTable["calRange"] = 100 + math.ceil(level / 3) * 10
		skillTable["damage"] = 70 + level * 2
		skillTable["mpCon"] = 20 + level
		skillTable["mobCount"] = 6
		skillTable["elemAttr"] = "F"
		skillTable["calMastery"] = math.ceil(level / 3) * 5 + 10
		skillTable["mastery"] = math.ceil(level / 3)
		skillTable["skillRange"] = Vector2(2 * (100 + math.ceil(level / 3) * 10) / 100, 2 * (75 + math.floor(math.ceil(level / 3) * 15 / 2)) / 100)
		skillTable["skillPos"] = Vector2(0, 0)
	elseif id == 2111003 then -- 포이즌 미스트
		skillTable["fixSpeed"] = 6
		skillTable["calRange"] = 100 + math.ceil(level / 3) * 10
		skillTable["mpCon"] = 20 + level
		skillTable["damage"] = 30 + level * 2
		skillTable["calMastery"] = math.ceil(level / 3) * 5 + 10
		skillTable["mastery"] = math.ceil(level / 3)
		skillTable["elemAttr"] = "S"
		skillTable["skillRange"] = Vector2(2 * (100 + math.ceil(level / 3) * 10) / 100, 2 * (75 + math.floor(math.ceil(level / 3) * 15 / 2)) / 100)
		skillTable["skillPos"] = Vector2(0, 0)
		
		skillTable["mistTime"] = math.ceil(level / 3) * 4
		skillTable["mistRand"] = 40 + level
	elseif id == 2111004 then -- 씰
		skillTable["mpCon"] = 6 + math.ceil(level / 5) * 6
		skillTable["buff"] = 1
		skillTable["mobCount"] = 6
		skillTable["skillRange"] = level <= 10 and Vector2(5, 3) or Vector2(5.6, 3)
		skillTable["skillPos"] = Vector2(0, 0)
		
		skillTable["debRand"] = 35 + level * 3
		skillTable["debTime"] = 10 + math.floor(level / 2)
		skillTable["debBuffs"] = {
			{
				["key"] = "seal",
				["value"] = 1,
			},
		}
	elseif id == 2111005 then -- 매직 부스터
		skillTable["incAttackSpeed"] = level <= 10 and -1 or -2
		skillTable["calAttackSpeed"] = level <= 10 and 1 or 2
		skillTable["hpCon"] = math.max(1, 60 - level * 2)
		skillTable["mpCon"] = math.max(1, 55 - level * 2)
		skillTable["time"] = level * 10
		skillTable["buff"] = 1
		skillTable["weapon"] = {137, 138}
	elseif id == 2111006 then -- 매직 컴포지션
		skillTable["fixSpeed"] = 6
		skillTable["elemAttrs"] = "FS"
		skillTable["mpCon"] = 10 + math.ceil(level / 10) * 4
		skillTable["damage"] = 90 + level * 2
		skillTable["calMastery"] = math.ceil(level / 3) * 5 + 10
		skillTable["mastery"] = math.ceil(level / 3)
		skillTable["yRange"] = 100
		skillTable["skillRange"] = Vector2(3, 0.4)
		
        skillTable["debRand"] = 40 + level
        skillTable["debTime"] = math.ceil(level / 3) * 4
        skillTable["debBuffs"] = {
            {
                ["key"] = "poison",
                ["value"] = 1,
            },
        }
	end
elseif type == 221 then
	if id == 2210000 then -- 파셜 레지스턴스
		skillTable["resistance_I"] = level <= 10 and 20 + level * 3 or 30 + level * 2
		skillTable["resistance_L"] = level <= 10 and 20 + level * 3 or 30 + level * 2
	elseif id == 2210001 then -- 엠플
		skillTable["mpAmplification"] = level <= 10 and level * 5 or 50 + math.floor(50 * (level - 10) / 20)
		skillTable["damageAmplification"] = level <= 17 and 3 + level * 2 or 20 + level
	elseif id == 2211002 then -- 아이스 스트라이크
		skillTable["fixSpeed"] = 6
		skillTable["calRange"] = 100 + math.ceil(level / 3) * 10
		skillTable["damage"] = 30 + level * 2
		skillTable["mpCon"] = 20 + level
		skillTable["mobCount"] = 6
		skillTable["elemAttr"] = "I"
		skillTable["calMastery"] = math.ceil(level / 3) * 5 + 10
		skillTable["mastery"] = math.ceil(level / 3)
		skillTable["skillRange"] = Vector2(2 * (100 + math.ceil(level / 3) * 10) / 100, 2 * (75 + math.floor(math.ceil(level / 3) * 15 / 2)) / 100)
		skillTable["skillPos"] = Vector2(0, 0)
		
		skillTable["debTime"] = math.ceil(level / 15)
		skillTable["debBuffs"] = {
			{
				["key"] = "freeze",
				["value"] = 1,
			},
		}
	elseif id == 2211003 then -- 썬더 스피어
		skillTable["fixSpeed"] = 6
		skillTable["damage"] = 80 + level * 3
		skillTable["calMastery"] = math.ceil(level / 3) * 5 + 10
		skillTable["mastery"] = math.ceil(level / 3)
		skillTable["mpCon"] = 9 + math.ceil(level / 2)
		skillTable["elemAttr"] = "L"
		skillTable["yRange"] = 100
		skillTable["skillRange"] = Vector2(3, 0.4)
	elseif id == 2211004 then -- 씰
		skillTable["mpCon"] = 6 + math.ceil(level / 5) * 6
		skillTable["buff"] = 1
		skillTable["mobCount"] = 6
		skillTable["skillRange"] = level <= 10 and Vector2(5, 3) or Vector2(5.6, 3)
		skillTable["skillPos"] = Vector2(0, 0)
		
		skillTable["debRand"] = 35 + level * 3
		skillTable["debTime"] = 10 + math.floor(level / 2)
		skillTable["debBuffs"] = {
			{
				["key"] = "seal",
				["value"] = 1,
			},
		}
	elseif id == 2211005 then -- 매직 부스터
		skillTable["incAttackSpeed"] = level <= 10 and -1 or -2
		skillTable["calAttackSpeed"] = level <= 10 and 1 or 2
		skillTable["hpCon"] = math.max(1, 60 - level * 2)
		skillTable["mpCon"] = math.max(1, 55 - level * 2)
		skillTable["time"] = level * 10
		skillTable["buff"] = 1
		skillTable["weapon"] = {137, 138}
	elseif id == 2211006 then -- 매직 컴포지션
		skillTable["fixSpeed"] = 6
		skillTable["elemAttrs"] = "IL"
		skillTable["mpCon"] = 10 + math.ceil(level / 10) * 4
		skillTable["damage"] = 80 + level * 2
		skillTable["calMastery"] = math.ceil(level / 3) * 5 + 10
		skillTable["mastery"] = math.ceil(level / 3)
		skillTable["yRange"] = 100
		skillTable["skillRange"] = Vector2(3, 0.4)
		
		skillTable["debTime"] = math.ceil(level / 15)
		skillTable["debBuffs"] = {
			{
				["key"] = "freeze",
				["value"] = 1,
			},
		}
	end
elseif type == 231 then
	if id == 2310000 then -- 엘리먼트 레지스턴스
		skillTable["resistance_A"] = 10 + level * 2
	elseif id == 2311001 then -- 디스펠
		skillTable["mpCon"] = 10 + math.ceil(level / 10) * 5
		skillTable["prop"] = level <= 10 and 30 + 4 * level or 40 + 3 * level
		skillTable["buff"] = 1
		skillTable["mobCount"] = 6
		skillTable["dispel"] = 100 + 10 * level
		if self:IsClient() then
			skillTable["partyBuff"] = Vector2(2 * (100 + 10 * level) / 100, (150 + 15 * level) / 100)
			skillTable["skillRange"] = Vector2(2 * (100 + 10 * level) / 100, (150 + 15 * level) / 100)
			skillTable["skillPos"] = Vector2(0, 0)
		end
	elseif id == 2311002 then -- 미스틱 도어
		skillTable["mpCon"] = 83 - level * 3
		skillTable["time"] = level <= 10 and 20 + level * 10 or 60 + level * 6
		skillTable["itemCon"] = 4006000
		skillTable["itemConNo"] = 1
		skillTable["incMysticDoor"] = 1
		skillTable["noJump"] = 1
		skillTable["noRope"] = 1
		skillTable["buff"] = 1
	elseif id == 2311003 then -- 홀리 심볼
		skillTable["mpCon"] = 50 + level
		skillTable["incExp"] = level <= 20 and level * 2 or 20 + level
		skillTable["time"] = 30 + level * 3
		if level <= 10 then
			skillTable["partyBuff"] = Vector2(4, 2)
		elseif level <= 20 then
			skillTable["partyBuff"] = Vector2(5, 3)
		else
			skillTable["partyBuff"] = Vector2(6, 4)
		end
		skillTable["buff"] = 1
	elseif id == 2311004 then -- 샤이닝 레이
		skillTable["fixSpeed"] = 6
		skillTable["mobCount"] = 6
		skillTable["mpCon"] = 20 + level
		skillTable["calMastery"] = math.ceil(level / 3) * 5 + 10
		skillTable["mastery"] = math.ceil(level / 3)
		skillTable["elemAttr"] = "H"
		skillTable["damage"] = level <= 17 and 58 + level * 2 or 75 + level
		if level <= 10 then
			skillTable["skillRange"] = Vector2(3, 1)
		elseif level <= 20 then
			skillTable["skillRange"] = Vector2(3.2, 1)
		else
			skillTable["skillRange"] = Vector2(3.4, 1)
		end
		skillTable["skillPos"] = Vector2(0, 0)
	elseif id == 2311006 then -- 서먼 드래곤
		skillTable["itemCon"] = 4006001
		skillTable["itemConNo"] = 1
		skillTable["mpCon"] = level <= 20 and 30 + level * 2 or 50 + level
		skillTable["buff"] = 1
		
		skillTable["summonTime"] = level <= 15 and 5 + 5 * level or 20 + 4 * level
		skillTable["summonDamage"] = level <= 15 and 60 + 4 * level or 90 + 2 * level
		skillTable["summon"] = {
			["type"] = 2,
			["magic"] = 1,
		}
	end
elseif type == 212 then
	if id == 2121000 then -- 메이플 용사
		skillTable["mpCon"] = 10 * math.ceil(level / 5)
		skillTable["time"] = level * 30
		skillTable["incMapleWarrior"] = math.ceil(level / 2)
		skillTable["buff"] = 1
		skillTable["partyBuff"] = Vector2(8, 6)
	elseif id == 2121001 then -- 빅뱅
		skillTable["charge"] = 3
		skillTable["mpCon"] = level <= 25 and 5 + 15 * math.ceil(level / 5) or 80 - level
		skillTable["damage"] = 150 + level * 10
		skillTable["calMastery"] = (math.ceil(level / 3) + 4) * 5 + 10
		skillTable["mastery"] = math.ceil(level / 3) + 4
		skillTable["mobCount"] = 6
		skillTable["motion"] = {"swingO1", "swingO3"}
		skillTable["skillRange"] = Vector2(2.4, 1.5)
		skillTable["skillPos"] = Vector2(0, 0.2)
		skillTable["fixSpeed"] = 6
	elseif id == 2121002 then -- 마나 리플렉션
		skillTable["time"] = level <= 20 and level * 10 or 100 + 5 * level
		skillTable["mpCon"] = level <= 25 and 25 + level or 75 - level
		skillTable["incManaReflect"] = 50 + 5 * level
		skillTable["incManaReflectRand"] = 30 + level
		skillTable["buff"] = 1
	elseif id == 2121003 then -- 파이어 데몬
		skillTable["mpCon"] = level <= 18 and 12 + 3 * math.ceil(level / 6) or 19 + 3 * math.ceil(level / 6)
		skillTable["damage"] = 80 + 2 * level
		skillTable["calMastery"] = math.ceil(level / 3) * 5 + 10
		skillTable["mastery"] = math.ceil(level / 3)
		skillTable["mobCount"] = 1 + math.ceil(level / 6)
		skillTable["elemAttr"] = "F"
		skillTable["fixSpeed"] = 6
		skillTable["skillRange"] = Vector2(3, 0.4)
		skillTable["motion"] = {"swingO1", "swingO3"}
		
		skillTable["debTime"] = level <= 18 and 10 or 15
		skillTable["debBuffs"] = {
			{
				["key"] = "demon",
				["value"] = 1,
			},
		}
	elseif id == 2121004 then -- 인피니티
		skillTable["cooltime"] = 600
		skillTable["time"] = 10 + level
		skillTable["mpCon"] = 0
		skillTable["incInfinity"] = 1
		skillTable["buff"] = 1
	elseif id == 2121005 then -- 엘퀴네스
		skillTable["mpCon"] = 10 + 3 * level
		skillTable["buff"] = 1
		
		skillTable["debRand"] = 100
		skillTable["summonTime"] = 10 + level * 5
		skillTable["summonDamage"] = level <= 10 and 150 + level * 3 or level <= 20 and 140 + level * 4 or 120 + level * 5
		skillTable["summon"] = {
			["type"] = 1,
			["mobCount"] = 3,
			["magic"] = 1,
			["debBuff"] = "freeze",
			["elemAttr"] = "I",
		}
	elseif id == 2121006 then -- 페럴라이즈
		skillTable["mpCon"] = level <= 25 and 8 + 8 * math.ceil(level / 10) or 55 - level
		skillTable["damage"] = level <= 20 and 130 + 4 * level or 150 + level * 3
		skillTable["calMastery"] = math.ceil(level / 3) * 5 + 10
		skillTable["mastery"] = math.ceil(level / 3)
		skillTable["elemAttr"] = "S"
		skillTable["yRange"] = 100
		skillTable["fixSpeed"] = 6
		skillTable["skillRange"] = Vector2(3, 0.4)
		
		skillTable["debTime"] = math.ceil(level / 10) * 5
		skillTable["debBuffs"] = {
			{
				["key"] = "paralyze",
				["value"] = 1,
			},
		}
	elseif id == 2121007 then -- 메테오
		skillTable["mobCount"] = 15
		skillTable["damage"] = 320 + 10 * level
		skillTable["mpCon"] = level <= 20 and 1400 + 100 * level or 4400 - 50 * level
		skillTable["elemAttr"] = "F"
		skillTable["fixSpeed"] = 6
		skillTable["mastery"] = 10
		skillTable["skillRange"] = Vector2(8, 6)
		skillTable["skillPos"] = Vector2(0, 0.5)
	elseif id == 2121008 then -- 용사의 의지
		skillTable["calTime"] = math.max(1, 11 - level)
		skillTable["mpCon"] = 30
		skillTable["herowill"] = 1
		skillTable["cooltime"] = math.max(60, 660 - 60 * level)
		skillTable["buff"] = 1
	end
elseif type == 222 then
	if id == 2221000 then -- 메이플 용사
		skillTable["mpCon"] = 10 * math.ceil(level / 5)
		skillTable["time"] = level * 30
		skillTable["incMapleWarrior"] = math.ceil(level / 2)
		skillTable["buff"] = 1
		skillTable["partyBuff"] = Vector2(8, 6)
	elseif id == 2221001 then -- 빅뱅
		skillTable["charge"] = 3
		skillTable["mpCon"] = level <= 25 and 5 + 15 * math.ceil(level / 5) or 80 - level
		skillTable["damage"] = 150 + level * 10
		skillTable["calMastery"] = (math.ceil(level / 3) + 4) * 5 + 10
		skillTable["mastery"] = math.ceil(level / 3) + 4
		skillTable["mobCount"] = 6
		skillTable["motion"] = {"swingO1", "swingO3"}
		skillTable["skillRange"] = Vector2(2.4, 1.5)
		skillTable["skillPos"] = Vector2(0, 0.2)
		skillTable["fixSpeed"] = 6
	elseif id == 2221002 then -- 마나 리플렉션
		skillTable["time"] = level <= 20 and level * 10 or 100 + 5 * level
		skillTable["mpCon"] = level <= 25 and 25 + level or 75 - level
		skillTable["incManaReflect"] = 50 + 5 * level
		skillTable["incManaReflectRand"] = 30 + level
		skillTable["buff"] = 1
	elseif id == 2221003 then -- 아이스 데몬
		skillTable["mpCon"] = level <= 18 and 12 + 3 * math.ceil(level / 6) or 19 + 3 * math.ceil(level / 6)
		skillTable["damage"] = 60 + 2 * level
		skillTable["calMastery"] = math.ceil(level / 3) * 5 + 10
		skillTable["mastery"] = math.ceil(level / 3)
		skillTable["mobCount"] = 1 + math.ceil(level / 6)
		skillTable["elemAttr"] = "I"
		skillTable["fixSpeed"] = 6
		skillTable["skillRange"] = Vector2(3, 0.4)
		skillTable["motion"] = {"swingO1", "swingO3"}
		
		skillTable["debTime"] = level <= 18 and 10 or 15
		skillTable["debBuffs"] = {
			{
				["key"] = "demon",
				["value"] = 1,
			},
		}
	elseif id == 2221004 then -- 인피니티
		skillTable["cooltime"] = 600
		skillTable["time"] = 10 + level
		skillTable["mpCon"] = 0
		skillTable["incInfinity"] = 1
		skillTable["buff"] = 1
	elseif id == 2221005 then -- 이프리트
		skillTable["mpCon"] = 10 + 3 * level
		skillTable["buff"] = 1
		
		skillTable["summonTime"] = 10 + level * 5
		skillTable["summonDamage"] = level <= 10 and 180 + level * 3 or level <= 20 and 170 + level * 4 or 150 + level * 5
		skillTable["summon"] = {
			["type"] = 1,
			["mobCount"] = 3,
			["magic"] = 1,
			["elemAttr"] = "F",
		}
	elseif id == 2221006 then -- 체인 라이트닝
		skillTable["mpCon"] = level <= 25 and 8 + 8 * math.ceil(level / 10) or 55 - level
		skillTable["damage"] = level <= 20 and 100 + 4 * level or 120 + level * 3
		skillTable["mobCount"] = 1 + math.ceil(level / 6)
		skillTable["penetrate"] = 70
		skillTable["chain"] = 1
		skillTable["calMastery"] = math.ceil(level / 3) * 5 + 10
		skillTable["mastery"] = math.ceil(level / 3)
		skillTable["elemAttr"] = "L"
		skillTable["yRange"] = 100
		skillTable["fixSpeed"] = 6
		skillTable["skillRange"] = Vector2(3, 0.4)
	elseif id == 2221007 then -- 블리자드
		skillTable["mobCount"] = 15
		skillTable["damage"] = level <= 26 and 320 + 10 * level or 450 + 5 * level
		skillTable["mpCon"] = level <= 20 and 1400 + 100 * level or 4400 - 50 * level
		skillTable["elemAttr"] = "I"
		skillTable["fixSpeed"] = 6
		skillTable["mastery"] = 10
		skillTable["skillRange"] = Vector2(8, 6)
		skillTable["skillPos"] = Vector2(0, 0.5)
		
		skillTable["debTime"] = math.ceil(level / 10) + 2
		skillTable["debBuffs"] = {
			{
				["key"] = "freeze",
				["value"] = 1,
			},
		}
	elseif id == 2221008 then -- 용사의 의지
		skillTable["calTime"] = math.max(1, 11 - level)
		skillTable["mpCon"] = 30
		skillTable["herowill"] = 1
		skillTable["cooltime"] = math.max(60, 660 - 60 * level)
		skillTable["buff"] = 1
	end
elseif type == 232 then
	if id == 2321000 then -- 메이플 용사
		skillTable["mpCon"] = 10 * math.ceil(level / 5)
		skillTable["time"] = level * 30
		skillTable["incMapleWarrior"] = math.ceil(level / 2)
		skillTable["buff"] = 1
		skillTable["partyBuff"] = Vector2(8, 6)
	elseif id == 2321001 then -- 빅뱅
		skillTable["charge"] = 3
		skillTable["mpCon"] = level <= 25 and 5 + 15 * math.ceil(level / 5) or 80 - level
		skillTable["damage"] = 150 + level * 10
		skillTable["calMastery"] = (math.ceil(level / 3) + 4) * 5 + 10
		skillTable["mastery"] = math.ceil(level / 3) + 4
		skillTable["mobCount"] = 6
		skillTable["motion"] = {"swingO1", "swingO3"}
		skillTable["skillRange"] = Vector2(2.4, 1.5)
		skillTable["skillPos"] = Vector2(0, 0.2)
		skillTable["fixSpeed"] = 6
	elseif id == 2321002 then -- 마나 리플렉션
		skillTable["time"] = level <= 20 and level * 10 or 100 + 5 * level
		skillTable["mpCon"] = level <= 25 and 25 + level or 75 - level
		skillTable["incManaReflect"] = 50 + 5 * level
		skillTable["incManaReflectRand"] = 30 + level
		skillTable["buff"] = 1
	elseif id == 2321003 then -- 바하뮤트
		skillTable["mpCon"] = 10 + 3 * level
		skillTable["buff"] = 1
		
		skillTable["summonTime"] = 10 + level * 5
		skillTable["summonDamage"] = level <= 10 and 110 + level * 3 or level <= 20 and 100 + level * 4 or 80 + level * 5
		skillTable["summon"] = {
			["type"] = 1,
			["mobCount"] = 3,
			["magic"] = 1,
			["elemAttr"] = "H",
		}
	elseif id == 2321004 then -- 인피니티
		skillTable["cooltime"] = 600
		skillTable["time"] = 10 + level
		skillTable["mpCon"] = 0
		skillTable["incInfinity"] = 1
		skillTable["buff"] = 1
	elseif id == 2321005 then -- 홀리 실드
		skillTable["cooltime"] = 120
		skillTable["time"] = 10 + level
		skillTable["mpCon"] = level <= 20 and 10 + 2 * level or 10 + level
		skillTable["incHolyShield"] = 1
		skillTable["buff"] = 1
		skillTable["partyBuff"] = Vector2(8, 6)
	elseif id == 2321006 then -- 리저렉션
		skillTable["calValue"] = math.max(30, 60 - 3 * level)
		skillTable["cooltime"] = math.max(1800, 3600 - 180 * level)
		skillTable["mpCon"] = math.max(40, 90 - 5 * level)
		skillTable["resurrection"] = 1
		skillTable["buff"] = 1
		skillTable["partyBuff"] = Vector2(8, 6)
		skillTable["partyBuffPos"] = Vector2(0, 0.5)
	elseif id == 2321007 then -- 엔젤레이
		skillTable["mpCon"] = level <= 25 and 8 + 8 * math.ceil(level / 10) or 55 - level
		skillTable["damage"] = level <= 10 and 120 + level * 3 or level <= 20 and 110 + 4 * level or 90 + 5 * level
		skillTable["elemAttr"] = "H"
		skillTable["calMastery"] = math.ceil(level / 3) * 5 + 10
		skillTable["mastery"] = math.ceil(level / 3)
		skillTable["yRange"] = 100
		skillTable["fixSpeed"] = 6
		skillTable["skillRange"] = Vector2(3, 0.4)
	elseif id == 2321008 then -- 제네시스
		skillTable["mobCount"] = 15
		skillTable["damage"] = level <= 20 and 420 + 10 * level or 520 + 5 * level
		skillTable["mpCon"] = level <= 20 and 2000 + 100 * level or 5000 - 50 * level
		skillTable["elemAttr"] = "H"
		skillTable["fixSpeed"] = 6
		skillTable["mastery"] = 10
		skillTable["skillRange"] = Vector2(8, 6)
		skillTable["skillPos"] = Vector2(0, 0.5)
	elseif id == 2321009 then -- 용사의 의지
		skillTable["calTime"] = math.max(1, 11 - level)
		skillTable["mpCon"] = 30
		skillTable["herowill"] = 1
		skillTable["cooltime"] = math.max(60, 660 - 60 * level)
		skillTable["buff"] = 1
	end
end

return skillTable
end