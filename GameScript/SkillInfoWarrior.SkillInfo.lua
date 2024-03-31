return function (self,id,level) 
local skillTable = {}
local type = math.floor(id / 10000)
if type == 100 then
	if id == 1000000 then -- HP 회복력 향상
		skillTable["recoverHp"] = level * 3 + math.floor(level / 16) * 2
		skillTable["recoverTime"] = 5
	elseif id == 1000001 then -- HP 증가량 향상
		skillTable["levelHp"] = level * 4
		skillTable["apHp"] = level * 3
	elseif id == 1000002 then -- 인듀어
		skillTable["ropeTime"] = 34 - level * 3
	elseif id == 1001003 then -- 아이언 바디
		skillTable["incPDD"] = level * 2
		skillTable["time"] = 75 + 10 * level + math.floor(level / 4) * 5
		skillTable["mpCon"] = 8 + math.floor(level / 4) + math.floor(level / 10)
		skillTable["buff"] = 1
	elseif id == 1001004 then -- 파워 스트라이크
		skillTable["jumpAttack"] = 1
		skillTable["damage"] = 160 + level * 5
		skillTable["mpCon"] = math.floor(4 + 2 * (level / 5))
		skillTable["ableFinal"] = 1
	elseif id == 1001005 then -- 슬래시 블러스트
		skillTable["jumpAttack"] = 1
		skillTable["mobCount"] = 6
		skillTable["damage"] = 70 + level * 3
		skillTable["hpCon"] = 8 + 2 * math.floor(level / 5)
		skillTable["mpCon"] = 6 + 2 * math.floor(level / 5)
		skillTable["splash"] = level <= 10 and 130 or 150
		skillTable["ableFinal"] = 2
	end
elseif type == 110 then
	if id == 1100000 then -- 소드 마스터리
		skillTable["calMastery"] = 10 + math.ceil(level / 2) * 5
		skillTable["sword_mastery"] = math.ceil(level / 2)
		skillTable["sword_acc"] = level
	elseif id == 1100001 then -- 엑스 마스터리
		skillTable["calMastery"] = 10 + math.ceil(level / 2) * 5
		skillTable["axe_mastery"] = math.ceil(level / 2)
		skillTable["axe_acc"] = level
	elseif id == 1100002 then -- 파이널 어택 : 검
		skillTable["damage"] = 100 + level * 5
		skillTable["incFinalRand"] = level * 2
		skillTable["incFinalAttack"] = id
		skillTable["time"] = -1
		skillTable["buff"] = 1
		skillTable["mpCon"] = 0
		skillTable["motion"] = {"alert2"}
		skillTable["weapon"] = {130, 140}
	elseif id == 1100003 then -- 파이널 어택 : 도끼
		skillTable["damage"] = 100 + level * 5
		skillTable["incFinalRand"] = level * 2
		skillTable["incFinalAttack"] = id
		skillTable["time"] = -1
		skillTable["buff"] = 1
		skillTable["mpCon"] = 0
		skillTable["motion"] = {"alert2"}
		skillTable["weapon"] = {131, 141}
	elseif id == 1101004 then -- 소드 부스터
		skillTable["incAttackSpeed"] = -2
		skillTable["hpCon"] = math.max(1, 30 - level)
		skillTable["mpCon"] = math.max(1, 30 - level)
		skillTable["time"] = level * 10
		skillTable["buff"] = 1
		skillTable["weapon"] = {130, 140}
	elseif id == 1101005 then -- 엑스 부스터
		skillTable["incAttackSpeed"] = -2
		skillTable["hpCon"] = math.max(1, 30 - level)
		skillTable["mpCon"] = math.max(1, 30 - level)
		skillTable["time"] = level * 10
		skillTable["buff"] = 1
		skillTable["weapon"] = {131, 141}
	elseif id == 1101006 then -- 분노
		skillTable["mpCon"] = 12 + math.floor(8 * level / 20)
		skillTable["incPAD"] = 2 + math.floor(level / 2)
		skillTable["incPDD"] = -(2 + math.floor(level / 2))
		skillTable["time"] = 40 + level * 6
		skillTable["buff"] = 1
		skillTable["partyBuff"] = level <= 10 and Vector2(5, 3) or Vector2(6, 4)
	elseif id == 1101007 then -- 파워 가드
		skillTable["incPowerGuard"] = 10 + level
		skillTable["mpCon"] = 15 * math.floor(1 + (level - 1) / 15)
		skillTable["time"] = 3 * level
		skillTable["buff"] = 1
	end
