return function (self,id,level) 
local skillTable = {}
local type = math.floor(id / 10000)
if type == 400 then
	if id == 4000000 then -- 님블 바디
		skillTable["acc"] = level
		skillTable["eva"] = level
	elseif id == 4000001 then -- 킨 아이즈
		skillTable["rangeX"] = 25 * level
	elseif id == 4001002 then -- 디스오더
		skillTable["jumpAttack"] = 1
		skillTable["mpCon"] = 5 + math.floor(level / 4)
		
		skillTable["calLevel"] = level
		skillTable["debTime"] = 4 + 3 * level - math.floor(level / 5)
		skillTable["debBuffs"] = {
			{
				["key"] = "pad",
				["value"] = level,
			},
			{
				["key"] = "pdd",
				["value"] = level,
			},
		}
	elseif id == 4001003 then -- 다크 사이트
		skillTable["incSpeed"] = level <= 12 and -32 + level * 2 or -math.max(0, 20 - level)
		skillTable["time"] = 10 * level
		skillTable["mpCon"] = math.max(25 - level, 1)
		skillTable["incDarkSight"] = 1
		skillTable["buff"] = 1
	elseif id == 4001334 then -- 더블 스탭
		skillTable["jumpAttack"] = 1
		skillTable["attackCount"] = 2
		skillTable["damage"] = 100 + 2 * level
		skillTable["mpCon"] = 8 + math.floor(level / 20 * 8)
		skillTable["weapon"] = {133}
		skillTable["attackSpeed"] = -2
	elseif id == 4001344 then -- 럭키 세븐
		skillTable["zeroAttack"] = 1
		skillTable["baseRange"] = 2
		skillTable["jumpAttack"] = 1
		skillTable["attackCount"] = 2
		skillTable["throwConsume"] = 2
		skillTable["damage"] = 70 + 4 * level
		skillTable["mpCon"] = 8 + math.floor(level / 20 * 8)
		skillTable["weapon"] = {147}
	end
elseif type == 410 then
	if id == 4100000 then -- 자벨린 마스터리
		skillTable["calMastery"] = 10 + math.ceil(level / 2) * 5
		skillTable["claw_mastery"] = math.ceil(level / 2)
		skillTable["claw_acc"] = level
		skillTable["recharge"] = level * 10
	elseif id == 4100001 then -- 크리티컬 스로우
		skillTable["criticalProp"] = 20 + level
		skillTable["criticalDamage"] = 10 + 3 * level
	elseif id == 4100002 then -- 인듀어
		skillTable["ropeTime"] = math.max(10, 30 - level)
		skillTable["recoverHp"] = level * 3
		skillTable["recoverMpV"] = level
	elseif id == 4101003 then -- 자벨린 부스터
		skillTable["incAttackSpeed"] = -2
		skillTable["hpCon"] = math.max(1, 30 - level)
		skillTable["mpCon"] = math.max(1, 30 - level)
		skillTable["time"] = level * 10
		skillTable["buff"] = 1
		skillTable["weapon"] = {147}
	elseif id == 4101004 then -- 헤이스트
		skillTable["mpCon"] = level <= 10 and 15 or 30
		skillTable["incSpeed"] = 2 * level
		skillTable["incJump"] = level
		skillTable["time"] = 10 * level
		skillTable["buff"] = 1
		skillTable["partyBuff"] = level <= 10 and Vector2(5, 3) or Vector2(6, 4)
	elseif id == 4101005 then -- 드레인
		skillTable["zeroAttack"] = 1
		skillTable["baseRange"] = 2
		skillTable["jumpAttack"] = 1
		skillTable["throwConsume"] = 1
		
		skillTable["drainHPR"] = 15 + level
		skillTable["damage"] = 100 + level * 2
		skillTable["mpCon"] = level <= 15 and 12 or 24
		skillTable["weapon"] = {147}
	end
