return function (self,id,level) 
local skillTable = {}
local type = math.floor(id / 10000)
if type == 300 then
	if id == 3000000 then -- 아마존의 축복
		skillTable["acc"] = level
	elseif id == 3000001 then -- 크리티컬 
		skillTable["criticalProp"] = 10 + level * 2
		skillTable["criticalDamage"] = 5 * level
	elseif id == 3000002 then -- 아마존의 눈
		skillTable["rangeX"] = 15 * level
	elseif id == 3001003 then -- 포커스
		skillTable["incACC"] = level
		skillTable["incEVA"] = level
		skillTable["time"] = 70 + level * 10 + math.floor(level / 20 * 30)
		skillTable["mpCon"] = 8 + math.floor(level / 20 * 8)
		skillTable["buff"] = 1
	elseif id == 3001004 then -- 에로우 블로우
		skillTable["zeroAttack"] = 1
		skillTable["baseRange"] = 1
		skillTable["throwConsume"] = 1
		skillTable["damage"] = 180 + level * 4
		skillTable["mpCon"] = 8 + math.floor(level / 20 * 6)
		skillTable["weapon"] = {145, 146}
		skillTable["ableFinal"] = 1
	elseif id == 3001005 then -- 더블 샷
		skillTable["zeroAttack"] = 1
		skillTable["baseRange"] = 1
		skillTable["attackCount"] = 2
		skillTable["throwConsume"] = 2
		skillTable["damage"] = 90 + level * 2
		skillTable["mpCon"] = 10 + math.floor(level / 20 * 6)
		skillTable["weapon"] = {145, 146}
		skillTable["ableFinal"] = 1
	end
elseif type == 310 then
	if id == 3100000 then -- 보우 마스터리
		skillTable["calMastery"] = 10 + math.ceil(level / 2) * 5
		skillTable["bow_mastery"] = math.ceil(level / 2)
		skillTable["bow_acc"] = level
	elseif id == 3100001 then -- 파이널 어택 : 활
		skillTable["damage"] = 100 + level * 5
		skillTable["incFinalRand"] = level * 2
		skillTable["incFinalAttack"] = id
		skillTable["time"] = -1
		skillTable["buff"] = 1
		skillTable["mpCon"] = 0
		skillTable["motion"] = {"alert2"}
		skillTable["weapon"] = {145}
		skillTable["baseRange"] = 1
		skillTable["throwConsume"] = 1
	elseif id == 3101002 then -- 보우 부스터
		skillTable["incAttackSpeed"] = -2
		skillTable["hpCon"] = math.max(1, 30 - level)
		skillTable["mpCon"] = math.max(1, 30 - level)
		skillTable["time"] = level * 10
		skillTable["buff"] = 1
		skillTable["weapon"] = {145}
	elseif id == 3101003 then -- 파워 넉백
		skillTable["jumpAttack"] = 1
		skillTable["damage"] = 100 + level * 5
		skillTable["mobCount"] = level >= 20 and 6 or (1 + math.ceil(level / 5))
		skillTable["knockRand"] = 10 + level * 3
		skillTable["mpCon"] = level <= 10 and 8 or 15
		skillTable["knockRange"] = level <= 10 and 130 or 150
		skillTable["weapon"] = {145}
		skillTable["motion"] = {"swingT1", "swingT3"}
		skillTable["skillRange"] = Vector2(1, 0.6)
		skillTable["skillPos"] = Vector2(-0.5, 0.3)
	elseif id == 3101004 then -- 소울 에로우 : 활
		skillTable["incSoulArrow"] = 1
		skillTable["mpCon"] = level <= 10 and 15 or 20
		skillTable["time"] = 30 * level
		skillTable["buff"] = 1
		skillTable["weapon"] = {145}
	elseif id == 3101005 then -- 에로우 봄 : 활
		skillTable["zeroAttack"] = 1
		skillTable["baseRange"] = 1
		skillTable["mobCount"] = 6
		skillTable["arrowBomb"] = level <= 15 and Vector2(2.6, 2) or Vector2(3, 2)
		skillTable["debRand"] = 30 + level
		skillTable["debStun"] = 2 * math.ceil(level / 10)
		skillTable["mpCon"] = level <= 15 and 14 or 28
		skillTable["damage"] = level <= 20 and 69 + level * 3 or 130 + (level - 20) * 2
		skillTable["multiply"] = 1
		skillTable["weapon"] = {145}
		skillTable["throwConsume"] = 1
		skillTable["ableFinal"] = 1
		
		skillTable["debRand"] = 30 + level
		skillTable["debTime"] = math.ceil(level / 10) * 2
		skillTable["debBuffs"] = {
			{
				["key"] = "stun",
				["value"] = 1,
			},
		}
	end