elseif type == 120 then
	if id == 1200000 then -- 소드 마스터리
		skillTable["calMastery"] = 10 + math.ceil(level / 2) * 5
		skillTable["sword_mastery"] = math.ceil(level / 2)
		skillTable["sword_acc"] = level
	elseif id == 1200001 then -- 메이스 마스터리
		skillTable["calMastery"] = 10 + math.ceil(level / 2) * 5
		skillTable["mace_mastery"] = math.ceil(level / 2)
		skillTable["mace_acc"] = level
	elseif id == 1200002 then -- 파이널 어택 : 검
		skillTable["damage"] = 100 + level * 5
		skillTable["incFinalRand"] = level * 2
		skillTable["incFinalAttack"] = id
		skillTable["time"] = -1
		skillTable["buff"] = 1
		skillTable["mpCon"] = 0
		skillTable["motion"] = {"alert2"}
		skillTable["weapon"] = {130, 140}
	elseif id == 1200003 then -- 파이널 어택 : 둔기
		skillTable["damage"] = 100 + level * 5
		skillTable["incFinalRand"] = level * 2
		skillTable["incFinalAttack"] = id
		skillTable["time"] = -1
		skillTable["buff"] = 1
		skillTable["mpCon"] = 0
		skillTable["motion"] = {"alert2"}
		skillTable["weapon"] = {132, 142}
	elseif id == 1201004 then -- 소드 부스터
		skillTable["incAttackSpeed"] = -2
		skillTable["hpCon"] = math.max(1, 30 - level)
		skillTable["mpCon"] = math.max(1, 30 - level)
		skillTable["time"] = level * 10
		skillTable["buff"] = 1
		skillTable["weapon"] = {130, 140}
	elseif id == 1201005 then -- 메이스 부스터
		skillTable["incAttackSpeed"] = -2
		skillTable["hpCon"] = math.max(1, 30 - level)
		skillTable["mpCon"] = math.max(1, 30 - level)
		skillTable["time"] = level * 10
		skillTable["buff"] = 1
		skillTable["weapon"] = {132, 142}
	elseif id == 1201006 then -- 위협
		skillTable["mpCon"] = 15 + math.floor(level / 2)
		skillTable["buff"] = 1
		skillTable["mobCount"] = 6
		if level <= 10 then
			skillTable["skillRange"] = Vector2(5, 3)
			skillTable["skillPos"] = Vector2(0, 0)
		else
			skillTable["skillRange"] = Vector2(6, 4)
			skillTable["skillPos"] = Vector2(0, 0)
		end
		skillTable["calLevel"] = level
		
		skillTable["canBoss"] = 1
		skillTable["debRand"] = 30 + level
		skillTable["debTime"] = 40 + level * 2
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
		skillTable["subTime"] = 4 + math.floor(level / 20) * 4
		skillTable["subBuffs"] = {
			{
				["key"] = "blind",
				["value"] = level,
			},
		}
	elseif id == 1201007 then -- 파워 가드
		skillTable["incPowerGuard"] = 10 + level
		skillTable["mpCon"] = 15 * math.floor(1 + (level - 1) / 15)
		skillTable["time"] = 3 * level
		skillTable["buff"] = 1
	end