elseif type == 420 then
	if id == 4200000 then -- 대거 마스터리
		skillTable["calMastery"] = 10 + math.ceil(level / 2) * 5
		skillTable["dagger_mastery"] = math.ceil(level / 2)
		skillTable["dagger_acc"] = level
	elseif id == 4200001 then -- 인듀어
		skillTable["ropeTime"] = math.max(10, 30 - level)
		skillTable["recoverHp"] = 20 + level * 4
		skillTable["recoverMpV"] = level * 2
	elseif id == 4201002 then -- 대거 부스터
		skillTable["incAttackSpeed"] = -2
		skillTable["hpCon"] = math.max(1, 30 - level)
		skillTable["mpCon"] = math.max(1, 30 - level)
		skillTable["time"] = level * 10
		skillTable["buff"] = 1
		skillTable["weapon"] = {133}
	elseif id == 4201003 then -- 헤이스트
		skillTable["mpCon"] = level <= 10 and 15 or 30
		skillTable["incSpeed"] = 2 * level
		skillTable["incJump"] = level
		skillTable["time"] = 10 * level
		skillTable["buff"] = 1
		skillTable["partyBuff"] = level <= 10 and Vector2(5, 3) or Vector2(6, 4)
	elseif id == 4201004 then -- 스틸
		skillTable["jumpAttack"] = 1
		skillTable["mpCon"] = level <= 15 and 12 or 24
		skillTable["damage"] = 40 + level * 3
		skillTable["mobCount"] = 1 + math.ceil(level / 10)
		skillTable["stealRand"] = 10 + level
		skillTable["skillRange"] = Vector2(2.5, 0.63)
		skillTable["skillPos"] = Vector2(-2.5 / 2, 0.63 / 2)
		
		skillTable["debRand"] = 10 + level
		skillTable["debTime"] = 1 + math.ceil(level / 10)
		skillTable["debBuffs"] = {
			{
				["key"] = "stun",
				["value"] = 1,
			},
		}
	elseif id == 4201005 then -- 새비지 블로우
		if level <= 10 then
			skillTable["attackCount"] = 4
			skillTable["mpCon"] = 15
			skillTable["damage"] = 36 + 4 * level
		elseif level <= 20 then
			skillTable["attackCount"] = 5
			skillTable["mpCon"] = 18
			skillTable["damage"] = 60 + 2 * (level - 11)
		else
			skillTable["attackCount"] = 6
			skillTable["mpCon"] = 27
			skillTable["damage"] = 70 + level - 20
		end
		skillTable["jumpAttack"] = 1
		skillTable["skillRange"] = Vector2(0.8, 0.66)
		skillTable["skillPos"] = Vector2(-0.8 / 2, 0.66 / 2)
		skillTable["weapon"] = {133}
	end
elseif type == 411 then
	if id == 4110000 then -- 알케미스트
		skillTable["alchemist"] = level <= 10 and level * 3 or 10 + level * 2
	elseif id == 4111001 then -- 메소 업
		skillTable["mpCon"] = 45 + math.floor((level - 1) / 5) * 5
		skillTable["incMeso"] = level <= 10 and level * 3 or 10 + level * 2
		skillTable["time"] = 20 + level * 5
		skillTable["buff"] = 1
		skillTable["partyBuff"] = level <= 10 and Vector2(5, 3) or Vector2(6, 4)
	elseif id == 4111002 then -- 쉐도우 파트너
		skillTable["mpCon"] = math.max(55, 205 - level * 5)
		skillTable["incShadow"] = 20 + level * 2
		skillTable["incShadowS"] = level + 20
		skillTable["itemCon"] = 4006001
		skillTable["itemConNo"] = 1
		if level <= 10 then
			skillTable["time"] = 60
		elseif level <= 20 then
			skillTable["time"] = 120
		else
			skillTable["time"] = 180
		end
		skillTable["buff"] = 1
	elseif id == 4111005 then -- 어벤져
		skillTable["zeroAttack"] = 1
		skillTable["baseRange"] = 5
		skillTable["jumpAttack"] = 1
		skillTable["throwConsume"] = 3
		skillTable["skillPosY"] = 13
		if level <= 10 then
			skillTable["mobCount"] = 4
			skillTable["damage"] = 60 + 5 * level
			skillTable["mpCon"] = 16
		elseif level <= 20 then
			skillTable["mobCount"] = 5
			skillTable["damage"] = 70 + 4 * level
			skillTable["mpCon"] = 23
		else
			skillTable["mobCount"] = 6
			skillTable["damage"] = 90 + 3 * level
			skillTable["mpCon"] = 30
		end
		skillTable["weapon"] = {147}
	elseif id == 4111006 then -- 플래시 점프
		skillTable["mpCon"] = level <= 10 and 63 - 3 * level or math.max(13, 53 - 2 * level)
		skillTable["flashJump"] = level * 10
		skillTable["move"] = 1
	end