elseif type == 320 then
	if id == 3200000 then -- 크로스보우 마스터리
		skillTable["calMastery"] = 10 + math.ceil(level / 2) * 5
		skillTable["cross_mastery"] = math.ceil(level / 2)
		skillTable["cross_acc"] = level
	elseif id == 3200001 then -- 파이널 어택 : 석궁
		skillTable["damage"] = 100 + level * 5
		skillTable["incFinalRand"] = level * 2
		skillTable["incFinalAttack"] = id
		skillTable["time"] = -1
		skillTable["buff"] = 1
		skillTable["mpCon"] = 0
		skillTable["motion"] = {"alert2"}
		skillTable["weapon"] = {146}
		skillTable["baseRange"] = 1
		skillTable["throwConsume"] = 1
	elseif id == 3201002 then -- 크로스보우 부스터
		skillTable["incAttackSpeed"] = -2
		skillTable["hpCon"] = math.max(1, 30 - level)
		skillTable["mpCon"] = math.max(1, 30 - level)
		skillTable["time"] = level * 10
		skillTable["buff"] = 1
		skillTable["weapon"] = {146}
	elseif id == 3201003 then -- 파워 넉백
		skillTable["jumpAttack"] = 1
		skillTable["damage"] = 100 + level * 5
		skillTable["mobCount"] = level >= 20 and 6 or (1 + math.ceil(level / 5))
		skillTable["knockRand"] = 10 + level * 3
		skillTable["mpCon"] = level <= 10 and 8 or 15
		skillTable["knockRange"] = level <= 10 and 130 or 150
		skillTable["weapon"] = {146}
		skillTable["motion"] = {"stabT1", "swingT1"}
		skillTable["skillRange"] = Vector2(1, 0.6)
		skillTable["skillPos"] = Vector2(-0.5, 0.3)
	elseif id == 3201004 then -- 소울 에로우 : 석궁
		skillTable["incSoulArrow"] = 1
		skillTable["mpCon"] = level <= 10 and 15 or 20
		skillTable["time"] = 30 * level
		skillTable["buff"] = 1
		skillTable["weapon"] = {146}
	elseif id == 3201005 then -- 아이언 에로우 : 석궁
		skillTable["zeroAttack"] = 1
		skillTable["baseRange"] = 4
		skillTable["mobCount"] = 6
		skillTable["damage"] = level <= 20 and 119 + level * 3 or 180 + (level - 20) * 2
		skillTable["mpCon"] = 22 + math.ceil(level / 5)
		skillTable["penetrate"] = 90
		skillTable["weapon"] = {146}
		skillTable["throwConsume"] = 1
		skillTable["ableFinal"] = 1
	end