elseif type == 130 then
	if id == 1300000 then -- 스피어 마스터리
		skillTable["calMastery"] = 10 + math.ceil(level / 2) * 5
		skillTable["spear_mastery"] = math.ceil(level / 2)
		skillTable["spear_acc"] = level
	elseif id == 1300001 then -- 폴암 마스터리
		skillTable["calMastery"] = 10 + math.ceil(level / 2) * 5
		skillTable["poleArm_mastery"] = math.ceil(level / 2)
		skillTable["poleArm_acc"] = level
	elseif id == 1300002 then -- 파이널 어택 : 창
		skillTable["damage"] = 100 + level * 5
		skillTable["incFinalRand"] = level * 2
		skillTable["incFinalAttack"] = id
		skillTable["time"] = -1
		skillTable["buff"] = 1
		skillTable["mpCon"] = 0
		skillTable["motion"] = {"alert2"}
		skillTable["weapon"] = {143}
	elseif id == 1300003 then -- 파이널 어택 : 폴암
		skillTable["damage"] = 100 + level * 5
		skillTable["incFinalRand"] = level * 2
		skillTable["incFinalAttack"] = id
		skillTable["time"] = -1
		skillTable["buff"] = 1
		skillTable["mpCon"] = 0
		skillTable["motion"] = {"alert2"}
		skillTable["weapon"] = {144}
	elseif id == 1301004 then -- 스피어 부스터
		skillTable["incAttackSpeed"] = -2
		skillTable["hpCon"] = math.max(1, 30 - level)
		skillTable["mpCon"] = math.max(1, 30 - level)
		skillTable["time"] = level * 10
		skillTable["buff"] = 1
		skillTable["weapon"] = {143}
	elseif id == 1301005 then -- 폴암 부스터
		skillTable["incAttackSpeed"] = -2
		skillTable["hpCon"] = math.max(1, 30 - level)
		skillTable["mpCon"] = math.max(1, 30 - level)
		skillTable["time"] = level * 10
		skillTable["buff"] = 1
		skillTable["weapon"] = {144}
	elseif id == 1301006 then -- 아이언 월
		skillTable["incPDD"] = level
		skillTable["incMDD"] = level
		skillTable["mpCon"] = 12 * math.floor(1 + (level - 1) / 10)
		skillTable["time"] = 15 * level
		skillTable["buff"] = 1
		skillTable["partyBuff"] = Vector2(6, 4)
	elseif id == 1301007 then -- 하이퍼 바디
		skillTable["incHPR"] = level * 2
		skillTable["incMPR"] = level * 2
		skillTable["mpCon"] = 20 * math.floor(1 + (level - 1) / 10)
		skillTable["time"] = 10 * level
		skillTable["buff"] = 1
		skillTable["partyBuff"] = level <= 15 and Vector2(5, 3) or Vector2(6, 4)
	end
elseif type == 111 then
	if id == 1110000 then -- MP 회복력 향상
		skillTable["recoverMpV"] = level * 2
	elseif id == 1110001 then --  쉴드 마스터리
		skillTable["shieldPDDR"] = level * 5
	elseif id == 1111002 then -- 콤보 어택
		skillTable["comboLevel"] = level
		skillTable["incCombo"] = math.min(5, 2 + math.ceil(level / 10))
		skillTable["comboDamage"] = 100 + math.floor(20 * level / 30)
		skillTable["mpCon"] = 20 + math.ceil(level / 10) * 5
		skillTable["time"] = 80 + math.ceil(level / 5) * 20
		skillTable["buff"] = 1
	elseif id == 1111003 then -- 패닉 : 검
		skillTable["jumpAttack"] = 1
		skillTable["mpCon"] = 3 + math.ceil(level / 10) * 7
		skillTable["damage"] = 150 + math.floor(level / 30 * 200)
		skillTable["conCombo"] = 1
		skillTable["weapon"] = {130, 140}
		
		-- 패닉은 암흑이 실제로 없다
        skillTable["debRand"] = 30 + 2 * level
        --skillTable["debTime"] = 3 + math.ceil(level / 10) * 2
        --skillTable["debBuffs"] = {
        --    {
        --        ["key"] = "acc",
        --        ["value"] = level,
        --    },
        --}
	elseif id == 1111004 then -- 패닉 : 도끼
		skillTable["jumpAttack"] = 1
		skillTable["mpCon"] = 3 + math.ceil(level / 10) * 7
		skillTable["damage"] = 150 + math.floor(level / 30 * 200)
		skillTable["conCombo"] = 1
		skillTable["weapon"] = {131, 141}
		
		skillTable["debRand"] = 30 + 2 * level
	elseif id == 1111005 then -- 코마 : 검
		skillTable["jumpAttack"] = 1
		skillTable["hpCon"] = 10 + math.ceil(level / 10) * 5
		skillTable["mpCon"] = 5 + math.ceil(level / 10) * 7
		skillTable["damage"] = 80 + level * 4
		skillTable["conCombo"] = 1
		skillTable["mobCount"] = 6
		skillTable["splash"] = 120 + math.ceil(level / 10) * 10
		skillTable["weapon"] = {130, 140}
		
		skillTable["debRand"] = 30 + level * 2
		skillTable["debTime"] = 1 + math.ceil(level / 10)
		skillTable["debBuffs"] = {
			{
				["key"] = "stun",
				["value"] = 1,
			},
		}
	elseif id == 1111006 then -- 코마 : 도끼
		skillTable["jumpAttack"] = 1
		skillTable["hpCon"] = 10 + math.ceil(level / 10) * 5
		skillTable["mpCon"] = 5 + math.ceil(level / 10) * 7
		skillTable["damage"] = 80 + level * 4
		skillTable["conCombo"] = 1
		skillTable["mobCount"] = 6
		skillTable["splash"] = 120 + math.ceil(level / 10) * 10
		skillTable["weapon"] = {131, 141}
		
		skillTable["debRand"] = 30 + level * 2
		skillTable["debTime"] = 1 + math.ceil(level / 10)
		skillTable["debBuffs"] = {
			{
				["key"] = "stun",
				["value"] = 1,
			},
		}
	elseif id == 1111008 then -- 샤우트
		skillTable["calRange"] = 100 + math.ceil(level / 3) * 10
		skillTable["mpCon"] = 4 + math.ceil(level / 10) * 4
		skillTable["damage"] = level <= 10 and 10 + level or 20 + math.floor((level - 10) / 2)
		skillTable["skillRange"] = Vector2(2 * (100 + math.ceil(level / 3) * 10) / 100, 2 * (75 + math.floor(math.ceil(level / 3) * 15 / 2)) / 100)
		skillTable["skillPos"] = Vector2(0, 0)
		skillTable["mobCount"] = 6
		
		skillTable["debRand"] = level <= 15 and 50 + 2 * level or 65 + level
		skillTable["debTime"] = 4 + math.ceil(level / 5)
		skillTable["debBuffs"] = {
			{
				["key"] = "stun",
				["value"] = 1,
			},
		}
	end