elseif type == 421 then
	if id == 4210000 then --  쉴드 마스터리
		skillTable["shieldPDDR"] = level * 5
	elseif id == 4211001 then -- 챠크라
		skillTable["chakra"] = 60 + 8 * level
		skillTable["incChakra"] = math.max(70, 100 - level)
		--skillTable["mpCon"] = 9 + math.ceil(level / 10) * 6
		skillTable["time"] = 1
		skillTable["buff"] = 1
	elseif id == 4211002 then -- 어썰터
		skillTable["jumpAttack"] = 1
		skillTable["mpCon"] = 5 + math.ceil(level / 10) * 7
		skillTable["damage"] = level <= 20 and 250 + level * 10 or 350 + 5 * level
		skillTable["skillRange"] = Vector2(2.5, 1.2)
		skillTable["skillPos"] = Vector2(-1.25, 0.6)
		skillTable["noHitCancel"] = 1
		skillTable["hitMove"] = 250
		skillTable["hitMoveDir"] = 1
		skillTable["ignoreDD"] = 1
		skillTable["weapon"] = {133}
		skillTable["moveSkill"] = 1
		
		skillTable["debRand"] = 20 + level * 2
		skillTable["debTime"] = 1 + math.ceil(level / 10)
		skillTable["debBuffs"] = {
			{
				["key"] = "stun",
				["value"] = 1,
			},
		}
	elseif id == 4211003 then -- 픽파킷
		skillTable["mpCon"] = 30 + level
		skillTable["incPickpocket"] = 20 + level * 2
		skillTable["incPickValue"] = 100 + level * 5
		skillTable["time"] = 60 + math.ceil(level / 5) * 30
		skillTable["buff"] = 1
	elseif id == 4211004 then -- 시브즈
		skillTable["jumpAttack"] = 1
		skillTable["mpCon"] = 7 + math.ceil(level / 5) * 3
		skillTable["damage"] = (level <= 24 and 150 or 160) + math.ceil((level - 1) % 6) * 10 + (math.ceil(level / 6) - 1) * 10
		skillTable["mobCount"] = 1 + math.min(5, math.ceil(level / 6))
		skillTable["calCount"] = math.min(5, math.ceil(level / 6))
		skillTable["skillRange"] = Vector2(1.5, 0.6)
		skillTable["skillPos"] = Vector2(-0.75, 0.3)
		skillTable["splash2"] = Vector2(2.5 + 0.1 * math.ceil(level / 6), 1)
		skillTable["weapon"] = {133}
	elseif id == 4211005 then -- 메소 가드
		skillTable["mpCon"] = 15 + math.ceil(level / 5) * 5
		skillTable["incMesoGuard"] = math.max(10, 80 - level)
		skillTable["time"] = 120 + level * 3
		skillTable["buff"] = 1
	elseif id == 4211006 then -- 메소 익스플로전
		skillTable["mpCon"] = 12 + math.ceil(level / 10) * 6
		skillTable["mesoValue"] = level <= 21 and 480 + level * 20 or 700 + level * 10
		skillTable["mesoCount"] = 8 + math.ceil(level / 5) * 2
		skillTable["mobCount"] = 6
	end