elseif type == 311 then
	if id == 3110000 then -- 쓰러스트
		skillTable["speed"] = level <= 10 and level * 2 or level + 10
	elseif id == 3111003 then -- 파이어 샷
		skillTable["zeroAttack"] = 1
		skillTable["baseRange"] = 1
		skillTable["mobCount"] = 6
		skillTable["elemAttr"] = "F"
		skillTable["elemDamage"] = 20 + level
		skillTable["arrowBomb"] = level <= 15 and Vector2(2.6, 2) or Vector2(3, 2)
		if level <= 11 then
			skillTable["damage"] = 55 + level * 5
		elseif level <= 25 then
			skillTable["damage"] = 110 + (level - 11) * 3
		else
			skillTable["damage"] = 152 + math.floor((level - 25) / 5 * 8)
		end
		skillTable["mpCon"] = 20 + math.floor((level - 1) / 10) * 5
		skillTable["throwConsume"] = 1
		skillTable["weapon"] = {145}
		
		skillTable["debTime"] = math.floor(level / 10) * 3
		skillTable["debBuffs"] = {
			{
				["key"] = "fire",
				["value"] = 1,
			},
		}
	elseif id == 3111004 then -- 에로우 레인
		skillTable["mpCon"] = 18 + math.floor((level - 1) / 10) * 5
		skillTable["mobCount"] = 6
		if level <= 11 then
			skillTable["damage"] = 55 + level * 5
		elseif level <= 26 then
			skillTable["damage"] = 110 + (level - 11) * 3
		else
			skillTable["damage"] = 155 + (level - 25)
		end
		--skillTable["damage"] = level <= 10 and 55 + level * 5 or 110 + (level - 11) * 3
		skillTable["throwConsume"] = 1
		skillTable["skillRange"] = Vector2((170 + 20 * math.ceil((level - 1) / 10)) / 50, 2)
		skillTable["skillPos"] = Vector2(0, 0)
		skillTable["setRange"] = 1
		skillTable["weapon"] = {145}
	elseif id == 3111005 then -- 실버 호크
		skillTable["itemCon"] = 4006001
		skillTable["itemConNo"] = 1
		skillTable["mpCon"] = level <= 20 and 30 + level * 2 or 50 + level
		skillTable["buff"] = 1
		
		skillTable["debRand"] = 39 + level * 2
		skillTable["summonTime"] = level <= 20 and 100 + level * 3 or 120 + level * 2
		skillTable["summonDamage"] = level <= 20 and 20 + level * 3 or 40 + level * 2
		skillTable["summon"] = {
			["type"] = 2,
			["mainStat"] = "dex",
			["secondStat"] = "str",
			["debBuff"] = "stun",
		}
	elseif id == 3111006 then -- 스트레이프
		skillTable["zeroAttack"] = 1
		skillTable["baseRange"] = 1
		skillTable["mpCon"] = level <= 15 and 26 or 32
		skillTable["damage"] = 70 + level
		skillTable["attackCount"] = 4
		skillTable["throwConsume"] = 4
		skillTable["weapon"] = {145}
	end
elseif type == 321 then
	if id == 3210000 then -- 쓰러스트
		skillTable["speed"] = level <= 10 and level * 2 or level + 10
	elseif id == 3211003 then -- 아이스 샷
		skillTable["zeroAttack"] = 1
		skillTable["baseRange"] = 1
		skillTable["mobCount"] = 6
		skillTable["elemAttr"] = "I"
		skillTable["elemDamage"] = 20 + level
		skillTable["arrowBomb"] = level <= 15 and Vector2(2.6, 2) or Vector2(3, 2)
		skillTable["damage"] = level <= 15 and 98 + level * 2 or 114 + level
		skillTable["mpCon"] = 20 + math.floor((level - 1) / 10) * 5
		skillTable["throwConsume"] = 1
		skillTable["noCri"] = 1
		skillTable["weapon"] = {146}
		
		skillTable["debTime"] = math.ceil(level / 10)
		skillTable["debBuffs"] = {
			{
				["key"] = "freeze",
				["value"] = 1,
			},
		}
	elseif id == 3211004 then -- 에로우 이럽션
		skillTable["mpCon"] = 18 + math.floor((level - 1) / 10) * 5
		skillTable["mobCount"] = 6
		skillTable["damage"] = level <= 10 and 55 + level * 5 or 110 + (level - 11) * 3
		skillTable["throwConsume"] = 1
		skillTable["skillRange"] = Vector2((170 + 20 * math.ceil((level - 1) / 10)) / 50, 2)
		skillTable["skillPos"] = Vector2(0, 0)
		skillTable["setRange"] = 1
		skillTable["weapon"] = {146}
	elseif id == 3211005 then -- 골든 이글
		skillTable["itemCon"] = 4006001
		skillTable["itemConNo"] = 1
		skillTable["mpCon"] = level <= 20 and 30 + level * 2 or 50 + level
		skillTable["buff"] = 1
		
		skillTable["debRand"] = 39 + level * 2
		skillTable["summonTime"] = level <= 20 and 100 + level * 3 or 120 + level * 2
		skillTable["summonDamage"] = level <= 20 and 20 + level * 3 or 40 + level * 2
		skillTable["summon"] = {
			["type"] = 2,
			["mainStat"] = "dex",
			["secondStat"] = "str",
			["debBuff"] = "stun",
		}
	elseif id == 3211006 then -- 스트레이프
		skillTable["zeroAttack"] = 1
		skillTable["baseRange"] = 1
		skillTable["mpCon"] = level <= 15 and 26 or 32
		skillTable["damage"] = 70 + level
		skillTable["attackCount"] = 4
		skillTable["throwConsume"] = 4
		skillTable["weapon"] = {146}
	end