elseif type == 121 then
	if id == 1210000 then -- MP 회복력 향상
		skillTable["recoverMpV"] = level * 2
	elseif id == 1210001 then --  쉴드 마스터리
		skillTable["shieldPDDR"] = level * 5
	elseif id == 1211002 then -- 차지 블로우
		skillTable["jumpAttack"] = 1
        if level <= 10 then
            skillTable["damage"] = 160 + level * 2
        elseif level <= 20 then
            skillTable["damage"] = 150 + level * 3
        else
            skillTable["damage"] = 130 + level * 4
        end
		skillTable["splash"] = 120 + math.ceil(level / 5) * 10
		skillTable["mobCount"] = 6
		skillTable["conBuff"] = "incElemAttr"
		skillTable["hpCon"] = 10 + math.ceil(level / 10) * 5
		skillTable["mpCon"] = 5 + math.ceil(level / 10) * 7
		
		skillTable["debRand"] = 30 + level * 2
		skillTable["debTime"] = 2 * math.ceil(level / 10)
		skillTable["debBuffs"] = {
			{
				["key"] = "stun",
				["value"] = 1,
			},
		}
	elseif id == 1211003 then -- 플레임 차지 : 검
		skillTable["incChargeBase"] = 110 + level
		skillTable["incChargeDamage"] = 110 + level
		skillTable["incElemAttr"] = 2
		skillTable["mpCon"] = 20 + math.ceil(level / 10) * 5
		skillTable["time"] = math.floor(level / 30 * 200)
		skillTable["buff"] = 1
		skillTable["weapon"] = {130, 140}
	elseif id == 1211004 then -- 파이어 차지 : 둔기
		skillTable["incChargeBase"] = 110 + level
		skillTable["incChargeDamage"] = 110 + level
		skillTable["incElemAttr"] = 2
		skillTable["mpCon"] = 20 + math.ceil(level / 10) * 5
		skillTable["time"] = math.floor(level / 30 * 200)
		skillTable["buff"] = 1
		skillTable["weapon"] = {132, 142}
	elseif id == 1211005 then -- 블리자드 차지 : 검
		skillTable["incChargeBase"] = 100 + math.floor(level / 30 * 10)
		skillTable["incChargeDamage"] = 100 + math.floor(level / 30 * 10)
		skillTable["incElemAttr"] = 3
		skillTable["mpCon"] = 20 + math.ceil(level / 10) * 5
		skillTable["time"] = math.floor(level / 30 * 200)
		skillTable["buff"] = 1
		skillTable["weapon"] = {130, 140}
	elseif id == 1211006 then -- 아이스 차지 : 둔기
		skillTable["incChargeBase"] = 100 + math.floor(level / 30 * 10)
		skillTable["incChargeDamage"] = 100 + math.floor(level / 30 * 10)
		skillTable["incElemAttr"] = 3
		skillTable["mpCon"] = 20 + math.ceil(level / 10) * 5
		skillTable["time"] = math.floor(level / 30 * 200)
		skillTable["buff"] = 1
		skillTable["weapon"] = {132, 142}
	elseif id == 1211007 then -- 선더 차지 : 검
		skillTable["incChargeBase"] = 100 + math.floor(level / 30 * 25)
		skillTable["incLightningDamage"] = 100 + math.floor(level / 30 * 25)
		skillTable["incElemAttr"] = 1
		skillTable["mpCon"] = 20 + math.ceil(level / 10) * 5
		skillTable["time"] = math.floor(level / 30 * 200)
		skillTable["buff"] = 1
		skillTable["weapon"] = {130, 140}
	elseif id == 1211008 then -- 라이트닝 차지 : 둔기
		skillTable["incChargeBase"] = 100 + math.floor(level / 30 * 25)
		skillTable["incLightningDamage"] = 100 + math.floor(level / 30 * 25)
		skillTable["incElemAttr"] = 1
		skillTable["mpCon"] = 20 + math.ceil(level / 10) * 5
		skillTable["time"] = math.floor(level / 30 * 200)
		skillTable["buff"] = 1
		skillTable["weapon"] = {132, 142}
	end