elseif type == 412 then
	if id == 4121000 then --  메이플 용사
		skillTable["mpCon"] = 10 * math.ceil(level / 5)
		skillTable["time"] = level * 30
		skillTable["incMapleWarrior"] = math.ceil(level / 2)
		skillTable["buff"] = 1
		skillTable["partyBuff"] = Vector2(8, 6)
	elseif id == 4120002 then -- 페이크
		skillTable["fake"] = level
	elseif id == 4121003 then -- 쇼다운
		skillTable["mpCon"] = level <= 25 and 20 + level or 70 - level
		skillTable["damage"] = 100
		skillTable["debTime"] = 120
		skillTable["debBuffs"] = {
			{
				["key"] = "showdown",
				["value"] = 10 + level,
			},
		}
	elseif id == 4121004 then -- 닌자 앰부쉬
		
	elseif id == 4120005 then -- 베놈
		skillTable["venomDamage"] = 30 + level
		skillTable["venomTime"] = 2 + math.ceil(level / 10) * 2
		skillTable["venomRand"] = 10 + 2 * math.ceil(level / 3)
	elseif id == 4121006 then -- 스피릿 자벨린
		skillTable["mpCon"] = 10 + 5 * math.ceil(level / 10)
		skillTable["time"] = 60 + 2 * level
		skillTable["incSpiritClaw"] = 1
		skillTable["cooltime"] = 1
		skillTable["buff"] = 1
		skillTable["weapon"] = {147}
	elseif id == 4121007 then -- 트리플 스로우
		skillTable["zeroAttack"] = 1
		skillTable["baseRange"] = 2
		skillTable["jumpAttack"] = 1
		skillTable["attackCount"] = 3
		skillTable["throwConsume"] = 3
		skillTable["damage"] = level <= 20 and 100 + 2 * level or 120 + level
		skillTable["mpCon"] = 10 + math.ceil(level / 3)
		skillTable["weapon"] = {147}
	elseif id == 4121009 then -- 용사의 의지
		skillTable["calTime"] = math.max(1, 11 - level)
		skillTable["mpCon"] = 30
		skillTable["herowill"] = 1
		skillTable["cooltime"] = math.max(60, 660 - 60 * level)
		skillTable["buff"] = 1
	end
elseif type == 422 then
	if id == 4221000 then --  메이플 용사
		skillTable["mpCon"] = 10 * math.ceil(level / 5)
		skillTable["time"] = level * 30
		skillTable["incMapleWarrior"] = math.ceil(level / 2)
		skillTable["buff"] = 1
		skillTable["partyBuff"] = Vector2(8, 6)
	elseif id == 4221001 then -- 암살
		skillTable["hideTime"] = 2 + 2 * math.ceil(level / 10)
		skillTable["aRand"] = 30 + 2 * level
		skillTable["aCriticalDamage"] = 5 * level
		skillTable["mpCon"] = level <= 25 and 20 + level or 70 - level
		skillTable["attackCount"] = 3
		skillTable["damage"] = level <= 10 and 150 + 20 * level or level <= 20 and 200 + 15 * level or 300 + 10 * level
		skillTable["noCri"] = 1
		skillTable["skillRange"] = Vector2(1.1, 1.2)
		skillTable["skillPos"] = Vector2(-0.5, 0.6)
		skillTable["weapon"] = {133}
	elseif id == 4220002 then -- 페이크
		skillTable["fake"] = 10 + level
	elseif id == 4221007 then -- 부메랑 스탭
		skillTable["jumpAttack"] = 1
		skillTable["mpCon"] = level <= 25 and 13 + 3 * math.ceil(level / 5) or 26
		skillTable["attackCount"] = 2
		skillTable["mobCount"] = 1 + math.ceil(level / 10)
		skillTable["damage"] = level <= 20 and 250 + 10 * level or 350 + 5 * level
		skillTable["delayTime"] = 1260
		skillTable["skillRange"] = Vector2(3, 1.1)
		skillTable["skillPos"] = Vector2(-1.5, 0.55)
		skillTable["weapon"] = {133}
		
		skillTable["debRand"] = 30 + level * 2
		skillTable["debTime"] = 1 + math.ceil(level / 10)
		skillTable["debBuffs"] = {
			{
				["key"] = "stun",
				["value"] = 1,
			},
		}
	elseif id == 4221008 then -- 용사의 의지
		skillTable["calTime"] = math.max(1, 11 - level)
		skillTable["mpCon"] = 30
		skillTable["herowill"] = 1
		skillTable["cooltime"] = math.max(60, 660 - 60 * level)
		skillTable["buff"] = 1
	end
end
return skillTable
end