elseif type == 312 then
	if id == 3121000 then -- 메이플 용사
		skillTable["mpCon"] = 10 * math.ceil(level / 5)
		skillTable["time"] = level * 30
		skillTable["incMapleWarrior"] = math.ceil(level / 2)
		skillTable["buff"] = 1
		skillTable["partyBuff"] = Vector2(8, 6)
	elseif id == 3121002 then -- 샤프 아이즈
		skillTable["mpCon"] = level <= 25 and 21 + 8 * math.ceil(level / 10) or 70 - level
		skillTable["time"] = level * 10
		skillTable["incSharpEyesRand"] = math.ceil(level / 2)
		skillTable["incSharpEyesDamage"] = 110 + level
		skillTable["buff"] = 1
		skillTable["partyBuff"] = Vector2(8, 6)
	elseif id == 3121003 then -- 드래곤 펄스
		skillTable["zeroAttack"] = 1
		skillTable["setRange"] = 1
		skillTable["mpCon"] = 18 + 6 * math.ceil(level / 10)
		skillTable["mobCount"] = 3 + math.ceil(level / 10)
		skillTable["damage"] = 40 + 2 * level
		skillTable["throwConsume"] = 1
		skillTable["skillRange"] = Vector2(4.4, 0.4)
		skillTable["skillPos"] = Vector2(-2.2, 0.2)
		skillTable["rush"] = 440
		skillTable["weapon"] = {145}
	elseif id == 3121004 then -- 폭풍의 시
		skillTable["zeroAttack"] = 1
		skillTable["baseRange"] = 1
		skillTable["mpCon"] = level <= 25 and 4 + 2 * math.ceil(level / 10) or 9
		skillTable["damage"] = 50 + level + (math.ceil(level / 10) - 1) * 10
		skillTable["throwConsume"] = 1
		skillTable["rapid"] = 1
		skillTable["weapon"] = {145}
	elseif id == 3120005 then -- 보우 엑스퍼트
		skillTable["pad"] = level <= 2 and 0 or math.ceil((level - 2) / 3)
		skillTable["calMastery"] = 60 + math.ceil(level / 5) * 5
		skillTable["bow_mastery"] = math.ceil(level / 5)
	elseif id == 3121006 then -- 피닉스
		skillTable["mpCon"] = 40 + 2 * level
		skillTable["buff"] = 1
		
		skillTable["summonTime"] = 110 + level * 3
		skillTable["summonDamage"] = 300 + level * 5 + (math.ceil(level / 10) - 1) * 50
		skillTable["summon"] = {
			["type"] = 2,
			["mobCount"] = 4,
			["mainStat"] = "dex",
			["secondStat"] = "str",
			["elemAttr"] = "F",
		}
	elseif id == 3121007 then -- 햄스트링
		skillTable["mpCon"] = level <= 25 and 12 * math.ceil(level / 10) or 60 - level
		skillTable["time"] = 30 + 5 * level
		skillTable["incHamstring"] = level * 2
		skillTable["incHamstringTime"] = 5 * math.ceil(level / 10)
		skillTable["incHamstringRand"] = 10 + level
		skillTable["buff"] = 1
	elseif id == 3121008 then -- 집중
		skillTable["mpCon"] = level <= 25 and 12 * math.ceil(level / 10) or 60 - level
		skillTable["time"] = 30 + 5 * level
		skillTable["cooltime"] = 360
		skillTable["incPAD"] = 10 + math.ceil((level - 1) / 2)
		skillTable["incManaRate"] = level <= 20 and 2 * level or 20 + level
		skillTable["buff"] = 1
	end