elseif type == 131 then
	if id == 1310000 then -- 엘리먼트 레지스턴스
		skillTable["resistance_A"] = level <= 10 and 10 + level * 2 or 20 + level
	elseif id == 1311001 or id == 1311002 then -- 버스터
		skillTable["jumpAttack"] = 1
		if level <= 15 then
			skillTable["motion"] = {"burster1"}
			skillTable["mobCount"] = math.ceil(level / 5)
			skillTable["attackCount"] = 2
		else
			skillTable["motion"] = {"burster2"}
			skillTable["mobCount"] = math.ceil((level - 15) / 5)
			skillTable["attackCount"] = 3
		end
		if level <= 10 then
			skillTable["damage"] = 50 + level * 5
		elseif level <= 20 then
			skillTable["damage"] = 60 + level * 4
		else
			skillTable["damage"] = 80 + level * 3
		end
		skillTable["mpCon"] = 6 + math.ceil(level / 5) * 3
		
		local x = 120 + math.ceil(level / 10) * 10 + 16
		local y = 40 + math.ceil(level / 10) * 10
		skillTable["skillRange"] = Vector2(x / 100, y / 100)
		skillTable["skillPos"] = Vector2(-(52 + math.ceil(level / 10) * 5) / 100, y / 200)
		
		if id == 1311001 then
			skillTable["weapon"] = {143}
		else
			skillTable["weapon"] = {144}
		end
	elseif id == 1311003 or id == 1311004 then -- 쓰레셔
		skillTable["jumpAttack"] = 1
		skillTable["mobCount"] = 6
		if math.random(1, 2) == 1 then
			skillTable["motion"] = {"swingP1"}
			skillTable["skillRange"] = Vector2(2.25, 1.12)
			skillTable["skillPos"] = Vector2(-1.285, 0.25)
		else
			skillTable["motion"] = {"swingP2"}
			skillTable["skillRange"] = Vector2(2.24, 1.12)
			skillTable["skillPos"] = Vector2(-1.13, 0.25)
		end
		if level <= 10 then
			skillTable["damage"] = 70 + level * 10
		elseif level <= 20 then
			skillTable["damage"] = 170 + (level - 10) * 5
		else
			skillTable["damage"] = 220 + (level - 20) * 3
		end
		skillTable["hpCon"] = 15 + math.ceil(level / 10) * 5
		skillTable["mpCon"] = 5 + math.ceil(level / 10) * 5
		
		if id == 1311003 then
			skillTable["weapon"] = {143}
		else
			skillTable["weapon"] = {144}
		end
		skillTable["noMastery"] = 1
	elseif id == 1311005 then -- 새크리파이스
		skillTable["jumpAttack"] = 1
		skillTable["mpCon"] = 9 + math.ceil(level / 10) * 3
		skillTable["damage"] = 200 + level * 5
		skillTable["drain2HPR"] = 20 - math.min(15, math.floor(level / 2))
		skillTable["ignoreDD"] = 1
		skillTable["weapon"] = {143, 144}
	elseif id == 1311006 then -- 드래곤 로어
		skillTable["mobCount"] = 15
		if level <= 10 then
			skillTable["damage"] = 90 + level * 6
			skillTable["roarStun"] = 4
		elseif level <= 20 then
			skillTable["damage"] = 100 + level * 5
			skillTable["roarStun"] = 3
		else
			skillTable["damage"] = 120 + level * 4
			skillTable["roarStun"] = 2
		end
		skillTable["hpRCon"] = math.max(30, 60 - level)
		skillTable["calRange"] = 100 + 10 * level
		skillTable["mpCon"] = 10 + math.ceil(level / 10) * 6
		skillTable["skillRange"] = Vector2((100 + 10 * level) * 2 / 100, (150 + 15 * level) / 100)
		skillTable["skillPos"] = Vector2(0, (49.5 + (level % 2) * 0.5) / 100)
		skillTable["weapon"] = {143, 144}
	elseif id == 1311008 then -- 드래곤 블러드
		skillTable["mpCon"] = 12 * math.ceil(level / 10)
		skillTable["incPAD"] = level <= 4 and level or 2 + math.floor(level / 2)
		skillTable["time"] = level * 8
		skillTable["buff"] = 1
	end