elseif type == 322 then
	if id == 3221000 then -- 메이플 용사
		skillTable["mpCon"] = 10 * math.ceil(level / 5)
		skillTable["time"] = level * 30
		skillTable["incMapleWarrior"] = math.ceil(level / 2)
		skillTable["buff"] = 1
		skillTable["partyBuff"] = Vector2(8, 6)
	elseif id == 3221001 then -- 피어싱
		skillTable["zeroAttack"] = 1
		skillTable["baseRange"] = 1
		skillTable["mpCon"] = 8 + 10 * math.ceil(level / 10)
		skillTable["mobCount"] = 3 + math.ceil(level / 10)
		skillTable["damage"] = level <= 20 and 300 + 20 * level or 400 + 15 * level
		skillTable["penetrate"] = 120
		skillTable["throwConsume"] = 1
		skillTable["weapon"] = {146}
		skillTable["charge"] = 1
	elseif id == 3221002 then -- 샤프 아이즈
		skillTable["mpCon"] = level <= 25 and 21 + 8 * math.ceil(level / 10) or 70 - level
		skillTable["time"] = level * 10
		skillTable["incSharpEyesRand"] = math.ceil(level / 2)
		skillTable["incSharpEyesDamage"] = 110 + level
		skillTable["buff"] = 1
		skillTable["partyBuff"] = Vector2(8, 6)
	elseif id == 3221003 then -- 드래곤 펄스
		skillTable["zeroAttack"] = 1
		skillTable["setRange"] = 1
		skillTable["mpCon"] = 18 + 6 * math.ceil(level / 10)
		skillTable["mobCount"] = 3 + math.ceil(level / 10)
		skillTable["damage"] = 40 + 2 * level
		skillTable["throwConsume"] = 1
		skillTable["skillRange"] = Vector2(4.4, 0.4)
		skillTable["skillPos"] = Vector2(-2.2, 0.2)
		skillTable["rush"] = 440
		skillTable["weapon"] = {146}
	elseif id == 3220004 then -- 크로스보우 엑스퍼트
		skillTable["pad"] = level <= 2 and 0 or math.ceil((level - 2) / 3)
		skillTable["calMastery"] = 60 + math.ceil(level / 5) * 5
		skillTable["cross_mastery"] = math.ceil(level / 5)
	elseif id == 3221005 then -- 프리져		
		skillTable["mpCon"] = 40 + 2 * level
		skillTable["buff"] = 1
		
		skillTable["debRand"] = 100
		skillTable["summonTime"] = 110 + 3 * level
		skillTable["summonDamage"] = 250 + 5 * level + (math.ceil(level / 10) - 1) * 50
		skillTable["summon"] = {
			["type"] = 2,
			["mobCount"] = 4,
			["mainStat"] = "dex",
			["secondStat"] = "str",
			["elemAttr"] = "I",
			["debBuff"] = "freeze",
		}
	elseif id == 3221006 then -- 블라인드
		skillTable["mpCon"] = level <= 25 and 12 * math.ceil(level / 10) or 60 - level
		skillTable["time"] = 30 + 5 * level
		skillTable["incBlind"] = level
		skillTable["incBlindTime"] = 5 * math.ceil(level / 10)
		skillTable["incBlindRand"] = 10 + level
		skillTable["buff"] = 1
	elseif id == 3221007 then -- 스나이핑
		skillTable["zeroAttack"] = 1
		skillTable["baseRange"] = 1
		skillTable["mpCon"] = 41 - level
		skillTable["cooltime"] = level <= 5 and 265 - 15 * level or level <= 17 and 240 - 10 * level or level >= 30 and 4 or 155 - 5 * level
		skillTable["damage"] = 100
		skillTable["weapon"] = {146}
	end
end
return skillTable
end