elseif type == 112 then
	if id == 1121000 then -- 메이플 용사
		skillTable["mpCon"] = 10 * math.ceil(level / 5)
		skillTable["time"] = level * 30
		skillTable["incMapleWarrior"] = math.ceil(level / 2)
		skillTable["buff"] = 1
		skillTable["partyBuff"] = Vector2(8, 6)
	elseif id == 1121002 then -- 스탠스
		skillTable["mpCon"] = 24 + math.ceil(level / 5) * 6
		skillTable["time"] = level * 10
		skillTable["incStance"] = level <= 20 and 40 + 2 * level or 60 + level
		skillTable["buff"] = 1
	elseif id == 1120003 then -- 어드밴스드 콤보
		skillTable["comboCount"] = math.ceil(level / 6)
		skillTable["comboRand"] = 30 + level
		skillTable["comboDamage"] = level
	elseif id == 1120004 then -- 아킬레스
		skillTable["achilles"] = level % 2 == 1 and level / 2 or math.floor(level / 2)
	elseif id == 1120005 then -- 블로킹
		skillTable["blocking"] = level % 2 == 1 and level / 2 or math.floor(level / 2)
	elseif id == 1121006 then -- 돌진
		skillTable["calRange"] = 85 + math.ceil(level / 3) * 5
		skillTable["mobCount"] = 10
		skillTable["mpCon"] = level <= 20 and 20 + 2 * level or 80 - level
		skillTable["damage"] = 80 + 2 * level
		local range = (170 + math.ceil(level / 3) * 10) / 100
		skillTable["rush"] = range * 100 + 80
		skillTable["hitSlide"] = range * 100
		skillTable["skillRange"] = Vector2(range, 0.5)
		skillTable["skillPos"] = Vector2(-range / 2, 0.25)
		skillTable["hitCoolTime"] = 1.77
		skillTable["hitInvincibility"] = 0.3
		skillTable["moveSkill"] = 1
		skillTable["weapon"] = {130, 131, 132, 140, 141, 142}
	elseif id == 1121008 then -- 브랜디쉬
		skillTable["jumpAttack"] = 1
		skillTable["mpCon"] = level <= 25 and 8 + 8 * math.ceil(level / 10) or 55 - level
		skillTable["mobCount"] = math.ceil(level / 10)
		skillTable["attackCount"] = 2
		skillTable["damage"] = level <= 10 and 130 + 5 * level or 140 + 4 * level
		skillTable["skillRange"] = Vector2(1.4, 1.1)
		skillTable["skillPos"] = Vector2(-0.8, 0.55)
		skillTable["weapon"] = {130, 131, 132, 140, 141, 142}
	elseif id == 1121010 then -- 인레이지
		skillTable["conCombo"] = 10
		skillTable["incPAD"] = 11 + math.ceil((level - 1) / 2)
		skillTable["mpCon"] = 10 + level
		skillTable["time"] = level <= 20 and 10 * level or 200 + 4 * (level - 20)
		skillTable["cooltime"] = 360
		skillTable["buff"] = 1
	elseif id == 1121011 then -- 용사의 의지
		skillTable["calTime"] = math.max(1, 11 - level)
		skillTable["mpCon"] = 30
		skillTable["herowill"] = 1
		skillTable["cooltime"] = math.max(60, 660 - 60 * level)
		skillTable["buff"] = 1
	end
elseif type == 122 then
	if id == 1221000 then -- 메이플 용사
		skillTable["mpCon"] = 10 * math.ceil(level / 5)
		skillTable["time"] = level * 30
		skillTable["incMapleWarrior"] = math.ceil(level / 2)
		skillTable["buff"] = 1
		skillTable["partyBuff"] = Vector2(8, 6)
	elseif id == 1221002 then -- 스탠스
		skillTable["mpCon"] = 24 + math.ceil(level / 5) * 6
		skillTable["time"] = level * 10
		skillTable["incStance"] = level <= 20 and 40 + 2 * level or 60 + level
		skillTable["buff"] = 1
	elseif id == 1221003 then -- 홀리 차지 : 검
		skillTable["mpCon"] = 10 + 10 * math.ceil(level / 10)
		skillTable["time"] = level * 15
		skillTable["buff"] = 1
		skillTable["incChargeBase"] = 110 + level * 2
		skillTable["incChargeDamage"] = 110 + level * 2
		skillTable["incElemAttr"] = 5
		skillTable["weapon"] = {130, 140}
	elseif id == 1221004 then -- 디바인 차지 : 둔기
		skillTable["mpCon"] = 10 + 10 * math.ceil(level / 10)
		skillTable["time"] = level * 15
		skillTable["buff"] = 1
		skillTable["incChargeBase"] = 110 + level * 2
		skillTable["incChargeDamage"] = 110 + level * 2
		skillTable["incElemAttr"] = 5
		skillTable["weapon"] = {132, 142}
	elseif id == 1220005 then -- 아킬레스
		skillTable["achilles"] = level % 2 == 1 and level / 2 or math.floor(level / 2)
	elseif id == 1220006 then -- 블로킹
		skillTable["blocking"] = level % 2 == 1 and level / 2 or math.floor(level / 2)
	elseif id == 1221007 then -- 돌진
		skillTable["calRange"] = 85 + math.ceil(level / 3) * 5
		skillTable["mobCount"] = 10
		skillTable["mpCon"] = level <= 20 and 20 + 2 * level or 80 - level
		skillTable["damage"] = 80 + 2 * level
		local range = (170 + math.ceil(level / 3) * 10) / 100
		skillTable["rush"] = range * 100 + 80
		skillTable["hitSlide"] = range * 100
		skillTable["skillRange"] = Vector2(range, 0.5)
		skillTable["skillPos"] = Vector2(-range / 2, 0.25)
		skillTable["hitCoolTime"] = 1.77
		skillTable["hitInvincibility"] = 0.3
		skillTable["moveSkill"] = 1
		skillTable["weapon"] = {130, 132, 140, 142}
	elseif id == 1221009 then -- 블래스트
		skillTable["jumpAttack"] = 1
		skillTable["mpCon"] = level <= 20 and 20 + 2 * level or 80 - level
		skillTable["damage"] = level <= 10 and 180 + 20 * level or 280 + 10 * level
		skillTable["skillRange"] = Vector2(1.5, 0.6)
		skillTable["skillPos"] = Vector2(-0.75, 0.3)
		skillTable["weapon"] = {130, 132, 140, 142}
	elseif id == 1220010 then -- 어드밴스드 차지
		skillTable["adChargeDamage"] = 250 + 10 * level
		skillTable["adChargeRand"] = 10 * level
	elseif id == 1221011 then -- 생츄어리
		skillTable["mpCon"] = 30 + level
		skillTable["damage"] = level <= 20 and 400 + 20 * level or 600 + 10 * level
		skillTable["cooltime"] = math.max(20, 320 - 10 * level)
		skillTable["mobCount"] = 15
		skillTable["skillRange"] = Vector2(8, 6)
		skillTable["skillPos"] = Vector2(0, 0.5)
		skillTable["weapon"] = {130, 132, 140, 142}
		skillTable["elemAttr"] = "H"
	elseif id == 1221012 then -- 용사의 의지
		skillTable["calTime"] = math.max(1, 11 - level)
		skillTable["mpCon"] = 30
		skillTable["herowill"] = 1
		skillTable["cooltime"] = math.max(60, 660 - 60 * level)
		skillTable["buff"] = 1
	end
elseif type == 132 then
	if id == 1321000 then -- 메이플 용사
		skillTable["mpCon"] = 10 * math.ceil(level / 5)
		skillTable["time"] = level * 30
		skillTable["incMapleWarrior"] = math.ceil(level / 2)
		skillTable["buff"] = 1
		skillTable["partyBuff"] = Vector2(8, 6)
	elseif id == 1321002 then -- 스탠스
		skillTable["mpCon"] = 24 + math.ceil(level / 5) * 6
		skillTable["time"] = level * 10
		skillTable["incStance"] = level <= 20 and 40 + 2 * level or 60 + level
		skillTable["buff"] = 1
	elseif id == 1321003 then -- 돌진
		skillTable["calRange"] = 85 + math.ceil(level / 3) * 5
		skillTable["mobCount"] = 10
		skillTable["mpCon"] = level <= 20 and 20 + 2 * level or 80 - level
		skillTable["damage"] = 80 + 2 * level
		local range = (170 + math.ceil(level / 3) * 10) / 100
		skillTable["rush"] = range * 100 + 80
		skillTable["hitSlide"] = range * 100
		skillTable["skillRange"] = Vector2(range, 0.5)
		skillTable["skillPos"] = Vector2(-range / 2, 0.25)
		skillTable["hitCoolTime"] = 1.77
		skillTable["hitInvincibility"] = 0.3
		skillTable["moveSkill"] = 1
		skillTable["weapon"] = {143, 144}
	elseif id == 1320005 then -- 아킬레스
		skillTable["achilles"] = level % 2 == 1 and level / 2 or math.floor(level / 2)
	elseif id == 1320006 then -- 버서크
		skillTable["berserkX"] = 20 + level
		skillTable["berserkY"] = level <= 20 and 130 + level * 2 or 110 + level * 3
	elseif id == 1321007 then -- 비홀더
		if self:IsClient() then
			skillTable["calTime"] = 10 + level
			skillTable["calMastery"] = math.ceil(level / 3) * 5
		end
		skillTable["spear_mastery"] = math.ceil(level / 3)
		skillTable["poleArm_mastery"] = math.ceil(level / 3)
		skillTable["mpCon"] = math.max(6, 120 - 6 * level)
		skillTable["buff"] = 1
		
		skillTable["summonTime"] = 600 + 60 * level
		skillTable["summon"] = {
			["type"] = 1,
		}
	elseif id == 1320008 then -- 비홀더스 힐링
		skillTable["beholderHCTime"] = math.max(4, 11 - math.ceil(level / 4))
		if level <= 5 then
			skillTable["beholderHValue"] = 25 + 15 * level
		elseif level <= 10 then
			skillTable["beholderHValue"] = 100 + 10 * level
		elseif level <= 15 then
			skillTable["beholderHValue"] = 150 + 10 * level
		elseif level <= 20 then
			skillTable["beholderHValue"] = 200 + 10 * level
		else
			skillTable["beholderHValue"] = 250 + 10 * level
		end
	elseif id == 1320009 then -- 비홀더스 버프
		if self:IsClient() then
			if level <= 5 then
				skillTable["calDesc"] = "물리 방어력 버프 시전."
			elseif level <= 10 then
				skillTable["calDesc"] = "물리 방어력, 마법 방어력 버프 시전."
			elseif level <= 15 then
				skillTable["calDesc"] = "물리 방어력, 마법 방어력, 명중률 버프 시전."
			elseif level <= 20 then
				skillTable["calDesc"] = "물리 방어력, 마법 방어력, 명중률, 회피율 버프 시전."
			else
				skillTable["calDesc"] = "물리 방어력, 마법 방어력, 명중률, 회피율, 공격력 버프 시전."
			end
		end
		skillTable["beholderBCTime"] = level <= 21 and 50 - 2 * level or math.max(4, 29 - level)
		skillTable["beholderBDTime"] = 20 * math.ceil(level / 5)
	elseif id == 1321010 then -- 용사의 의지
		skillTable["calTime"] = math.max(1, 11 - level)
		skillTable["mpCon"] = 30
		skillTable["herowill"] = 1
		skillTable["cooltime"] = math.max(60, 660 - 60 * level)
		skillTable["buff"] = 1
	end
end

return skillTable
end